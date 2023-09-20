import $ from 'jquery';
import enquire from 'enquire.js';
import Variations from '../variations/index';

class GlobalNavigation {
  constructor(cfg) {
    var el = $(cfg.el);
    Object.assign(this, {
      'nav'              : el,
      'logo'             : el.find('.global-nav__logo'),
      'menuToggle'       : el.find('.global-nav__menu-toggle'),
      'menuOpenBtn'      : el.find('.global-nav__menu-icon'),
      'breadcrumb'       : el.find('.global-nav__breadcrumb'),
      'navList'          : el.find('.global-nav__list'),
      'menu'             : el.find('.global-nav__menu'),
      'flyoutContainer'  : el.find('.flyout-container'),
      'flyoutOpenBtn'    : el.find('.global-nav__flyout'),
      'flyoutCloseBtn'   : el.find('.flyout-container__icon-close'),
      'seriesDrawer'     : el.find('.series-drawer'),
      'searchIcon'       : el.find('.global-nav__search-icon'),
      'searchBar'        : el.find('.global-nav__search-bar'),
      'searchField'      : el.find('.global-nav__search-field'),
      'searchForm'       : el.find('#results-search-form'),
      'seriesBtn'        : el.find('.global-nav__flyout--series-drawer'),
      'breakpoints'      : {'large' : 992}
    });
    this.win = $(window);
    this.isSearching = false; 
    this.flyoutContainer.hide();  // previously, the flyout-container was obscuring the global banner,
                                  // because it was set to opacity:0 but display:block at dom-ready
    this.setHandlers();
    this.setEventListeners();
    this.setVariationListeners();
  }
  
  setHandlers() {
    // add '--stuck' classname when nav becomes sticky after scrolling
    const el = document.querySelector(".global-nav");
    const navObserver = new IntersectionObserver( 
      ([e]) => e.target.classList.toggle("global-nav--stuck", e.intersectionRatio < 1),
      { threshold: [1] }
    );
    navObserver.observe(el);

    $('body').off('click touchend').on('click touchend', (event) => {
      this.onBodyClick(event);
    });
 
    if($('.global-banner').length) {
      // global banner affects scrolling/visual height of mobile nav
      this.toggleModifier(this.nav, 'banner-exists');
    }

    this.menuOpenBtn.on('click touchend', (event) => {
      event.preventDefault();
      this.toggleMenu();
    });

    this.flyoutOpenBtn.on('click touchend', (event) => {
      event.preventDefault();
      if(event.target.classList.contains('global-nav--selected')){
        this.closeFlyoutDrawer()
      } else {
        if(event.target.classList.contains('global-nav__flyout--series-drawer')) {
          this.openFlyoutDrawer('series');
        }
      } 
    });

    this.flyoutCloseBtn.on('click touchend', (event) => {
      event.preventDefault();
      this.closeFlyoutDrawer()
    });

    this.searchIcon.on('click touchend', (event) => {
      event.preventDefault();
      this.toggleSearch();
    });

    this.searchForm.on('submit', (event) => {
      // Remove focus before form submit
      if(this.isSearching) return;

      this.searchField.blur();
      this.isSearching = true;

      event.preventDefault();
      // delay to allow time for analytics
      setTimeout(() => this.submitSearch(), 250);

      $.event.trigger({
        type: 'searchFormSubmit',
        searchTerm: this.searchField.val().toLowerCase()
      });
    });

    this.searchField.on('touchend', (event) => {
      this.searchField.focus();
    });

    enquire.register(`screen and (max-width:${(this.breakpoints.large -1)}px)`, {
      'match' : this.closeFlyoutDrawer.bind(this)
    })
  }

  submitSearch() {
    this.searchForm.submit();
    this.isSearching = false;
  }

  onBodyClick(e) {
    //If user clicks outside global nav component
    if (!$(e.target).parents('.global-nav, .modal').length && !$(e.target).hasClass('global-nav')) this.resetNav();
  }

  resetNav() {
    $('body').removeClass("has-menu-open");
    this.removeModifier(this.nav, 'open');
    this.removeModifier(this.nav, 'search-open');
    this.closeFlyoutDrawer();
  }

  toggleMenu() {
    this.toggleModifier(this.nav, 'open');
    this.removeModifier(this.nav, 'flyout-open');
    $('body').toggleClass("has-menu-open");

    if (this.navIsOpen()) {
      this.menuOpenBtn.attr("data-label", "menu open");
    } else {
      this.menuOpenBtn.attr("data-label", "menu close");
    }
  }

  openFlyoutDrawer(type) {
    // need to set the drawer's display to none when its not in use to avoid collisions..
    // before toggling the classnames on for the active state and transitions, we have to restore display:block
    this.flyoutContainer.show()
    if(type === 'series'){
      this.seriesDrawer.show()
    }

    setTimeout(() => {
      this.addModifier(this.nav,    'flyout-open');
      if(type === 'series'){  
        this.addModifier(this.seriesBtn, 'selected');
      }
    }, 0)
  }

  closeFlyoutDrawer() {
    this.removeModifier(this.nav,       'flyout-open');
    this.removeModifier(this.seriesBtn, 'selected');
  }

  toggleSearch() {
		if(!this.searchIsOpen()){
      this.addModifier(this.nav,        'search-open');
      this.removeModifier(this.nav,     'open');
      this.removeModifier(this.nav,     'flyout-open');
		}
    else {
			this.resetNav();
		}
  }

  setEventListeners() {
    let transition_end = 'transitionend webkitTransitionEnd oTransitionEnd';
    this.menu.on(transition_end, (event) => {
      this.closeFlyoutDrawer()
    });

    this.searchBar.on(transition_end, (event) => {
      if (!this.searchIsOpen()) {
        this.searchField.val('');
        this.searchField.blur();
      } else {
        this.searchField.focus();
        this.searchField.trigger('touchend');
      }
    });

    this.flyoutContainer.on(transition_end, (event) => {
      // if the drawer is not in use, it must be set to display:none;
      if(!this.flyoutDrawerIsOpen()){
        this.flyoutContainer.hide();
      }
    })
  }

  addModifier(el, key) {
    this.toggleModifier(el, key, true)
  }

  removeModifier(el, key) {
		this.toggleModifier(el, key, false)
	}

	toggleModifier(el, key, onoff){
		let modifier = `global-nav--${key}`;
		el.toggleClass(modifier, onoff)
	}

	searchIsOpen(){
		return this.nav.hasClass('global-nav--search-open');
	}

  navIsOpen(){
    return this.nav.hasClass('global-nav--open')
  }

  flyoutDrawerIsOpen(){
    return this.nav.hasClass('global-nav--flyout-open')
  }

  //variation code for optimzely, as needed
  setVariationListeners() {
		Variations.on('variation:detected:sho', (event, data) => {
      //
		});
  } 
}

export default GlobalNavigation;
