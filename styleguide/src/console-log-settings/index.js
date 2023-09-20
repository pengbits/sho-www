import $ from 'jquery';
import cookies from '../utils/cookies'

class ConsoleLogSettings {

  // <span class="js-console-log-settings" data-role="analytics"><em>On</em></span>
  constructor({el,role}){
    if(el){
      this.el = $(el)
      this.el.on('click', this.toggle.bind(this))
    }
    this.role = role || this.el.data('role')
    // console.log(`hello from ConsoleLogSettings:${this.role}`)

    this.setInitialState()
    this.update();
  }
  
  setInitialState(){
    if(cookies.get(this.getPropertyName()) == undefined){
      this.setState(true)
    }
  }
  
  getState(key=null){
    const value = (cookies.get(this.getPropertyName() || key) || '') !== 'false'
    // console.log(`getState(${typeof value}:${value})`)
    return value
  }
  
  setState(value){
    // console.log(`setState(${typeof value}:${value}`)
    cookies.set(this.getPropertyName(), value, 'forever') //default expiration is 10 years
  }
  
  toggle(e){
    e.preventDefault()
    
    this.setState(!this.getState())
    // console.log(`toggle: getState=${this.getState()}`)
    this.update()
  }
  
  getPropertyName() {
    return `sho_allow_${this.role}_logging`
  }
  
  update(){
    if(!this.el) return
    
    const s = this.getState();
    //const text = !!s ? 'ON' : 'OFF'
    this.el.toggleClass('console-toggle--on', s)
    //this.el.find('.console-toggle__toggle').html(text)
  }
}

// export static helper to other contexts
ConsoleLogSettings.getState = (role) => {
  return new ConsoleLogSettings({role}).getState()
}

export default ConsoleLogSettings