import $ from 'jquery';
import Modal from '../modal/index';
import cookies from '../utils/cookies'

const KEY_REGEX = /[\s\/]/gi
const BULLET_REGEX = /•/gi
const LEADING_WHITESPACE_REGEX = /^\s+/
const TRAILING_WHITESPACE_REGEX = /\n$/
export const COOKIE_NAME = 'abandoned_cart_opened'

class CartModal {
  constructor(cfg){
    if(cookies.get(COOKIE_NAME) && !this.isStyleGuide()) return false
    // in production, limit the appearance of the abandoned cart modal to once every 7 days
    // in the styleguide, bypass this check so we can work on the ui without worrying about cookies
    this.theme = cfg.theme
    this.layout = cfg.layout
    this.modalType = cfg.layout == 'lower-third' ? 'lower-third' : 'centered'
    this.loading = false
    this.onReady = this.onReady.bind(this)
    this.createModal()
    this.fetch()
  }

 
  createModal(cfg) {   
    this.modal = new Modal({
      content: `<div 
        class="cart-modal__loader">
          <div class="loading-animation"></div>
        </div>`,
      dataContext : 'abandon cart',
      modalClass: 'cart-modal-outer-modal',
      modalType: this.modalType,
      useHashChange:false,
      fireEvents: {
        'open': 'cart-modal:opened',
        'close': 'cart-modal:closed'
      }
    });
    this.modal.open(cfg);
    cookies.set(COOKIE_NAME, 'true', 7); 
  }  
  
  fetch() {
    $.get(this.url(), this.onReady, 'json')
  }
  
  url(){
    let url_
    if(this.isStyleGuide()){
      url_ = `/api/content-block/site-abandoned-cart-widget.js`
    } else {
      url_ = '/api/content-block/site-abandoned-cart-widget' + (this.theme ? `?theme=${this.theme}` : '')
    }
    
    console.log(`|cart-modal| url=${url_}`)
    return url_
  }
  
  onReady(xhr){
    try {
      if(!xhr.status || !xhr.status.success) {
        throw new Error('bad server response - network issue')
      }
      
      if(!xhr.payload || xhr.payload.length == 0 ) {
        throw new Error('bad server response - malformed payload')
      }
      
      const data = xhr.payload[0].fieldMap
      // sanitize field names
      const clean = Object.keys(data).reduce((out, k) => {
        const key = k.replace(KEY_REGEX, '_')
        out[key] = data[k];
        return out
      }, {})

      this.render(clean)
    }
    
    catch (e){
      console.log(`|abandoned-card-modal| ${e.message}`);
      this.modal.close()
      return false
    }
  }
  
  render(data){
    this.modal.setContent(this.applyTemplate(data))
  }
  
  applyTemplate(attrs){
    return this.layout == 'lower-third' ?
      this.getLowerThirdTemplate(attrs) :
      this.getDefaultTemplate(attrs)
  }
  
  getDefaultTemplate({
    top_line,
    description,
    large_image_url,
    small_image_url,
    static_subtitle,
    cta_label,
    cta_link
  }) {
    const hasDescription = !!description
    return `<div>
      <div class="cart-modal cart-modal--default${hasDescription ? '' : ' cart-modal--no-description'}">
        <div class="cart-modal__image" style="background-image:url(${large_image_url})"></div>
        <h2 class="cart-modal__headline">${static_subtitle}</h2>    
        <a href="${cta_link}" class="button--primary" data-track data-context="abandon cart" data-label="showtime.com">${cta_label}</a>
        <p class="cart-modal__note">No cable needed. Cancel anytime.</p>
        <p class="cart-modal__copy">${hasDescription ? top_line : ''}</p>
        <p class="cart-modal__line"></p>
        ${hasDescription ? this.convertToBulletPoints(description) : ''}
      </div>
    </div>`
  }
  
  // takes a bullet-list of features in plain-text and converts to a styled html list
  //   "
  //    •Enjoy new and past episodes of SHOWTIME Original Series, movies, sports, documentaries and comedy specials
  //    •Stream live TV
  //    •Download episodes to your mobile device to watch offline
  //  "
  // =>
  // <ul class="cart-modal__list">
  //   <li class="cart-modal__list__item">a</li>
  //   <li class="cart-modal__list__item">b</li>
  //   <li class="cart-modal__list__item">c</li>
  // </ul>
  convertToBulletPoints(text){
    if(!BULLET_REGEX.test(text)){
      return `<p class="cat-modal__copy">${text}</p>`
    } else {
      return ['',
        '<ul class="cart-modal__list">',
          (text.split(BULLET_REGEX)
            .filter(line => line !== '')
            .map(line => line.replace(LEADING_WHITESPACE_REGEX, ''))
            .map(line => line.replace(TRAILING_WHITESPACE_REGEX, ''))
            .map(line => `<li class="cart-modal__list__item">${line}</li>`).join('')
          ),
        '</ul>',
      ].join('')
    }
  }
  
  getLowerThirdTemplate({
    small_image_url,
    static_subtitle,
    cta_label,
    cta_link
  }) {
    return `<div>
      <div class="cart-modal cart-modal--lower-third">
        <div class="cart-modal__inner">
          <div class="cart-modal__image-container">
            <div class="cart-modal__image" style="background-image:url(${small_image_url})"></div>
          </div>
          <div class="cart-modal__right-container">
            <div class="cart-modal__text-container">
              <h2 class="cart-modal__headline">${static_subtitle}</h2>
              <p class="cart-modal__copy cart-modal__copy--sub-headline">No Cable Needed</p>
            </div>
            <div class="cart-modal__button-container">
              <a href="${cta_link}" class="button--primary" data-track data-context="abandon cart" data-label="showtime.com">${cta_label}</a>
              <a href="#" rel="modal:close" class="cart-modal__copy cart-modal__copy--close-modal" data-track data-context="abandon cart" data-label="close">I already have Showtime</a>
            </div>
          </div>
        </div>  
      </div>
    </div>`
  }
  
  
  isStyleGuide(){
    const {
      port,
      host
    } = window.location
    
    return port == '4000' || host == 'styleguide.sho.com'
  }
} 
 
export default CartModal;
