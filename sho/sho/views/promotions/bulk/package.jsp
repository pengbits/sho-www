{{!--
  # SHO Bulk Package Landing Page
--}}

{{< layouts/default }}
    {{$classnames}}bulk{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>SHOWTIME Bulk Package | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME Bulk Package | SHOWTIME" />
        <meta name="description" content="Give your viewers access to award-winning Original Series, Movies & more from SHOWTIME in the comfort of their room. Plus, take advantage of our property incentive!" />
        <meta property="og:description" content="Give your viewers access to award-winning Original Series, Movies & more from SHOWTIME in the comfort of their room. Plus, take advantage of our property incentive!" />
        <meta name="page-tracking" content="sho:affiliate:b2b:bulk:package" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="_csrf_token" content="{{_csrf.token}}"/>
        <meta name="_csrf_parameter" content="{{_csrf.parameterName}}"/>
      {{/page}}
    {{/meta}}

    {{$nav}}
      {{> promotions/bulk/partials/_notification }}      
      <nav class="section--inner">
        <a class="cta--prev cta--white back-link" data-track data-context="global navigation" data-label="main page" href="/bulk">Main Page</a>
      </nav>
    {{/nav}}

    {{$content}}

        {{#page}}
          <section class="hero hero--package">
            {{> promotions/bulk/partials/package/_hero }}
            
            {{> promotions/bulk/partials/package/_incentive }}

            {{> promotions/bulk/partials/_contact }}

            {{> promotions/bulk/partials/_download_resources }}

            {{> promotions/bulk/partials/_features }}
          </section>
        {{/page}}

    {{/content}}

    {{$entireShoLibrary}}
    {{/entireShoLibrary}}

    {{$storeBanner}}
    {{/storeBanner}}

    {{$footer}}
    	{{> promotions/bulk/partials/_footer }}
    {{/footer}}

{{/ layouts/default}}
