{{!--
SHO Bulk DTV Hospitality
bulk/dtv-hospitality
hijacking order page's body_content partial + layout scheme for use in wyndham 2021 page
--}}

{{< layouts/default }} 
  {{$classnames}}stream-showtime stream-showtime--wyndham{{/classnames}}
  {{$assets_css_path}}/www/sho/dist/stream-showtime{{/assets_css_path}} 
  {{$assets_js_path}}/www/sho/dist/stream-showtime{{/assets_js_path}} 
  {{$meta}} 
  {{#page}} 
  <title>SHOWTIME DTV Hospitality | SHOWTIME</title>
  <meta name="page-tracking" content="sho:affiliate:b2b:bulk:dtv hospitality" />
  <meta property="og:title" content="SHOWTIME DTV HOSPITALITY | SHOWTIME" />
  <meta name="description"
    content="Give your guests FREE instant access to the SHOWTIME HOTEL APP during their stay." />
  <meta property="og:description"
    content="Give your guests FREE instant access to the SHOWTIME HOTEL APP during their stay." />
  <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
  <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
  {{/page}}
  {{/meta}}

  {{$nav}}{{/nav}}
  {{$content}}
    {{> /order/wyndham/_body_content_wyndham }}
  {{/content}}
  {{$brightcove_js}}
    {{> /partials/_assets_footer_brightcove }}
  {{/brightcove_js}}
  
  {{$entireShoLibrary}}{{/entireShoLibrary}}{{!-- null out this footer content --}}
  {{$storeBanner}}{{/storeBanner}}{{!-- null out this footer content --}}
    
  {{$jsFooter}}
    <style type="text/css">.footer { display: none !important; }</style>
  {{/jsFooter}}
   {{/ layouts/default}}