{{!-- 
  order page 
  /order
  the default promotional order landing page on sho.com 
  TODO rename to home.jsp or index.jsp (was alternate but now is the primary order page experience)
--}}
{{< layouts/default }}

  {{$classnames}}stream-showtime stream-showtime--organic stream-showtime--alternate {{/classnames}}
  
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
      {{> /order/_body_content }}
    {{/content}}
    {{$jsFooter}}

    <script type="text/javascript">
    var tvEl = document.querySelector('[data-provider-id="126"]'); 
    if(tvEl) {
      tvEl.setAttribute('href', '#/tvproviders/open') // value set in phil is absolute, not useful here
      tvEl.setAttribute('target', '_parent')
    }
    </script>
    {{/jsFooter}}

{{/ layouts/default}}

