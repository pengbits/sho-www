{{!-- placed here in attempt to speed up lazy loading --}}
<script>
      window.lazySizesConfig = window.lazySizesConfig || {};
      window.lazySizesConfig.customMedia = {
          '--small': '(max-width: 767px)',
          '--medium': '(max-width: 991px)',
          '--from-medium': '(min-width: 768px)'
      };
</script>

{{# global.environment}}
  {{$brightcove_js}}
    {{!-- set at page-level --}}
  {{/brightcove_js}}

  <script src="{{$assets_js_host}}{{/assets_js_host}}{{$assets_js_path}}/www/sho/dist/sho{{/assets_js_path}}{{#isMinifyAsset}}.min{{/isMinifyAsset}}.js?v={{version}}"></script>  
  <!-- =:onetrust consent map -->
  <script type="text/javascript">
    // define a map where keys are the categories to assert consent by calling the optanon helper of same name, 
    // and values are the payload of vendor scripts to fetch for the category
    // when consent is available, fetch the scripts with jquery.getScript (bundled as needed),
    // and in the success callback for the fetch, invoke a public event for our codebase to listen to 
    var ConsentMap = {
      'performanceAllowed'  : [
        '/www/sho/lib/omniture/AppMeasurement.js',
        '/www/sho/lib/omniture/VideoHeartbeat.js',
        '/www/sho/lib/omniture/MediaHeartbeatDelegate.js'
      ],
      'socialAllowed' : [],
      'targetingAllowed' : []
    }

    var allowedArray = [];
    
    window.cbsoptanon.onScriptsReady(function(cmp) {
      cmp.ot.awaitInitialConsent(function() {
        var options = {
          dataType: 'script',
          cache: true
        }
        
        var getScript = function(src){
          // console.log('fetching '+src)
          return $.ajax(Object.assign({url:src}, options));
        }
        
        var getMultiScripts = function(scripts){
          return scripts.reduce(function(stream,src){
            return stream.then(function(){
              return getScript(src)
            })
          }, $.Deferred().resolve())
        }

        var getGeolocation = function(){
          var oneTrustGeoData = window.Optanon && window.Optanon.getGeolocationData ? window.Optanon.getGeolocationData() : null;
          if(oneTrustGeoData) {
            if(oneTrustGeoData.country && oneTrustGeoData.country == "US") {
              // adobe launch listening for this event, implies US location, targetingAllowed, and socialAllowed
              dispatchAllowedEvent("USrulesAllowed");
            }
          }
          else {
            console.log('| assets_footer | geolocation not found');
          }
        }

        var dispatchAllowedEvent = function(categoryKey){
          var e = document.createEvent('Event') // this is how you have to fire the event for IE11 to be happy
          e.initEvent(categoryKey, false, true) // e.initEvent('performanceAllowed')
          document.dispatchEvent(e)
          console.log('| assets_footer | event:' + categoryKey);
        }
        
        var getCallback = function(categoryKey, scripts){
          return function(allowed){
            if(allowed){
              if(scripts.length) {
                console.log('| assets_footer | fetch '+ scripts.length + ' scripts for ' + categoryKey + ' category')
                getMultiScripts(scripts).done(function(){
                  console.log('| assets_footer | scripts ready for ' + categoryKey + ' category')
                  dispatchAllowedEvent(categoryKey)
                })
              }
              else {
                // not waiting for any scripts to load
                allowedArray.push(categoryKey);
                // if relevant categories have now been allowed, check geolocation
                if(allowedArray.length == 2) getGeolocation();
              }
            }  
          }
        }
        
        for(var k in ConsentMap){
          cmp.ot[k](getCallback(k, ConsentMap[k]))
        }
      })
    })
  </script>
 {{/ global.environment}}

{{!-- sitelinks searchbox --}}
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "url": "https://www.sho.com/",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://www.sho.com/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>

