{{!-- 
  order page alternate
  /order-showtime
  static dummy page for housing full-page variations for a/b testing promotional order pages
  see SITE-20729, SITE-20559
--}}
{{< layouts/default }}
  {{$classnames}}stream-showtime stream-showtime--organic{{/classnames}}
  {{$assets_css_path}}/www/sho/stylesheets/stream_showtime{{/assets_css_path}}
  {{$assets_js_path }}/www/sho/javascripts/stream_showtime{{/assets_js_path}}
  {{$meta}}
    <title>Order SHOWTIME Now</title>
    <meta property="og:title" content="Order SHOWTIME Now" />
    <meta name="description" content="Order SHOWTIME today for instant access to award-winning Original Series, hit movies, action-packed sports and more." />
    <meta property="og:description" content="Order SHOWTIME today for instant access to award-winning Original Series, hit movies, action-packed sports and more." />
    <meta name="page-tracking" content="sho:order:home" />
    <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
    <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
  {{/meta}}

  {{$nav}}{{/nav}}
  {{$content}}
  {{/content}}
      
  {{$entireShoLibrary}}{{/entireShoLibrary}}{{!--     null out this footer content --}}
  {{$storeBanner}}{{/storeBanner}}{{!--               null out this footer content --}}
  {{$jsFooter}}
    <style type="text/css">.footer {display: none} /* hide this footer content*/</style>
  {{/jsFooter}}

{{/ layouts/default}}
