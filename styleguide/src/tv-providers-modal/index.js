import $ from 'jquery';
import Modal from '../modal/index';

const TV_PROVIDER_DATA_URL = {
  'sho'        : '/order.json', // actually the same url that the modal itself is drawn, but the json version'
  'styleguide' : '/styleguide/tv-providers-modal/order-page.json'
}

const isStyleGuide = () => {
  const {port,host} = window.location
  return port == '4000' || host == 'styleguide.sho.com'
}

export class TvProvidersModal {
  constructor(){
    this.setListeners();
  }

  setListeners() {
    $(document).on( "tvproviders:opened", event => {
      this.onTvProviderModalEvent(event)
    });
  }

  onTvProviderModalEvent(event) {
    if(!event.details) return;
    
    const k   = isStyleGuide() ? 'styleguide' : 'sho'
    const URL = TV_PROVIDER_DATA_URL[k]
    this.createLoadModal()
    $.get(URL, (json) => this.onProviderDataLoaded(json.page || {}))
  }

  // set up the modal with the config needed for list of providers,
  // but with no inner content other than a loading state
  createLoadModal(event){
    this.modal = new Modal({
      content : this.getLoadMask(),
      dataContext : 'provider list:traditional full list',
      modalClass: 'tv-providers-modal tv-providers-modal--loading',
      modalType: 'centered', // need this param for the 'click anywhere outside modal to close' behavior
      closeButtonInFooter: true,
    });

    this.modal.open(event);
  }
  
  onProviderDataLoaded({tvProviders}){
    if(!tvProviders.length) {
      console.log("|tv-providers-modal| ERROR could not extract provider data from order page JSON")
      return false
    }
    
    this.data = tvProviders
    // to test the state change, you can simulate latency with setTimeout
    // setTimeout((() => this.createTVProviderModal()), 2000)
    this.createTVProviderModal()
  }
  
  createTVProviderModal(){
    this.modal.removeClass('tv-providers-modal--loading')
    this.modal.setContent(this.getTemplate())
  }
  
  divider(char){
    return `<li 
      class="partner-list__divider" key=${char}>${char}
    </li>`
  }
  
  partner({name,providerId,providerLeadUrl}) {
    return `<li>
      <a class="partner-list__link" 
        target="_blank"
        href=${providerLeadUrl} 
        rel="noopener noreferrer"
        data-provider-id=${providerId}
        data-track 
        data-label="provider lead">${name}
      </a>
    </li>`
  }

  partnerList() {
    return this.data.map((section) => {   // [{"key":"A","tvProviders":[{},{},{}]},{"key:B" ...}]
      return [this.divider(section.key)]
        .concat(section.tvProviders.map(item => {
          return this.partner(item)
        })).join('')
    }).join('')
  }
  
  getTemplate() {
    return `<div>
      <div class="tv-providers-modal__content" data-context="provider list:traditional full list">
        <h4 class="partner-list-header">Select a Provider Below:</h4>
        <ul class="partner-list" data-provider-group-id="0">
          <li>${this.partnerList()}</li>
        </ul>
    </div>`
  }
  
  getLoadMask(){
    return `<div class="loading-animation loading-animation--scrolling"></div>`
  }
}
 
export default TvProvidersModal;
