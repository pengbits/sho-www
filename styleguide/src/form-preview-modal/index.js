import $ from 'jquery';
import Modal from '../modal/index';

class FormPreviewModal {
  constructor(cfg) {
    this.nameInput = $(cfg.name);
    this.messageInput = $(cfg.message);
    this.name = 'Your Name';
    this.message = 'Your Message';
    this.BODY_CLASS = 'modal-open form-preview-modal--active'; 
    this.setListeners();
  }

  setListeners() {
    this.nameInput.on('change', () => {
      this.name = this.nameInput.val();
    });

    this.messageInput.on('change', () => {
      this.message = this.messageInput.val();
    });

    $(document).on( "preview:opened", event => {
      this.eventTriggered(event)
    });
  }

  eventTriggered(event) {
    this.modal = new Modal({
      content : this.getTemplate(),
      dataContext : 'preview modal',
      bodyClass : this.BODY_CLASS
    });

    this.modal.open(event);
  }

  getTemplate() {
   return `
    <div class="form-preview-modal modal-open">
      <img class="form-preview-modal__image" src="https://www.sho.com/assets/images/holiday-card/2021/complete.gif">
    </div>
    `;
  }
}

export default FormPreviewModal;
