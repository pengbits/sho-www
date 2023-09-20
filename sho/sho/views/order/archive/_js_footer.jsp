<script type="text/javascript">
    // this inline js does the following
    // 1) rewrite i_cid codes to correct ones for order page (stopgap solution until we have distinct promos )
    // 2) unset target=blank for tv-provider modal
    // hero: https://www.showtime.com/#signup?i_cid=int-default-19964
    // peekaboo banner: https://www.showtime.com/#signup?i_cid=int-default-19965
    // footer: https://www.showtime.com/#signup?i_cid=int-default-19966
    //
    // 1) IS THIS STILL NEEDED?    
    var sage_cta_map = {
      '.stream-showtime__hero__cta.stream-showtime__cta a' : 'i_cid=int-default-19964',
      '.js-peek-a-boo-banner a' : 'i_cid=int-default-19965',
      '.stream-showtime__red-banner__cta' : 'i_cid=int-default-19966'
    }
    var i_cid_regex = /i_cid=([^&]+)/;          // tweaked regex to limited match to one param, this was previously targeting the entire href, 
                                                // and as a result, was cannibalizing kochava links (see SITE-20859)
    for(var k in sage_cta_map){
      var selector = k
      var code     = sage_cta_map[k]
      var el       = document.querySelector(selector)
      if(el && i_cid_regex.test(el.href)){
        var href = el.href
        var edit = href.replace(i_cid_regex, code)
        console.log("|jsfooter| ['"+selector+ "'] => changed i_cid in \n"+ href +"` to `"+code+'`')
        el.href = edit
      }
    }
    
    // 2)
    var tvEl = document.querySelector('[data-provider-id="126"]'); 
    if(tvEl) {
      tvEl.setAttribute('href', '#/tvproviders/open') // value set in phil is absolute, not useful here
      tvEl.setAttribute('target', '_parent')
    }
    </script>