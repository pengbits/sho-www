import $ from 'jquery';
import CampaignHelper from '../analytics/campaign-helper';
import HashChange from '../hash-change/index';

const DEFAULT_EVENT_NAMES = {
  'open': 'modal:opened', 
  'close': 'modal:closed'
}

export default class Modal {

    constructor(cfg) {
      this.settings = {
        bodyClass : 'modal-open',
        transitionEnd : null,
        close : '[rel="modal:close"]',
        content : null,
        dataContext : null,
        modalClass: null,
        // added this option to support suppressing close on body-click 
        // while preserving centered modal ui, but see no need to set the global default yet,
        // this is only applicable to the terms modal (and lower third cart)
        // closeOnBodyClick: true,
        disableTransitions: false,
        closeButtonInHeader: true,
        closeButtonInFooter: false,
        closeButtonHeaderText: null,
        closeButtonFooterText: 'CLOSE',
        modalType: null,
        fireEvents: true,
        useHashChange: true
      };

      this.elements = {
        body : document.querySelector('body')
      };

      this.applyConfig(cfg);
      this.isOpen = false;
      this.settings.transitionEnd = this.transitionEndVendorCheck();
      this.onCloseClick           = this.onCloseClick.bind(this)
      this.outsideClickHandler    = this.outsideClickHandler.bind(this)
      this.closeTransitionHandler = this.closeTransitionHandler.bind(this)

    }

    addDomElements() {
      // template:
      // <div class="modal">
      //   <div class="modal__inner">
      //      <div class="modal__header">
      //        <a class="modal__close" rel="modal:close">Close</a>
      //      </div>
      //      <div class="modal__content"></div>
      //      <div class="modal__footer>
      //        <a class="modal__close" rel="modal:close">Close</a>
      //      </div>
      //   </div>
      // </div>

      this.elements.modal = document.createElement('div');
      this.elements.modalInner = document.createElement('div');
      this.elements.modalContent = document.createElement('div');
      if(this.settings.closeButtonInHeader){
        this.elements.header = document.createElement('div')
        this.elements.header.className = 'modal__header'
        this.elements.modalInner.appendChild(this.elements.header)
        this.elements.modalCloseBtnHeader = document.createElement('a');
        this.elements.modalCloseBtnHeader.className = 'modal__close';
        this.elements.modalCloseBtnHeader.setAttribute('rel','modal:close');
        this.elements.modalCloseBtnHeader.setAttribute('href','#');
        this.elements.header.appendChild(this.elements.modalCloseBtnHeader);
        if(this.settings.closeButtonHeaderText){
          const label = document.createTextNode(this.settings.modalCloseBtnHeaderText)
          this.elements.modalCloseBtnHeader.appendChild(label)
        }
      }
      this.elements.modal.className = 'modal';
      this.elements.modalInner.className = 'modal__inner';
      if(this.settings.modalType == 'lower-third') {
        this.elements.modal.className = 'modal modal--is-lower-third';
      }
      this.elements.modalContent.className = 'modal__content';
      this.elements.modalInner.appendChild(this.elements.modalContent);
      if(this.settings.closeButtonInFooter){
        this.elements.footer = document.createElement('div')
        this.elements.footer.className = 'modal__footer';
        this.elements.modalInner.appendChild(this.elements.footer)
        this.elements.modalCloseBtnFooter = document.createElement('a');
        this.elements.modalCloseBtnFooter.className = 'modal__close';
        this.elements.modalCloseBtnFooter.setAttribute('rel','modal:close');
        this.elements.modalCloseBtnFooter.setAttribute('href','#');

        if(this.settings.closeButtonFooterText){
          const label = document.createTextNode(this.settings.closeButtonFooterText)
          this.elements.modalCloseBtnFooter.appendChild(label)
        }
        this.elements.footer.appendChild(this.elements.modalCloseBtnFooter);
      }
      
      this.elements.modal.appendChild(this.elements.modalInner);
      this.elements.body.appendChild(this.elements.modal);
    }

    applyConfig(cfg) {
      if (typeof cfg === 'object') {
        for (var i in cfg) {
          if (cfg.hasOwnProperty(i)) {
            this.settings[i] = cfg[i];
          }
        }
      }
      if(this.settings.fireEvents){
        if(this.settings.fireEvents == true){
          // console.log('simple boolean found for fireevents, set both open and close')
          this.settings.fireEvents = DEFAULT_EVENT_NAMES
        }
      }
    }

    transitionEndVendorCheck() {
      var el = document.createElement('div');
      var transitions = {
        'transition':'transitionend',
        'OTransition':'otransitionend',
        'MozTransition':'transitionend',
        'WebkitTransition':'webkitTransitionEnd'
      };
      for (var i in transitions) {
        if (transitions.hasOwnProperty(i) && el.style[i] !== undefined) {
          return transitions[i];
        }
      }
    }

    open(e) {
      // console.log('|modal| open()')
      if (typeof this.settings.onBeforeOpen === 'function') this.settings.onBeforeOpen.call(this, e);
      this.scrollPosition = $(document).scrollTop();
      $(this.elements.body).addClass(this.settings.bodyClass);  
      if(this.settings.modalType == 'centered') {
        $(this.elements.body).css('position', 'fixed')
      }
      // body position becomes fixed and we need to set top to the negative of our last scroll position
      $(this.elements.body).css('top', `-${this.scrollPosition}px`);
      this.addDomElements();
      this.setContent(this.settings.content);
      if (this.settings.modalClass !== null) {
        this.addClass(this.settings.modalClass)
      }
      if (this.settings.dataContext !== null) {
        ['modalCloseBtnHeader','modalCloseBtnFooter'].forEach((k) => {
          if(this.elements[k]){
            this.elements[k].setAttribute('data-track','')
            this.elements[k].setAttribute('data-label','close')
            this.elements[k].setAttribute('data-context', this.settings.dataContext)
          }
        })
      }
      
      this.setHandlers();
      this.initCampaignHelper();
      if(this.settings.fireEvents && this.settings.fireEvents.open) {
        this.trigger(this.settings.fireEvents.open)
      }
    }
    
    setHandlers(){
      // console.log('|modal| setHandlers')
      $(document).on('click', `${this.settings.close}`, this.onCloseClick)
      this.elements.modal.addEventListener('click', this.outsideClickHandler, false);
      this.isOpen = true;
    }
    
    unsetHandlers() {
      // console.log('|modal| unsetHandlers')
      $(document).off('click', `${this.settings.close}`, this.onCloseClick)
      this.elements.modal.removeEventListener('click', this.closeTransitionHandler, false)
    }

    initCampaignHelper(){
      // need to add/rewrite link campaign params
      setTimeout(() => new CampaignHelper({debug:this.debug}), 250);
    }

    detectTransition() {
      var css = window.getComputedStyle(this.elements.modal, null);
      var transitionDuration = ['transitionDuration', 'oTransitionDuration', 'MozTransitionDuration', 'webkitTransitionDuration'];
      var hasTransition = transitionDuration.filter(function(i) {
        if (typeof css[i] === 'string' && parseFloat(css[i]) > 0) {
          return true;
        }
      });
      return (hasTransition.length) ? true : false;
    }
     
    onCloseClick(e){
      e.preventDefault()
      e.stopPropagation()
      this.close(e)
    }
    
    close(e) {
      console.log('|modal| close()')
      if(this.isOpen === true) {
        this.isOpen = false;
        $(this.elements.body).removeClass(this.settings.bodyClass);
        if(this.settings.modalType == 'centered') {
          $(this.elements.body).css('position', 'initial')
        }
        // body becomes unfixed and we need to snap back to our scroll position instead of top of page
        // using body,html for Firefox 
        $('body,html').scrollTop(this.scrollPosition);

        if(this.settings.useHashChange !== false) {
          HashChange.close();
        }

        // allow option to disable transitions for mobile since its breaking our async 
        // awaitOnClose setup and putting it back together is a saga
        var transitions = this.detectTransition();
        if (!this.settings.disableTransitions && (this.settings.transitionEnd && transitions)) {
          this.closeModalWithTransition(e);
        } else {
          return this.closeModal(e);
        }
      }
    }

    async closeModal(e) {
      this.isOpen = false;
      
      const isAsync = !!this.settings.awaitOnClose 
      // console.log('|modal| closeModal' + (isAsync ? 'before awaitFn':''));
      await (isAsync ? this.settings.awaitOnClose() : new Promise(r => r()))
      // console.log('|modal| closeModal' + (isAsync ? 'after awaitFn' : ''));

      this.elements.body.removeChild(this.elements.modal);
      // console.log('|modal| element removed')
      if (typeof this.settings.onClose === 'function') this.settings.onClose.call(this, e);
      if(this.settings.fireEvents && this.settings.fireEvents.close){
        this.trigger(this.settings.fireEvents.close)
      }

      this.unsetHandlers()
    }
 
    closeTransitionHandler (e) {
      //console.log('|modal| closeModalWithTransition => fn()')
      this.elements.modal.removeEventListener(this.settings.transitionEnd, this.closeTransitionHandler);
      this.closeModal(e);
    }

    closeModalWithTransition(e) {
      // console.log('|modal| closeModalWithTransition', typeof this.elements.modal.addEventListener, this.settings.transitionEnd)
      this.elements.modal.addEventListener(this.settings.transitionEnd, this.closeTransitionHandler);
    }
    
    outsideClickHandler(e) {
      // console.log('|modal| outsideClickHandler')
      var node = e.target;
      while(node && node != document.body) {
        if (node === this.elements.modalInner) return;
        node = node.parentNode;
      }
      if(this.settings.modalType !== 'lower-third' && this.settings.closeOnBodyClick !== false){
        this.close(e);
      }
    }

    hide(){
      $(this.elements.modal).hide()
    }

    show(){
      $(this.elements.modal).show()
    }
    
    setContent(content) {
      this.elements.modalContent.innerHTML = content;
    }

    getContent(){
      return this.elements.modalContent
    }
    
    addClass(c) {
      $(this.elements.modal).addClass(c);
    }
    
    removeClass(c) {
      $(this.elements.modal).removeClass(c);
    }

    trigger(type){
      // console.log('|modal| trigger '+type)
      $.event.trigger({type})
    }
}
