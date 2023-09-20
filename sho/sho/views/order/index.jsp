{{!-- 
  alternate order page 
  /order-alernate
  a placeholder jsp which can be used for a/b testing a completely different version of the order page. Previously this housed the default (white look) order page at `/order`
  there was also a totally seprate js/css build in place to support the old order page, and in fact that's what's used for the wydham21 aka bulk page. 
  it's unlikely that we'll need it for this order context, but if so, just restore the partial configuration below:
  --}}
{{< layouts/default }}
  {{--
    [[classnames]]stream-showtime stream-showtime--organic[[/classnames]]
    [[assets_css_path]]/www/sho/dist/stream-showtime[[/assets_css_path]]
    [[assets_js_path]]/www/sho/dist/stream-showtime[[/assets_js_path]]
  --}}
    {{$meta}}
      {{#page}}
        <title>Order SHOWTIME Now</title>
        <meta property="og:title" content="Order SHOWTIME Now" />
        <meta name="description" content="Order SHOWTIME today for instant access to award-winning Original Series, hit movies, action-packed sports and more." />
        <meta property="og:description" content="Order SHOWTIME today for instant access to award-winning Original Series, hit movies, action-packed sports and more." />
        <meta name="page-tracking" content="sho:order:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$nav}}{{/nav}}
    {{$content}}
      <!-- hello there -->
    {{/content}}
    {{/ layouts/default}}
    
