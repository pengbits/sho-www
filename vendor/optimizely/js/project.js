// Optimizely Project Javascript
// last updated 04-01-2020 03:49 PM
// ----------------------------------------------------------------------------
// This code will run before any Optimizely experiment or decisioning code executes on every page where the Optimizely snippet loads, regardless of whether there are any active experiments. Learn more.

// local project.js notes
// ----------------------------------------------------------------------------
// To make changes to optimizely's project-js do the following

// 1) open a new feature branch as per normal
// 1) go to the optimizely console at https://app.optimizely.com/v2/projects/16939480261/settings/javascript
// and grab the last version of the project-js. copy its contents and save them locally, to project.js (this file)
// 2) make your changes as needed by tweaking the code in the url above
// WARNING
// remember, you are working in a javascript file that is run on every page of the production site, so exercise extreme caution
// WARNING
// 3) when happy with your work, immediately revert the live project javascript in the optimizely console to the version 
// of project.js in develop (restore optimizely's project js to its previous state) and save your proposed changes locally to project.js
// 4) commit your edits and open a new pull request as usual
// 5) when the pull request is approved, deploy your changes by pasting them into the optimizely console
// 6) your changes are now live, your version, and the previous iteration have been preserved in git

// BEGIN PROJECT-JS

//Bounce rate code.
(function () {

  if (window.localStorage) {

      var pageview_counter = localStorage.getItem("optimizely_custom_bouncerate") ? +localStorage.getItem("optimizely_custom_bouncerate").split('|')[0] : null;
      var bounce = localStorage.getItem("optimizely_custom_bouncerate");

      // If no local storage entry found or more than 30 minutes passed, 
      // reset pageview counter
      if (localStorage.getItem("optimizely_custom_bouncerate") === null || bounce.split('|')[1] < (new Date().getTime() - 1800000) || bounce.split('|')[1] > (new Date().getTime() - 4000)) {

          localStorage.setItem('optimizely_custom_bouncerate', '1|' + new Date().getTime());

      }
      // Else, count up and, if second pageview, send tracking event
      else {

          localStorage.setItem('optimizely_custom_bouncerate', (pageview_counter + 1) + '|' + new Date().getTime());

          if (pageview_counter === 2) {
              window['optimizely'] = window['optimizely'] || [];
              window.optimizely.push(["trackEvent", "2nd_pageview_in_session"]);
          }

      }
  }

})();

window.optimizelyConditionalVariable = true;

// window.addEventListener("hashchange", function() {
//  window.optimizely = window.optimizely || [];
//  optimizely.push({type: 'activate'});
// }, false);


// window.optly
// define a safe workspace for helper functions 
window.optly = window.optly || {};

// getLoggingSettingFromCookie()
// return the cookie pref for logging? defaults to true
window.optly.getLoggingSettingFromCookie = function(){
// assume logging set to true if browser doesn't support native [].find
if([].find === undefined) return true;

var pref = document.cookie.split('; ').find(function(pair){ 
  return pair.indexOf('sho_allow_optimizely_logging') === 0; 
});
if(/=false/.test(pref)){
  return false;
} else {
  return true;
}
};

// logOptimizelyEvents()
// should we log to the console? defaults to true
window.optly.logOptimizelyEvents = function(){
if(window.log_optimizely_events !== undefined) return window.log_optimizely_events;

window.log_optimizely_events = window.optly.getLoggingSettingFromCookie();
return window.log_optimizely_events;
};

// window.optly.trackEvent
// wraps the call to window.optimizely.push() with conditional logging 
window.optly.trackEvent = (function(e){
if(window.optly.logOptimizelyEvents()){
  console.log('|optimizely X| trackEvent:' + e);
}
window.optimizely.push({
  type: "event",
  eventName: e
});
});

// onInit
// wrapper function for setting all listeners to optimizely's api
window.optly.onInit = function($) {

//
// Streaming Modal
// --------------------------------------------------------------------------
// Streaming modal clicks
$(document).delegate('.streaming-modal__button, .streaming-modal__red-order-promo-button, .streaming-modal__order .button--small','click', function(e){
  var label = $(e.currentTarget).data('label');
  var eventName = 'streaming-modal-button-click-'+ label; 
  window.optly.trackEvent(eventName);
});


$(document).ready(function(e){
  // 
  // Create Segment in Optimizely for Mobile Users (SITE-15783)
  // now in $(document).ready() (SITE-17294)
  // --------------------------------------------------------------------------
  var userDevice = window.optimizely.get('visitor').device;
  var deviceStr  = userDevice == 'desktop' ? 'Desktop': 'Mobile Only';
  
  // don't forget to use safe version of window["optimizely"].push:
  window["optimizely"] = window["optimizely"] || [];
  window["optimizely"].push({
    "type": "user",
    "attributes": {
      "Devices": deviceStr
    }
  });
    
    // Events for scrolling to provider element in no-tray version (SITE-17210)
  // --------------------------------------------------------------------------
  if(window.Waypoint && typeof window.Waypoint == 'function'){
    console.log('|optly| creating waypoints');
    var onEnterWaypoint = (function(direction){
      if(direction == 'down'){
        onProviderFocus(this.element.dataset);
      }
    });
    
    var onProviderFocus = (function(data){
      var eventName = 'order-page-focus-provider' + (data.providerId !== undefined ? '-'+ data.providerId : '');
      window.optly.trackEvent(eventName);
    });
    
    $('.order--in-page__provider').each(function(){
      var w = new Waypoint({
        element: this,
        offset: 'bottom-in-view',
        handler: onEnterWaypoint
      });
    });
  }
  else {
  //  console.log('|optly| Waypoint is undefined....');
  }
});

}; // END onInit

// don't forget to use safe version of window["optimizely"].push:
window["optimizely"] = window["optimizely"] || [];
window["optimizely"].push({
"type": "addListener",
"filter": {
 "type": "lifecycle",
 "name": "initialized"
},
handler: (function(event) {
 window.optly.onInit(window.optimizely.get('jquery'));
})
});