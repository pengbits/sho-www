import $ from 'jquery';

const ANIMATE_TABLE_DURATION  = 600 // aka "slow"
const ANIMATE_TOGGLE_DURATION = 200 // aka "fast"

export class ProviderPseudoTable {   
  
  constructor(cfg){
    this.el               = $(cfg.el);
    this.open             = false;
    this.scrollTop        = undefined;  
    this.toggleTrigger    = $(".js-toggle-button");
    this.toggleTriggerTop = $(".pseudo-table__toggle--top")
    this.secondaryTable   = $(".pseudo-table--secondary");
    this.setListeners()
  }

  setListeners() {
    this.toggleTrigger.click(this.toggle.bind(this))
  }
  
  toggle(){
    this.open = !this.open
    
    if(!this.open){
      $("html, body").animate({ scrollTop: this.scrollTop }, ANIMATE_TABLE_DURATION); 
    }
    else {
      this.scrollTop = $(document).scrollTop()
    }
    
    this.toggleSecondaryTable()
  }

  toggleSecondaryTable() {
      this.secondaryTable.slideToggle(ANIMATE_TABLE_DURATION)
    this.toggleTriggerTop.slideToggle(ANIMATE_TOGGLE_DURATION)
  }

}
export default ProviderPseudoTable