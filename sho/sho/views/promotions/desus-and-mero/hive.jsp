{{!-- 
  /hive
  an alternate, promotional order landing page for fans of desus and mero
  (content jsps at /sho/views/order/desus-and-mero)
--}}  
{{< layouts/default }}
  {{$classnames}}stream-showtime the-hive{{/classnames}}
  
  {{$assets_css_path}}/www/sho/stylesheets/stream_showtime{{/assets_css_path}}
  {{$assets_js_path }}/www/sho/javascripts/stream_showtime{{/assets_js_path}}

  {{$meta}}
    <title>Desus and Mero on SHOWTIME | Secure the Subscription</title>
    <meta property="og:title" content="Desus and Mero on SHOWTIME | Secure the Subscription" />
    <meta name="description" content="Try SHOWTIME free for 7 days, then just $10.99/month. Cancel anytime." />
    <meta property="og:description" content="Try SHOWTIME free for 7 days, then just $10.99/month. Cancel anytime." />
    <meta name="page-tracking" content="sho:order:dtc landing page:desus & mero" />
    <meta property="og:image" content="https://www.sho.com/site/image-bin/images/1034411_0_0/1034411_0_0_97_1280x640.jpg" />
    <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/1034411_0_0/1034411_0_0_97_1280x640.jpg" />
  {{/meta}}

  {{$nav}}{{/nav}}{{!-- null out the primary navigation --}}

  {{$content}}
    {{> /order/desus_and_mero/_body_content }}
  {{/content}}
    

{{/ layouts/default}}
