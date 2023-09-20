import CartModal from './modal';
let instance;

const initModal = (cfg) => {
  console.log(`Abandoned.Cart.new(${JSON.stringify(cfg)})`)
  instance = new CartModal(cfg)
  return instance
}

export default {
  
  'open' : ((cfg) => {
    if(!instance) { 
      initModal(cfg)
    } else {
      instance.modal.close();
      setTimeout(initModal, 500, cfg)
    }
  }),
  
  'close' : (() => {
    if(instance && instance.modal){
      instance.modal.close()
      instance = null
    }
    else {
      throw new Error('can\'t close cart modal because instance was not found')
    }
  })
}

export {COOKIE_NAME} from './modal';
