import $ from 'jquery'

const container_classname = 'video-background'
const active_classname = `${container_classname}--active`
import { getScriptURL } from '../video-player7'

class VideoBackground {
  constructor (cfg){
    this.el = $(cfg.el)
    this.loadScripts = cfg.loadScripts
    this.setActiveClass()
    
    console.log(`|video-bg| init()  id=${this.el.attr('id')}`)

    if(this.loadScripts){
      this.loadBrightcoveScript()
    } else {
      this.setPlayerHandlers()
    }
  }
  
  loadBrightcoveScript(){
    let js, fjs = document.getElementsByTagName('script')[0];
    if (document.getElementById('brightcove-lib-js')){ this.setPlayerHandlers(); return; }
    
    js = document.createElement('script');
    js.id = 'brightcove-lib-js';
    const src = getScriptURL(); console.log('|video-bg| loadBCScript() '+src)
    js.src = src
    js.onload = this.setPlayerHandlers.bind(this);
    fjs.parentNode.insertBefore(js, fjs);
  }
  
  setPlayerHandlers() {
    const id = this.el.attr('id')
    if(!id) throw new Error('id attribute missing from container element')
    if(!window.bc) throw new Error('player api not found')
    
    Object.assign(this, {
      bcPlayer          : window.bc(id)
      // IMPORTANT - trying to obtain the reference to videojs below
      // was breaking playback, only in sho.com (non-order) context, only on mobile.
      // since we don't actually need to interact with the videojs api,
      // we're free to omit the line below (unlike in the video-player where we use the full api)
      // api : window.videojs(id)
    })
    
    window.videobackground = {
      'setVideo'  : (({video}) => this.setVideo({video}) )
    }
  }

  setActiveClass(){
    this.el.toggleClass(active_classname, true) 
  }

  setVideo({video}){
    if(!this.bcPlayer) throw new Error('no reference to brightcove player api');
    if(!this.bcPlayer.catalog) throw new Error('could not find playerAPI.catalog object')

    const {catalog} = this.bcPlayer
    catalog.getVideo(video, (error,data) => catalog.load(data))
  }

}


VideoBackground.getHTMLString = ({video,poster}) => {
  return `<video
    id="video-player-${video}"
    class="video-background"
    style="position:absolute;"
    data-account="63128"
    data-player="NzCF8EByd"
    data-embed="default"
    data-video-id="${video}"
    data-age-gate="0"
    data-full-episode="false" 
    controls="false"
    loop
    autoplay
    muted
    playsinline
    poster="${poster}">
  </video>`
}
VideoBackground.container_class = container_classname
VideoBackground.active_class = active_classname

export default VideoBackground