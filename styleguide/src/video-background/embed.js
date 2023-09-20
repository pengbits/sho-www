// ahoy
import $ from 'jquery'
import throttle from 'lodash.throttle';

class VideoBackgroundEmbed {
  constructor ({el}){
    this.el = $(el)
    this.parseSrc() && this.setHandlers()
  }
  
  parseSrc(){
    const {bgVideo,bgVideoSmall} = this.el.data()
    if(!bgVideo || !bgVideoSmall) {
      console.log(['|video-background| error: data-bg-video and data-bg-video-small must both be defined on element', this.el[0]])
      return false
    } else {
      this.sources = {
        'large' : bgVideo,
        'small' : bgVideoSmall
      }
      return true
    }
  }
  
  setHandlers(){
    $(window).resize(throttle(this.detectMobile.bind(this), 250))
    this.detectMobile()
  }
  
  detectMobile(){
    const isMobile = window.innerWidth < 768
    console.log(`|video-background| was: isMobile=${this.isMobile} now: isMobile=${isMobile}`)
    if(isMobile !== this.isMobile) {
      this.isMobile = !!isMobile
      this.render();
    }
  }
  
  render(){
    const src = this.isMobile ? this.sources.small : this.sources.large
    console.log(`|video-background| this.isMobile=${this.isMobile} src='${src}'`)
    this.el.html(`<source src="${src}" type="video/mp4">`)
  }
}

export default VideoBackgroundEmbed