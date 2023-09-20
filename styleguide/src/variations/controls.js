import $ from 'jquery';
import Cookies from '../utils/cookies';

export const COOKIE_NAME     = 'sho_allow_optimizely_variations';
const STYLEGUIDE_DOMAIN_PROD = 'styleguide.sho.com';

class Controls {
  constructor(cfg){
    this.initialize(cfg);
  }

  initialize(cfg){
    this.toggle = $(cfg.el).find('.variation-controls__toggle');
    this.toggle.on('click', this.onToggle.bind(this));
    this.allow_variations = this.readState();
    this.update();
  }

  update(){
    this.toggle.toggleClass('variation-controls__toggle--on', this.allow_variations);
    this.toggle.html(this.allow_variations ? 'ON':'OFF');
    console.log('|variations| allow_variations=' + this.allow_variations)
  }

  readState(){
    let c = Cookies.get(COOKIE_NAME);
    return !!c && c !== 'false';
  }
  
  writeState(){
    //setting expiration days as that is what set cookie is expecting default is 10 years
    Cookies.set(COOKIE_NAME, this.allow_variations, 'forever', (this.isProduction() ? '.sho.com' : undefined) );
  }
  
  onToggle(e){
    e.preventDefault()
    e.stopPropagation();

    // invert current setting
    this.allow_variations = !this.allow_variations;
    this.writeState();
    this.update();
  }
  
  isProduction(){
   return window.location.host == STYLEGUIDE_DOMAIN_PROD    
  }

}

export default Controls;
