{{!--
  # SHO Bulk Landing Page
--}}

{{< layouts/default }}
    {{$classnames}}bulk{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Order in Bulk | SHOWTIME</title>
        <meta property="og:title" content="Order in Bulk | SHOWTIME" />
        <meta name="description" content="Order SHOWTIME in bulk and get the best in premium Original Series, Movies and more for your property." />
        <meta property="og:description" content="Order SHOWTIME in bulk and get the best in premium Original Series, Movies and more for your property." />
        <meta name="page-tracking" content="sho:affiliate:b2b:bulk:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="_csrf_token" content="{{_csrf.token}}"/>
        <meta name="_csrf_parameter" content="{{_csrf.parameterName}}"/>
        {{/page}}
    {{/meta}}
   
    {{$nav}}
       {{> promotions/bulk/partials/_notification }}    
    {{/nav}}

    {{$content}}

        {{#page}}
          <section class="hero hero--chunky hero--megastrip">           
            {{> promotions/bulk/partials/home/_hero }}            
          </section>
          <section class="section">  
            {{> promotions/bulk/partials/home/_ways_to_watch }}
            
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
