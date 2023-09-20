{{!--
    # sports all podcasts
  --}}
  
  {{< layouts/default }}
    {{$classnames}}sports-all-podcasts{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>SHOWTIME Sports: Podcasts | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME Sports: Podcasts | SHOWTIME" />
        <meta name="description" content="SHOWTIME is the place for hard-hitting, insightful and fun podcasts about your favorite sports. Get all the latest news, gossip and controversy from the worlds of boxing, basketball, MMA and more from hosts who are top experts in their fields." />
        <meta property="og:description" content="SHOWTIME is the place for hard-hitting, insightful and fun podcasts about your favorite sports. Get all the latest news, gossip and controversy from the worlds of boxing, basketball, MMA and more from hosts who are top experts in their fields." />
        <meta name="page-tracking" content="sho:sports:podcasts" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
      {{/page}}
    {{/meta}}
    {{$content}}
      {{#page}}
    
        {{#primaryHero}}
          <section class="hero {{#primaryHero.panelLink}}hero--panel-link{{/primaryHero.panelLink}}" data-context="hero">
          {{> partials/hero/_hero_inner}}
        {{/primaryHero}}

        {{#allPodcastsTileGroupView}}
          {{> sports/_podcasts_library}}
        {{/allPodcastsTileGroupView}}

    {{/page}}
  {{/content}}
{{/ layouts/default}}