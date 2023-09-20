import $ from 'jquery';
import Modal from '../modal/index';
import Variations from '../variations/index';
import { stripHTML } from '../utils/stripHTML';

class StreamingModal
{
  constructor(){
   this.showtimeLink = 'https://www.showtime.com/';
   this.showtimeAnytimeLink = 'https://www.showtimeanytime.com/';
   this.pplusLink = 'https://www.paramountplus.com/account/signin/?ftag=PPM-22-10bdd2f';
   this.pplusOrderLink = 'https://www.paramountplus.com/?cbscidmt=showtimebundle&ftag=PPM-22-10bdd2f';
   this.newSlug = '';
   this.sageCode = '';
   this.orderPromoClassName = 'streaming-modal--order-promo';
   this.streamingImageClassName = '';
   this.streamingImageHTML = '';
   this.config = {
     'direct_headline':'For subscribers who signed up through the SHOWTIME website or the SHOWTIME app.',
     'direct_label':'SIGN IN',
     'anytime_headline':'For subscribers who signed up through a cable, satellite, telco or streaming service provider.',
     'anytime_label':'SIGN IN',
     'pplus_headline':'ALREADY HAVE PARAMOUNT+ WITH SHOWTIME?',
     'order_promo':true,
     'order_promo_subheadline':'The streaming home of SHOWTIME',
     'order_promo_headline':'START STREAMING NOW ON',
     'order_promo_label':'START YOUR FREE TRIAL',
     'streaming_image_only':false,
     'streaming_image':false,
     'streaming_image_title':''
    };
    // setImageAttributes() returns a Promise to safeguard against possible race condition with Optimizely Variations
    //this.setImageAttributes().then(() => this.setListeners());
    this.setListeners();
  }

  setAttributes() {
    this.setImage();
    this.setButtonCopy();
    this.setHtml();
  }

  setImage() {
    const streamingImageMeta = $('meta[name="streaming-modal-image"]');
    if (streamingImageMeta.length > 0) {
      this.config.streaming_image = true;
      this.config.streaming_image_src = streamingImageMeta.attr('content');
    }
    if (this.episodeImageSrc) {
      this.config.streaming_image = true;
      this.config.streaming_image_src = this.episodeImageSrc;
    }
  }

  setButtonCopy() {
    const navigationCalloutText = $(".global-nav__item--red [data-location='utility']")[0];
    this.config.order_promo_label = navigationCalloutText ? navigationCalloutText.innerHTML : this.config.order_promo_label;
  }

  setHtml() {
    this.streamingImageClassName = this.config.streaming_image ? 'streaming-modal--with-image' : '';
    this.streamingImageHTML = `<div class="streaming-modal__image">
                                <div class="streaming-modal__image-container">
                                  <div class = "streaming-modal__image-container__shim"></div>
                                  <img src="${this.config.streaming_image_src}" alt="${this.config.streaming_image_title}">
                                </div>
                              </div>`;
  }

  setListeners() {
    $(document).on( "stream:opened", event => {
      this.eventTriggered(event)
    });

    Variations.on('variation:detected:sho', (event, data) => {
      // console.log('|streaming-modal| variations ready');
      if (!!data && !!data.streaming_modal) {
        // update defaults with variation data
        const variationData = data.streaming_modal;
        this.config = { ...this.config, variationData };
        //
        // do the variation
        //
        // Update streaming model if already open
        if (this.modal) this.modal.setContent(this.getTemplate());
      }
    });
  }

  eventTriggered(event) {
    if(!event.details) return;

    let slug = stripHTML(event.details).split("/"),
    newSlug = this.changeSlug(slug);

    const episodeId = event.episode;
    this.episodeImageSrc = $(`[data-episode-id="${episodeId}"]`).data('streaming-image');
    this.newSlug = (newSlug ? newSlug : '');
    this.setAttributes();
    this.modal = new Modal({
      content : this.getTemplate(),
      dataContext : 'streaming modal'
    });

    this.modal.open(event);
  }

  getTemplate() {
   return `<div class="streaming-modal modal-open  ${this.orderPromoClassName} ${this.streamingImageClassName}" data-context="streaming modal">
    ${this.streamingImageHTML}
    <div class="streaming-modal__order-promo">
    <div class="streaming-modal__headline">${this.config.order_promo_headline} <span class="streaming-modal__logo">PARAMOUNT+</span>
      <p class="streaming-modal__copy">${this.config.order_promo_subheadline}</p>
    </div>
    <a class="streaming-modal__order-promo-button" href="${this.pplusOrderLink}" data-track data-provider-id='198' data-label="provider lead">${this.config.order_promo_label}</a>
    </div>
    <div class="streaming-modal__headline">${this.config.pplus_headline}</div>
    <div class="streaming-modal__option streaming-modal__option--pplus">
      <a class="streaming-modal__button" href="${this.pplusLink}" data-track="" data-label="paramount plus">SIGN IN</a>
    </div>
    <h2 class="streaming-modal__headline">ONLY HAVE SHOWTIME?</h2>
    <div class="streaming-modal__option streaming-modal__option--showtime">
    <p class="streaming-modal__copy">${this.config.direct_headline}</p>
    <a class="streaming-modal__link js-metrics-footer__showtime-sign-in" href="${this.showtimeLink}${this.newSlug}" data-track data-label="standalone">${this.config.direct_label}</a>
    <a class="streaming-modal__button js-metrics-footer__showtime-sign-in" href="${this.showtimeLink}${this.newSlug}" data-track data-label="standalone">${this.config.direct_label}</a>
    </div>
    <div class="streaming-modal__option streaming-modal__option--showtime-anytime">
    <p class="streaming-modal__copy">${this.config.anytime_headline}</p>
    <a class="streaming-modal__link js-metrics-footer__showtime-anytime-sign-in" href="${this.showtimeAnytimeLink}${this.newSlug}" data-track data-label="anytime">${this.config.anytime_label}</a>
    <a class="streaming-modal__button js-metrics-footer__showtime-anytime-sign-in" href="${this.showtimeAnytimeLink}${this.newSlug}" data-track data-label="anytime">${this.config.anytime_label}</a>
    </div>
    </div>`;
  }

  changeSlug(slug) {

    let newSlug = [];

    switch (slug[0]) {
      case "series":
      case "movie":
      case "movies":
      case "collection":
      case "episode":
      case "afterhours":
        newSlug[0] = slug[0];
        if (slug[1]) {
          newSlug[1] = slug[1];
        }
        break;
      case "home":
        if (slug[1]) {
          this.sageCode = '?i_cid=' + slug[1];
        }
        break;
      default:
        newSlug[0] = null;
        break;
    }

    // SHOBox/Bellator exceptions
    if (slug[0] == 'series' && (slug[1] == 93 || slug[1] == 95)) {
       newSlug[0] = ['category'];
       newSlug[1] = ['407'];
       newSlug[2] = ['sports'];
       newSlug[2] = ['all-sports'];
    }

    if (slug[2]) {
      this.sageCode = '?i_cid=' + slug[2];
    }

    if(newSlug.length > 0) {
      newSlug.unshift("#");
    }

    return newSlug.join('/') + this.sageCode;
  }

}

export default StreamingModal;
