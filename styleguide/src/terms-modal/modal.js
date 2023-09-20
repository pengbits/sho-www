import $ from 'jquery';
import Modal from '../modal/index';
import cookies from '../utils/cookies'


export const COOKIE_NAME = 'terms_modal_accepted'
export const COOKIE_DURATION = 60

class TermsModal {
  constructor(cfg={}) {
    if(this.isTermsPage() || (cookies.get(COOKIE_NAME) && !this.isStyleGuide())) return false

    // this.createModal()
  }

  createModal(cfg) {
    this.modal = new Modal({
      content: this.getContent(cfg),
      dataContext: 'terms modal',
      modalClass: 'terms-modal-outer-modal',
      modalType: 'centered',
      closeButtonInHeader: false,
      closeOnBodyClick: false,
      useHashChange: false,
      fireEvents: {
        'open': 'terms-modal:opened',
        'close': 'terms-modal:closed'
      }
    });
    this.modal.open(cfg);
  }  

  getContent(cfg){
    return `<div class="terms-modal">
      <h3 class="terms-modal__title">Important Notice</h3>
      <p class="terms-modal__description">We have updated the <a href="/about/terms" target="_blank" style="color: #ff202c">Terms of Use</a> that govern the use of the websites, applications, and other products or services offered by Showtime Networks Inc. or its subsidiaries. The updates include important information about your legal rights, including updates to the arbitration clause. By clicking "Agree", you acknowledge that you have read and agree to the updated <a href="/about/terms" target="_blank" style="color: #ff202c">Terms of Use</a>.</p>
      <div class="terms-modal__accept">
        <button class="button--primary" data-track data-label="agree" data-context="terms modal" onClick="Terms.accept()">Agree</button>
      </div>
    </div>
    `
  }

  accept(){
    cookies.set(COOKIE_NAME, 'true', COOKIE_DURATION);
    this.modal.close()
  }

  isStyleGuide() {
    const {
      port,
      host
    } = window.location

    return port == '4000' || host == 'styleguide.sho.com'
  }
  
  isTermsPage(){
    return window.location.pathname.indexOf('/about/terms') > -1
  }
}

export default TermsModal;


