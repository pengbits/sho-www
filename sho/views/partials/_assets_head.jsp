{{!-- Optimizely --}}
<script src="https://cdn.optimizely.com/js/16939480261.js"></script>

{{!-- Fonts --}}
{{> partials/_fonts }}
{{#global.environment}}

  <!-- BEGIN onetrust/optanon for all environments [isLiveServer={{isLiveServer}}]-->
  {{#isTestServer}}
  <script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js" data-domain-script="26be3d9b-65cb-4c6e-a3f6-d0d1ee1f4ae2-test" type="text/javascript" charset="UTF-8"></script>
  {{/isTestServer}}
  {{#isLiveServer}}
  <script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js" data-domain-script="26be3d9b-65cb-4c6e-a3f6-d0d1ee1f4ae2"    type="text/javascript" charset="UTF-8" ></script>
  {{/isLiveServer}}
  <script type="text/javascript">!function(n){var o=window,a="cbsoptanon",c="cmd",d="config";o[a]=o[a]?o[a]:{},o[a][c]=o[a][c]?o[a][c]:[],o[a][d]=o[a][d]?o[a][d]:[],["onIframesReady","onFormsReady","onScriptsReady","onAdsReady"].forEach(function(n){o[a][n]=o[a][n]||function(){var d=arguments;o[a][c].push(function(){o[a][n].apply(o[a],d)})}})}();</script>
  <script src="//production-cmp.isgprivacy.cbsi.com/dist/optanon-v1.1.0.js" type="text/javascript" async></script>
  <!-- END onetrust/optanon -->

  {{!-- Adobe Experience Cloud ID Service --}}
  <script src="/www/sho/lib/omniture/VisitorAPI.js"></script>
  
  {{!-- New Relic --}}
  {{#isTestServer}}
  <script src="https://www.sho.com/assets/js/new-relic.qa.js"></script>
  {{/isTestServer}}
  {{#isLiveServer}}
  <script src="https://www.sho.com/assets/js/new-relic.prod.js"></script>
  {{/isLiveServer}}

  {{!-- favicon ---}}
  <link rel="apple-touch-icon" sizes="180x180" href="https://www.sho.com/assets/images/favicon/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="https://www.sho.com/assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="https://www.sho.com/assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="https://www.sho.com/assets/images/favicon/site.webmanifest">
  <link rel="mask-icon" href="https://www.sho.com/assets/images/favicon/safari-pinned-tab.svg" color="#5bbad5">
  <link rel="shortcut icon" href="https://www.sho.com/assets/images/favicon/favicon.ico">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="msapplication-config" content="https://www.sho.com/assets/images/favicon/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">
  
  {{!-- styles --}}
  <link rel="stylesheet" href="{{$assets_css_host}}{{/assets_css_host}}{{$assets_css_path}}/www/sho/dist/sho{{/assets_css_path}}{{#isMinifyAsset}}.min{{/isMinifyAsset}}.css?v={{version}}">

  {{#isTestServer}}

    {{!-- Omniture report suites: staging --}}
    <script>
      var omniture_rsid = "cbsshodev,cbsshoglobaldev";
    </script>

    {{!-- Adobe Launch: staging   --}}
    <script src="//assets.adobedtm.com/b5d94cfc1912/eed19d587c79/launch-929ce9282566-staging.min.js" async></script>

  {{/isTestServer}}
  {{#isLiveServer}}

    {{!-- Omniture report suites: production --}}
    <script>
      var omniture_rsid = "cbssho,cbsshoglobal";
    </script>

    {{!-- Adobe Launch: production --}}
    <script src="//assets.adobedtm.com/b5d94cfc1912/eed19d587c79/launch-502b002068e8.min.js" async></script>

  {{/isLiveServer}}
  {{#isEq project "showtime_local"}}<script src="http://localhost:35729/livereload.js"></script>{{/isEq}}
{{/global.environment}}

<!-- BEGIN sho overrides to onetrust's privacy policy overlay -->
<style type="text/css">
div#cps-shaman-notifier {background-color: #222226 !important; color: #FFFFFF !important;}
div#cps-shaman-notifier .cps-container .cps-content p,
div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn  {font-family: ff-din-web,Calibri,Arial,sans-serif !important;color: #FFFFFF !important;}
div#cps-shaman-notifier .cps-container .cps-content a {color: #FFFFFF !important;text-decoration: underline !important;}
</style>
<!-- END sho overrides -->
