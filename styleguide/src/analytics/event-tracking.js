import $ from 'jquery';
import cookies from '../utils/cookies'
import CampaignHelper from './campaign-helper';
import GenerateTimestamp from './generate-timestamp';
import PageName from './page-name';

class EventTracking
{
  constructor(cfg = {}) {
    this.debug = (cfg.debug ? cfg.debug : false);
    this.rsid = cfg.rsid;
    if (this.rsid) this.initialize();
  }

  initialize() {
    this.setHandlers();
  }

  setHandlers() {
    // user-initiated click events
    $(document).on( "click", "[data-track]", event => { this.trackClick(event) });

    // events broadcast from other JS contexts
    $(document).on([
      "selectNavigation",
      "cart-modal:opened",
      "cart-modal:closed",
      "searchFormSubmit",
      "stream:opened",
      "scheduleDateSelected",
      "emailSubmit",
      "emailSignupError",
      "emailSignupSuccess",
      "core-web-vitals:metricReady",
      "terms-modal:opened",
      "terms-modal:closed",
    ].join(' '), event => { this.eventTriggered(event) });
  }

  eventTriggered(e) {
    // an 'events' key/value property needs to be passed into eventData, at minimum
    this.eventData = {};
    switch (e.type) {
      case "searchFormSubmit":
        this.eventData = {
          context : 'internal search',
          label : 'internal search',
          searchTerm : e.searchTerm,
          events : ['63']
        };
        this.trackEvent(this.eventData);
        break;
      case "cart-modal:opened":
        this.eventData.events = ['108'];
        this.trackEvent(this.eventData);
        break;
      case "cart-modal:closed":
        this.eventData.events = ['109'];
        this.trackEvent(this.eventData);
        break;
      case "stream:opened":
        this.eventData.events = ['88'];
        this.trackEvent(this.eventData);
        break;
      case "scheduleDateSelected":
        this.eventData = {
          context : 'schedule navigation',
          label : 'calendar date',
          events : ['63']
        };
        this.trackEvent(this.eventData);
        break;
      case "emailSubmit":
        this.eventData = {
          context : e.context,
          label : 'submit',
          events : ['63']
        };
        this.trackEvent(this.eventData);
        break;
      case "emailSignupSuccess":
        this.eventData = {
          context : e.context,
          label : 'success',
          events : ['103']
        };
        this.trackEvent(this.eventData);
        break;
      case "emailSignupError":
        let errors = e.errors.join();
        this.eventData = {
          list : errors,
          listEVar : 'list2',
          context : e.context,
          label : 'error',
          events : ['104']
        };
        this.trackEvent(this.eventData);
        break;
      case "selectNavigation":
        this.eventData = {
          context : e.context,
          label : e.label,
          events : ['63']
        };
        this.trackEvent(this.eventData);
        break;
      case "core-web-vitals:metricReady":
        this.eventData.vitalsMetric = {name:e.name, value:e.value}
        this.eventData.events = ['130']
        this.trackEvent(this.eventData)
        break;
      case "terms-modal:opened":
        this.eventData = {
          events: ['115']
        };
        this.trackEvent(this.eventData);
        break;
      case "terms-modal:closed":
        this.eventData = {
          events: ['116']
        };
        this.trackEvent(this.eventData);
        break;
      default:
        // nada
        break;
    }

    // quick fix to help campaign links when DOM is refreshed
    // card redraw on select all was too quick; added 500ms delay here
    setTimeout(() => new CampaignHelper({debug:this.debug}), 500);
  }

  setCookie(name, value) {
    cookies.set(`sho_${name}`, value, 'forever'); //default expiration is 10 years
  }

  setLinkTrackVars(key) {
    // build up linkTrackVars with all relevant vars to be sent with s.tl
    this.s.linkTrackVars = (this.s.linkTrackVars != '' ? this.s.linkTrackVars + ',' : '') + key;
  }

  setData(key, value) {
    if (key == 'clickContext' || key == 'clickLabel') {
      value = value.toLowerCase();
    }
    this.s.contextData[key] = value;
    this.setLinkTrackVars('contextData.' + key);
  }

  setCustomEvent(index) {
    this.s.events = (this.s.events != '' ? this.s.events + ',' : '') + 'event' + index;
    this.s.linkTrackEvents = (this.s.linkTrackEvents != '' ? this.s.linkTrackEvents + ',' : '') + 'event' + index;
    if(!this.s.linkTrackVars.includes("events")) {
      this.setLinkTrackVars('events');
    }
  }

  trackEvent(data) {
    this.s = s_gi(this.rsid);
    this.resetVariables();


    if(data.list && data.listEVar) {
      this.s[data.listEVar] = data.list;
      this.setLinkTrackVars(data.listEVar);
      this.log(data.listEVar + ' | ' + data.list);
    }

    if(data.context && data.label) {
      this.setData('clickContext',data.context);
      this.setData('clickLabel',data.label);
    }

    if(data.providerId || data.providerId === 0) {
      this.setData('providerId',data.providerId);
    }

    if(data.searchTerm) {
      this.setData('searchTerm',data.searchTerm);
    }

    if(data.vitalsMetric && data.vitalsMetric.name) {
      this.setData(data.vitalsMetric.name,  data.vitalsMetric.value) // 'LCP' 'FID' 'CLS
    }

    data.events.forEach(this.setCustomEvent, this);

    // set pagename and timestamp
    this.s.eVar20 = PageName();
    this.s.eVar56 = GenerateTimestamp();
    this.setLinkTrackVars('eVar20');
    this.setLinkTrackVars('eVar56');

    // make impression
    this.s.tl(true,'o','Custom Event');

    if(this.debug) {
      this.log('events | ' + s.events);
      if(data.context) this.log('context | ' +  data.context);
      if(data.label) this.log('label | ' + data.label);
      if(data.providerId) this.log('provider ID | ' + data.providerId);
      if(data.searchTerm) this.log('search term | ' + data.searchTerm);
    }

    this.resetVariables();
  }

  trackClick(event, cfg) {

    // get s object and reset
    this.s = s_gi(this.rsid);
    this.resetVariables();

    let el = event.currentTarget,
    data = {};

    // convert element's data attributes into object properties
    [].forEach.call(el.attributes, function(attr) {
      if (/^data-/.test(attr.name)) {
        let camelCaseName = attr.name.substr(5).replace(/-(.)/g, function (key, value) {
          return value.toUpperCase();
        });
        data[camelCaseName] = attr.value.toLowerCase();
      }
    });

    // look for context and provider ID data attributes higher up in DOM tree
    if(!data.context) { data.context = this.findClosest(el, 'context'); }
    if(!data.providerId) { data.providerId = this.findClosest(el, 'providerId'); }

    // look for label data attribute higher up in DOM tree, if not found use innerHTML of clicked element
    let label = this.findClosest(el, 'label');
    if(!data.label) { data.label = label ? label : el.textContent; }

    if(data.context && data.label) {
      this.setData('clickContext',data.context);
      this.setData('clickLabel',data.label);
    }
    else {
      return;
    }

    if(data.searchTerm) this.setData('searchTerm',data.searchTerm);
    if(data.location) this.setData('clickLocation',data.location);


    let regex = /paramountplus/;
    if(data.providerId || data.providerId === 0) {
      this.setData('providerId',data.providerId);
    }
    else if (regex.test(el.href)) {
      data.providerId = "198";
      this.setData('providerId',data.providerId);
    }

    this.setCustomEvent(63);

    // set pagename and timestamp
    this.s.eVar20 = PageName();
    this.s.eVar56 = GenerateTimestamp();
    this.setLinkTrackVars('eVar20');
    this.setLinkTrackVars('eVar56');

    // make impression
    this.s.tl(true,'o','Custom Click Event');

    this.log('events | ' + this.s.events);
    this.log('context | ' +  data.context);
    this.log('label | ' + data.label);

    if(data.location) this.log('location | ' + data.location);
    if(data.providerId) this.log('provider ID | ' + data.providerId);
    if(data.searchTerm) this.log('search term | ' + data.searchTerm);

    // delay to allow for analytics success, when href is present and does not include #
    if (el.href && /^[^#]+$/.test(el.href) && data.noRedirect == null) {
      if(!data.providerId) {
        event.preventDefault();
        setTimeout(() => { window.location = el.href; }, 350);
      }
    }

    this.resetVariables();
  }

  findClosest(el, attribute) {
    // traverse up the DOM
    while (!el.dataset[attribute]) {
      // increment the loop to the parent node
      el = el.parentNode;
      if (el && el.tagName === 'HTML') {
        return null;
      }
      if (!el) return null;
    }
    return el.dataset ? el.dataset[attribute] : null;
  }

  resetVariables()  {
    this.s.events = '';
    this.s.linkTrackEvents = '';
    this.s.linkTrackVars = '';
    this.s.list2 = '';

    ['clickContext','clickLabel','clickLocation','providerId','searchTerm'].forEach(function (key) {
      this.s.contextData[key] = null;
    }, this);
  }

  log(output) {
    if(this.debug && window.console && window.console.log)
    {
      console.log('| analytics |', output);
    }
  }
}

export default EventTracking;
