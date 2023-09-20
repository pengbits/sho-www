// Order Tray
  // --------------------------------------------------------------------------
  // custom ui for groups variation
  $(document).delegate('.order-picker .order-picker__provider-group-button', 'click', function(e){
    var id = $(e.currentTarget).data('provider-group-id');
    window.optly.trackEvent('order-tray-provider-pick');
    window.optly.trackEvent('order-tray-provider-pick-'+id);
  });
  
  // Provider clicks in sidebar
  $(document).delegate('.order-picker .order-picker__provider .input--faux-radio', 'click', function(e){
  	var id = $(e.currentTarget).data('provider-id');
  	window.optly.trackEvent('order-tray-provider-pick');
  	window.optly.trackEvent('order-tray-provider-pick-'+id);
  });
  
  // Provider clicks on mobile logos
	$(document).delegate('.order-card__toggle', 'click', function(e){
  	var id = $(e.currentTarget).parents('.order-card').data('provider-id');
  	window.optly.trackEvent('order-tray-provider-pick');
  	window.optly.trackEvent('order-tray-provider-pick-'+id);
	});

	 // Featured Provider Lead Event aka tv provider logo
   $(document).delegate('.order-card__partner-logo','click', function(e){
     window.optly.trackEvent('order-tray-provider-lead');
     window.optly.trackEvent('order-tray-provider-lead-featured');
   });

   // All Providers List Lead Event
   $(document).delegate('.partner-list__link','click', function(e){
     window.optly.trackEvent('order-tray-provider-lead');
     window.optly.trackEvent('order-tray-provider-lead-alpha');
   });
  
  // Provider Learn More Only (Learn more with or without a Provider Lead)
  $(document).delegate('.order-card__details-toggle--open', 'click', function(e){
    var card  = $(e.currentTarget).parents('.order-card');
    var id    = card.data('provider-id');
    window.optly.trackEvent('order-tray-learn-more-only');
    window.optly.trackEvent('order-tray-learn-more-only-'+id);
  });

  
  // Learn More in Additional Providers Card (Provider-Entry Expanded)
  $(document).delegate('.order-card__provider-entry__logo.order-card__details-toggle', 'click', function(e){
    var el = $(e.currentTarget); 
    var id = el.parents('.order-card__provider-entry').data('provider-id');
    window.optly.trackEvent('order-tray-learn-more-only');
    window.optly.trackEvent('order-tray-learn-more-only-'+id);
  });

  // Provider Lead - New
	$(document).delegate('[data-label="provider lead"][data-provider-id]','click', function(e){
    console.log('test QA PLE');
  	var btn   = $(e.currentTarget);
  	var card  = btn.parents('.order-card');
  	var id    = btn.data('provider-id');
  
  	// Provider Lead Event
  	window.optly.trackEvent('order-tray-provider-lead');
  	window.optly.trackEvent('order-tray-provider-lead-'+id);

		if(!card) return;
  
  	// Provider Lead w/ Learn More 
  	if(card.find('.order-card__details-toggle--active').length){
    	window.optly.trackEvent('order-tray-learn-more');
    	window.optly.trackEvent('order-tray-learn-more-'+id);
  	}
	});
  // END ORDER TRAY