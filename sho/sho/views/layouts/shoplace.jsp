<!DOCTYPE html>

<html class="no-js" lang="en-US">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="SHO.com" />
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:site" content="@Showtime" />
  <meta property="fb:app_id" content="132432090187" />
  <meta property="fb:admins" content="1466768414" />
  <meta property="og:image:width" content="1280">
  <meta property="og:image:height" content="640">
  <meta name="msvalidate.01" content="E7A9EF79C2B634AA3CA5341552C584D5" />
  <meta property="og:url" content="https://www.sho.com/shoplace/{{#global}}{{#slug}}{{#isNotEq 'showtime'}}{{global.slug}}/{{/isNotEq}}{{/slug}}{{/global}}{{$pageurl}}{{/pageurl}}" />
  <link rel="canonical" href="https://www.sho.com/shoplace/{{#global}}{{#slug}}{{#isNotEq 'showtime'}}{{global.slug}}/{{/isNotEq}}{{/slug}}{{/global}}{{$pageurl}}{{/pageurl}}" />
  <title>SHOPlace - {{$pagename}}{{/pagename}} {{#global}}| {{partner}}{{/global}}</title>
  <meta property="og:title" content="SHOPlace - {{$pagename}}{{/pagename}} {{#global}}| {{partner}}{{/global}}" />
	<meta name="page-tracking" content="shoplace:{{#global}}{{slug}}{{/global}}:{{$pagename}}{{/pagename}}" />


  <script>
    window.BC_PLAYER = '63128/NzCF8EByd'
  </script>
  <!-- Google Tag Manager -->
  <script type="text/plain" class="optanon-category-2">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-5QD22SS');</script>
  <!-- End Google Tag Manager -->

  {{< partials/_assets_head }}
    {{!-- uncomment this (and change to curly braces) to undo freezing of shoplace styles and restore webpack setup: [[$assets_css_host]][[/assets_css_host]][[$assets_css_path]]/www/sho/dist/shoplace[[/assets_css_path]] --}}
    {{$assets_css_host}}https://www.sho.com{{/assets_css_host}}{{$assets_css_path}}/assets/special-markets/shoplace/shoplace.7.269.0{{/assets_css_path}}
  {{/ partials/_assets_head }}

</head>

<body class="shoplace {{$classnames}}{{/classnames}}">

{{#data}}
<div class="primary-nav-container">
  {{#global.partner}}
    {{$nav-contents}}
      {{> promotions/special-markets/shoplace/_header_nav }}
    {{/nav-contents}}
    <header class="masthead">
      <div class="row">   
        <div class="masthead__inner">
          {{$header}}
            <h2 class="masthead__title">
              {{{headline}}}
            </h2>
            <h3 class="masthead__copy">
              {{{subHeadline}}}
            </h3>
          {{/header}}
        </div>
      </div>
    </header> 
    {{/global.partner}}
  </div>
  <div class="container__outer">
    {{$content}}{{/content}}
  </div>
  <div class="container">
    {{$footer-contents}}
      {{> promotions/special-markets/shoplace/_footer_nav }}
    {{/footer-contents}}
  </div>
  {{/data}}
  
  {{< partials/_assets_footer }}
    {{!-- uncomment this (and change to curly braces) to undo freezing of shoplace js and restore webpack setup: [[$assets_js_host]][[/assets_js_host]][[$assets_js_path]]/www/sho/dist/shoplace[[/assets_js_path]] --}}
    {{$assets_js_host}}https://www.sho.com{{/assets_js_host}}{{$assets_js_path}}/assets/special-markets/shoplace/shoplace.7.269.0{{/assets_js_path}}
    {{$brightcove_js}}{{/brightcove_js}}{{!-- brightcove js paths are set on a page by page basis --}}
    {{$search_action}}{{/search_action}}
  {{/ partials/_assets_footer }}
</div>
</body>
</html>
