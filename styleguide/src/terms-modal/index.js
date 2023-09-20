import TermsModal from './modal.js';
let instance;

const initModal = (cfg) => {
  // console.log(`TermsModal.new(${JSON.stringify(cfg)})`)
  instance = new TermsModal(cfg)
  return instance
}

let Terms = {
  
  'open' : ((cfg) => {
    if(!instance) { 
      initModal(cfg)
    } else {
      instance.modal && instance.modal.close();
      setTimeout(initModal, 500, cfg)
    }
  }),
  
  'accept' : (() => {
    if(instance && instance.modal){
      instance.accept()
      instance = null
    }
    else {
      throw new Error('can\'t accept terms in terms modal because instance was not found')
    }
  })
}


export default Terms
export {COOKIE_NAME} from './modal.js';
