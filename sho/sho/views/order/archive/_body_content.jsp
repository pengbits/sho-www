  {{!-- 
    _body_content.jsp
    contains the body content for both stream-showtime and order-showtime pages
    
    contents
    01. peek-a-boo-banner
    02. hero-megastrip
    03. stream-showtime cta (provider-lead for showtime.com)
    04. product features list aka block-list (formerly provider-grid)
    05. [IF /order-showtime or /order] device-logos [/IF]
    06. [IF /order-showtime or /order] provider-psuedo-table [/IF]
    07. video-player
    08. showtime catalog-grid
    09. [IF NOT /order-showtime or /order] device-logos [/IF]
    10. [IF NOT /order-showtime or /order] red-banner [/IF]
    11. footer
    
    --}}
    {{> /order/_peekaboo_banner }}
    {{$hero_partial}}
      {{#page.hero}}
        {{#imageUrl}}
          {{> order/_hero_themed }}
        {{/imageUrl}}
        {{^imageUrl}}
          {{> order/_hero_megastrip }}
        {{/imageUrl}}
      {{/page.hero}} 
    {{/hero_partial}}

    <div class="stream-showtime__hero__cta stream-showtime__cta {{#page.hero.imageUrl}}stream-showtime__cta--hero-themed{{/page.hero.imageUrl}}">
      <a target="_blank" rel="noopener noreferrer"  
        href="{{$cta_url}}{{page.hero.ctaLink}}{{/cta_url}}" data-track data-context="hero" data-label="provider lead" data-provider-id="114"
        class="stream-showtime__hero__cta-button stream-showtime__cta-button peek-a-boo--trigger">{{$hero_cta}}{{page.hero.ctaLabel}}{{/hero_cta}}</a>
    </div>
    
    {{$hero_extra_copy}}{{/hero_extra_copy}}
  
  {{> /order/_features_list }}

  {{!-- IF order or order-showtime --}}
  {{$device_logos_header}}<!-- device_logos_head -->{{/device_logos_header}}
  {{$providers_header}}<!-- providers_header -->{{/providers_header}}
  {{!-- END IF --}}

  {{#page}}{{#videoPlayerView}}
  <section class="stream-showtime__video-section section--inner">
    {{> order/_video_player }}
    <h4 class="stream-showtime__video-section__header">{{$video_sub_copy}}{{page.videoPlayerView.description}}{{/video_sub_copy}}</h4>
  </section>
  {{/videoPlayerView}}{{/page}}

  {{$catalog_partial}}
    {{> /order/_catalog  }}
  {{/catalog_partial}}
  
  {{> /order/_footer }}