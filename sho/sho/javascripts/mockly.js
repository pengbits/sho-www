// mockly.js
// a quick+dirty stop-gap solution for rolling variations on sho.com
// this is not part of the javascript bundle, but rather is added to the html layer in the head,
// which means it should be more or less blocking and load early in the dom startup,
// but that we don't have access to jquery or any other library, so keep it simple!
//
// in sho/views/order/stream_showtime.jsp:
// {{$jsHead}}
//   <script src="/www/sho/javascripts/mockly.js"></script>
// {{/jsHead}}

;(function(sho) {
  sho.mockly = function(){    
    
    //
    // mockly.audience_map
    // an array of audience definitions
    // each audience contains the following properties
    // - audience:string
    // a human readable identifier that can be passed to analytics if desired
    // - [strategy]:string
    // the strategy to use for determing if user is in the audience or not
    // for example 'search' supplies a value to compare with the `window.location.search` property
    this.audience_map = [{
      audience : 'stream-showtime-davis-vs-nunez',
      // in the case of multiple params it will match if ANY param is true
      params   : {
        s_cid    : 'boxing'
      }
    }]
    
    // mockly.variation_map
    // an array of variations mapping objects, each object containing the following
    // - audience:string
    // user must be in this audience in order to see the variation applied
    // - variations:Object[]
    // the actual changes to be applied to the page, stored as an array of objects
    // where the keys are either: 
    //
    //    a) a selector suitable for use with document.querySelectorAll       
    //    '.hero-image'
    //    b) a macro containing both a selector and the name of a fucntion to call against the resulting matched element
    //    "fn:replaceAttribute('.stream-showtime__cta','href')"
    //
    // and where the values are a hash of changes to be applied to the resulting element 
    // for example:
    //
    //    'style' : {'outline':'orange solid 2px'}   // css rules to be applied to element via native `style` property
    //    'data' : {'role':'button'}                 // data-attribute(s) to be applied via element's`dataset` property
    //    'html' : 'Don't miss this <b>offer</b>     // text/html to write to element's `innerHTML` property
    //
    // or in the case of a macro, the params to be passed to the function:
    //
    // "fn:replaceAttribute('.stream-showtime__banner-cta','href')" : {
    //   'find'    : 'i_cid=int-default-14591',
    //   'replace' : 'i_cid=int-boxing-17501'
    // },
    //
    this.variation_map = [{
      audience : "stream-showtime-davis-vs-nunez",
      // assumes a naive 1:1 mapping with 100% of vistors seeing the variation at index:1 if they're in the audience at index:1
      variations  : [{
        ".hero__image" : {
          style : { 
            "backgroundImage" : "url(https://downloads.sho.com/stream-showtime/davis-vs-nunez-hero2_1700x1063.jpg)"
          },
          data: {
            "bgset" : "https://downloads.sho.com/stream-showtime/davis-vs-nunez-hero2_568x426.jpg [--small] | https://downloads.sho.com/stream-showtime/davis-vs-nunez-hero2_1700x1063.jpg"
          }
        },
        
        ".stream-showtime__hero-header" : {
          html: "Stream Davis vs. Nunez LIVE"
        },
        
        ".stream-showtime__hero-copy" : {
          html: "No cable needed and always commercial-free. <strong>Only $10.99/month</strong> after free trial. Cancel anytime."
        },
        
        "fn:changeElementPosition('.stream-showtime__catalog .section--inner')" : {
          'from' : 2,
           'to'  : 1
        },
        
        "fn:replaceAttribute('.stream-showtime__cta','href')" : {
          'find'    : 'i_cid=int-default-14589',
          'replace' : 'i_cid=int-boxing-17499'
        },
        // this doesn't handle case where href has already been rewritten
        // by analytics helper to reflect cookie value...
        // or at least it seemed that way in safari
        "fn:replaceAttribute('.stream-showtime__banner-cta','href')" : {
          'find'    : 'i_cid=int-default-14591',
          'replace' : 'i_cid=int-boxing-17501'
        },
        
        "fn:replaceAttribute('.stream-showtime__red-banner__cta', 'href')" : {
          'find'    : 'i_cid=int-default-14590',
          'replace' : 'i_cid=int-boxing-17500'
        },
        
        "fn:replaceAttribute('meta[name=\"page-tracking\"]', 'content')" : {
          'find'    : 'sho:order:dtc landing page',
          'replace' : 'sho:order:dtc landing page:davis vs nunez'
        }
      }]
    }]
    
    this.macro_regex = /^fn:(.+)\('([^']+)'[,\s']{0,5}([^']+)*[\s']{0,4}\)/
    this.macro_names = ['changeElementPosition','replaceAttribute'] // add to this as needed
    this.initialize()  
  }
  // shorthand var for defining methods on the class prototype
  var P_ = sho.mockly.prototype;

  
  P_.initialize = function(){
    this.audience = this.getAudience()
    if(!this.audience) return
    
    console.log('|mockly| audience detected: \''+this.audience+'\'')
    var variations = this.getVariations(this.audience)
    if(variations.length){
      console.log('|mockly| variations detected: '+variations.length)
      // assume only one variation at a time for now
      this.applyVariation(variations[0])
    }
  }

  
  P_.getAudience = function(){
    var th=this;
    var mapping = this.find(this.audience_map, function(m){
      if(m.params){
        for(var p in m.params){
          if(th.getUrlParameter(p).indexOf(m.params[p]) > -1){
            return true
          }
        }
      }
    })
    
    return !!mapping ? mapping.audience : null
  }

  
  P_.getVariations = function(audience){
    var mapping = this.find(this.variation_map, function(m){
      return m.audience && m.audience == audience
    })
    return !!mapping ? mapping.variations : [] 
  }

  P_.applyVariation = function(variation){
    var th = this
    for(var selector in variation){
      var edit = variation[selector]
      th.applyChanges(selector, edit)
    }
  }
  
  P_.applyChanges = function(selector, edit ){
    if(this.macro_regex.test(selector)){
      this.applyMacro(this.macro_regex.exec(selector), edit)
    }
    else {
      var elements = document.querySelectorAll(selector)
      // console.log('found '+elements.length+' for '+selector)
      for(var i=0; i<elements.length; i++){
        var el = elements[i]
        if(edit.data)   { Object.assign(el.dataset, edit.data) }
        if(edit.style)  { Object.assign(el.style,   edit.style)   }
        if(edit.html)   { el.innerHTML = edit.html }
      }
    }
  }
  
  P_.applyMacro = function(matches, edit){
    if(matches.length < 3) return false
    var macro    = matches[1] 
    var selector = matches[2]
    var params   = matches.slice(3)
    if(this.macro_names.indexOf(macro) > -1){
      return this[macro].call(this, document.querySelectorAll(selector), edit, params)
    }
  }
  
  P_.changeElementPosition = function(elements, edit){
    var from, to, parent;
    
    for(var i=0; i<elements.length; i++){
      var el = elements[i]
      if(i == edit.from){
        from = el
        parent = from.parentNode
      }
      else if (i == edit.to){
        to = el
      }
    }
    if(from && to){
      parent.removeChild(from)
      parent.insertBefore(from, to)
    }
  }


  P_.replaceAttribute = function(elements, edit, params){
    var attr = params[0]
    for(var i=0; i<elements.length; i++){
      var el = elements[i]
      var dirty = el.getAttribute(attr)
      var clean = dirty.replace(edit.find, edit.replace)
      el.setAttribute(attr, clean)
    }
  }

  
  P_.find = function(arr, matcher){
    for(var i=0; i<arr.length; i++){
      var entry = arr[i]; 
      if(matcher(entry)){
        return entry
      }
    }
    return undefined
  }
  
  // add a utility for parsing parameters
  // since URLSearchParams() is not supported everywhere yet
  // https://davidwalsh.name/query-string-javascript
  P_.getUrlParameter = function (name) {
    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
    var results = regex.exec(location.search);
    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
  }
  
  setTimeout(function(){
    return new sho.mockly() 
  }, 0)
  
})(window.sho || {});