import $ from 'jquery';
import Modal from '../modal/index';

export const modal_events = {
  'open': 'video-player-modal:opened',
  'close': 'video-player-modal:closed'
}

const modal_methods_to_export = 'open close show hide'

class VideoPlayerModal {

  //
  // startup
  // ---------------------------------------------------------------------------
  constructor({awaitOnClose,disableTransitions}) {
    this.modal = new Modal({
      content: this.drawPlaceholder(),
      dataContext: 'video-player7 ',
      modalClass: 'video-player-outer-modal',
      // modalType: 'centered', // removing this solves the issue where body is pinned due to eager-loaded hidden modal being open,
      closeOnBodyClick: true,   // alternatively, expose a pin/unpin method on the base-modal to toggle the setting
      useHashChange: false,
      awaitOnClose,
      disableTransitions,
      fireEvents: modal_events
    });
    this.callModalMethod.bind(this)
    this.modal.open();
  }

  drawPlaceholder(){ 
    return (
      `<div class="video-play7r-modal">
        <div class="video-play7r-modal__placeholder">
          <div class="video-play7r__big-play-button"></div>
        </div>
      </div>`
    )
  }

  ensureVisibility(){
    // if another modal has been opened and closed since our eager-load setup,
    // the body tag will be missing the utility class
    console.log('|play7r-modal| ensureVisibility()')
    $('body').addClass(this.modal.settings.bodyClass)
    this.uncloak()
  }

  addClass(className) {
    this.modal.addClass(className)
  }
  
  removeClass(className) {
    this.modal.removeClass(className)
  }

  // TODO rename to setIsLoading() and `...modal--loading`
  cloak(){
    this.addClass('video-play7r-outer-modal--cloaked')
  }

  uncloak() {
    this.removeClass('video-play7r-outer-modal--cloaked')
  }

  getInnerContent(){
    return $(this.modal.getContent()).find('.video-play7r-modal')[0]
  }

  // setAwaitOnClose(){
  //   console.log('TODO: setAwaitOnClose -> BaseModal.updatePreferences()')
  // }
  
  show() {
    this.ensureVisibility()
    this.callModalMethod('show')
  }
  
  hide(){
    this.callModalMethod('hide')
  }

  open(){
    this.callModalMethod('open')
  }

  close(){
    console.log('|play7r-modal| close()', (typeof this.modal), (typeof this.modal.close))
    const p = new Promise(r => {
      console.log('|play7r-modal| before close')
      return this.modal.close.call(this.modal)
    }).then(() => {
      console.log('|play7r-modal| after close')
    }).catch(e => {
      console.log('|play7r-modal| error occurred', e)
    })
    return p
  }

  renderError({message}){
    console.log(`|play7r-modal| ${message}`)
    $(this.getInnerContent()).html( 
      `<div class="video-play7r-modal__error">
        <p class="video-play7r-modal__error__message">${message}</p>
      </div>`
    )
  }

  callModalMethod(methodName, ...args) {
    console.log('|play7r-modal| calling modal.'+methodName+' '+ (typeof this.modal))
    const fn = this.modal[methodName]
    if (fn) {
      fn.call(this.modal, ...args)
    } else {
      throw new Error(`trying to call non-existent method on modal: ${methodName}`)
    }
  }
}

// scope issues w/ this approach:
// modal_methods_to_export.split(' ').map(function(k){
//   VideoPlayerModal.prototype[k] = function(k) { VideoPlayerModal.prototype.callModalMethod(k, ...arguments) }
// })

export default VideoPlayerModal