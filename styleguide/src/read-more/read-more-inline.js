import $ from 'jquery';
import {trackingAttributes,trackingAttributesString} from './index.js'

const default_opts = {
  'readMoreLabel':'MORE',
  'readLessLabel':'LESS',
  'readMoreLessClassName': 'read-more__button',
  'readMoreClassName':'read-more__button--more',
  'readLessClassName':'read-more__button--less', // a modifier is permitted but readMoreClassName is used regardless
  'testClampedClassName': 'read-more--test-clamp'
}

const default_max_height = 200

class ReadMoreInline {

  constructor(cfg) {
    this.el = $(cfg.el)
    this.inner = this.el.find(`.read-more__inner`)
    this.opts = Object.assign({}, default_opts, cfg)
    if(this.shouldTruncate()){
      this.el.addClass('read-more--should-truncate')
      this.drawButtons()
      this.truncate()
      this.setClickHandler()
    } else {
      this.untruncate()
    }
  }

  isTextClamped(el) { 
    return el.scrollHeight > el.clientHeight
  }

  shouldTruncate(){ // hoping for best without micro delays between set and read here...
    this.el.addClass(this.opts.testClampedClassName)
    const isClamped = this.isTextClamped(this.inner[0])
    this.el.removeClass(this.opts.testClampedClassName)
    return isClamped
  }

  drawButtons(){
    this.el.append(   `<a href="#" ${trackingAttributesString('more')} class="${this.opts.readMoreLessClassName} ${this.opts.readMoreClassName}">${this.opts.readMoreLabel}</a>`)
    this.inner.append(`<a href="#" ${trackingAttributesString('less')} class="${this.opts.readMoreLessClassName} ${this.opts.readLessClassName}">${this.opts.readLessLabel}</a>`)
    this.buttons = {
      more: this.el.find(`.${this.opts.readMoreClassName}`),
      less: this.el.find(`.${this.opts.readLessClassName}`)
    }
  }

  setClickHandler() {
    this.onButtonClick = this.onButtonClick.bind(this)
    this.el.on('click', '.' + this.opts.readMoreLessClassName, this.onButtonClick)
  } 

  onButtonClick(e){
    e.preventDefault()
    if($(e.currentTarget).data('label') == 'read more'){
      this.untruncate()
    } else {
      this.truncate()
    }
  }

  truncate(){
    this.el.addClass('read-more--truncated')
    this.buttons.less.hide()
    this.buttons.more.show()
  }

  untruncate() {
    this.el.removeClass('read-more--truncated')
    if(this.buttons && this.buttons.more){
      this.buttons.more.hide()
      this.buttons.less.show()
    }
  }

}

export default ReadMoreInline