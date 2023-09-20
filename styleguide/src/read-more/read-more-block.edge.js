// NOT IN USE
// this refactor of read-more/less has some issues so rolling back to legacy component for the 'mode=block' contexts

//  https://jedfoster.com/Readmore.js/
// jquery plugin used for block-mode
import ReadMoreJs from 'readmore-js';
const READMORE_JS_DEFAULT_COLLAPSED_HEIGHT = 200;

import { trackingAttributesString } from './index'

const default_opts = {
  'readMoreLabel': 'Read More',
  'readLessLabel': 'Read Less'
}

// TODO limiting ourselves to static values for collapsedHeight isn't working everywhere:
// while it's theoretically an improvment not to have to isolate the 'below the fold' content in the markup,
// it's much more of a problem to have to know ahead of time what the height of some dynamic content is in pixels,
// especially when that $(el).outerHeight()-derived value is subject to change across breakpoints! 
class ReadMoreBlock {

  constructor(cfg) {
    this.el = $(cfg.el)
    const collapsedHeight = this.el.data('collapsedHeight')
    let opts = {
      'readMoreLabel'   : (this.el.data('readMoreLabel') || default_opts.readMoreLabel),
      'readLessLabel'   : (this.el.data('readLessLabel') || default_opts.readLessLabel),
      'collapsedHeight' : ( // allow for 0
       collapsedHeight || collapsedHeight == 0 ? collapsedHeight : READMORE_JS_DEFAULT_COLLAPSED_HEIGHT
      )
    }
    this.el.readmore({
      moreLink: this.getMoreLink(opts.readMoreLabel),
      lessLink: this.getLessLink(opts.readLessLabel),
      afterToggle: this.afterToggle.bind(this),
      beforeToggle: this.beforeToggle, 
      ...opts
    })
  }

  getMoreLink(label){
    return `<a class="read-more__toggle" href="#" ${trackingAttributesString({mode:'more'})}>${label}</a>`
  }

  getLessLink(label){
    return `<a class="read-more__toggle read-more__toggle--less" href="#" ${trackingAttributesString({ mode: 'less' })}>${label}</a>`
  }
  
  afterToggle(trigger,el,expanded){
    if(!expanded){
      $('html,body').animate({
        scrollTop: el.offset().top
      }, 100)
    }
  }

}

export default ReadMoreBlock