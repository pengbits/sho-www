  {{!-- 
    _body_content_alternate.jsp
    contains the body content for alternate order pages
    
    contents
    01. peek-a-boo-banner
    02. hero
    03. stream-showtime cta (provider-lead for showtime.com)
    04. product features list aka block-list (formerly provider-grid)
    05. device-logos 
    06. provider-psuedo-table 
    07. showtime programmung series, movies, sports promo groups
    08. red-banner [/IF]
    09. footer
    
    --}}
  {{#page}}
  {{#hero}}
  {{> /order/_peekaboo_banner }}
  <div class="hero-preamble">
    <a class="hero__logo-link" href="/" data-track data-context="global navigation" data-label="home">
      <img class="hero-preamble__logo" src="/www/sho/lib/assets/svg/showtime-logo-red.svg">
    </a>
  </div>
  <section
    class="refresh-hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}"
    data-context="hero">{{!-- swap this for global hero_inner partial when provider id etc is available --}}
    {{< /order/_hero_refresh_inner_pseudo_dynamic }}
      {{$hero_image}}<div 
        class="refresh-hero--megastrip" 
        style="height:0px; overflow:hidden">{{> /order/_hero_megastrip }}</div>
      {{/hero_image}}
    {{/ /order/_hero_refresh_inner_pseudo_dynamic }}
  </section>
  <span class="peek-a-boo--trigger"></span>
  {{/hero}}

  {{< /order/_provider_psuedo_table }}
    {{$className}}pseudo-table--alternate{{/className}}
    {{$logo_prefix}}/assets/images/order/tray/provider-logos/alternate/{{/logo_prefix}}
  {{/ /order/_provider_psuedo_table }}

  {{#seriesTileGroup}}
    {{> partials/_promo_group_slider_from_stack}}
  {{/seriesTileGroup}}
  
  {{#moviesTileGroup}}
    {{> partials/_promo_group_slider_from_stack}}
  {{/moviesTileGroup}}

  {{#sportsTileGroup}}
    {{> partials/_promo_group_slider_from_stack}}
  {{/sportsTileGroup}}
  {{/page}}

  {{< /order/_footer }}
    {{$bonus_footer}}<!-- remove big red banner from footer -->{{/bonus_footer}}
  {{/ /order/_footer}}