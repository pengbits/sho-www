<!DOCTYPE html>
<html class="no-js" lang="en-US">
<head>
  {{> partials/_meta_static }}
  {{> partials/_meta_url }}

  {{$meta}}
    {{> partials/_meta_dynamic }}
  {{/meta}}

  {{> partials/_assets_head }}
  {{$jsHead}}
    {{! in case you have to inject some optimizely-style variation code in the head}}
  {{/jsHead}}
</head>
<body class="{{$classnames}}{{/classnames}}">

  {{#global.globalBanner}}
    {{> partials/_global_banner}}
  {{/global.globalBanner}}
  
  <div class="site-container">
    {{$nav}}
      {{> partials/_global_navigation }}
    {{/nav}}
    
    {{$content}}
      <!-- this content is supplied by overriding in calling context -->
    {{/content}}

    {{$entireShoLibrary}}
      {{#page.footerGroup.footer}}
        {{> partials/_entire_sho_library}}
      {{/page.footerGroup.footer}}
    {{/entireShoLibrary}}

    {{$storeBanner}}
      {{#page.footerGroup.store}}
        {{> partials/_store_banner}}
      {{/page.footerGroup.store}}
    {{/storeBanner}}

    {{$footer}}
      {{#page.footerGroup}}
        {{> partials/_footer }}
      {{/page.footerGroup}}
    {{/footer}}

    {{> partials/_assets_footer }}

    {{$jsFooter}}
      {{! in case you have to add some trivial js to the page }}
    {{/jsFooter}}
  </div>
</body>
</html>
