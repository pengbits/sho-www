{{!--
  # SHO Bulk Hotel App
--}}

{{< layouts/default }}
    {{$classnames}}bulk hotel-app{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>SHOWTIME HOTEL APP | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME HOTEL APP | SHOWTIME" />
        <meta name="description" content="Give your guests FREE instant access to the SHOWTIME HOTEL APP during their stay." />
        <meta property="og:description" content="Give your guests FREE instant access to the SHOWTIME HOTEL APP during their stay." />
        <meta name="page-tracking" content="sho:affiliate:b2b:bulk:hotel app" />
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

          <div class="hero hero--no-accent">
            {{> promotions/bulk/partials/hotel-app/_hero }}

            <section class="section--large">
              {{> promotions/bulk/partials/hotel-app/_contact }}

              {{> promotions/bulk/partials/hotel-app/_hotels }}
            </section>

            {{> promotions/bulk/partials/_features }}
          </div>
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
