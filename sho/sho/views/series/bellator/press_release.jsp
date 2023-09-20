{{< layouts/default }}
    {{$classnames}}press-release{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Bellator - Stream MMA fights on SHOWTIME</title>
        <meta property="og:title" content="Bellator - Stream MMA fights on SHOWTIME" />
        <meta name="description" content="Bellator is MMA's premier proving ground for top prospects, now on Showtime." />
        <meta property="og:description" content="Bellator is MMA's premier proving ground for top prospects, now on Showtime." />
        <meta name="page-tracking" content="sho:series:bellator:home" />
        <link rel="canonical" href="https://www.sho.com/bellator" />
        <meta property="og:url" content="https://www.sho.com/bellator" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}
    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@id": "https://www.sho.com/bellator",
          "@type": "TVSeries",
          "name": "Bellator",
          "sameAs": "https://www.metacritic.com/tv/bellator",
          "url": "https://www.sho.com/bellator",
          "releasedEvent": {
            "@type": "PublicationEvent",
            "location": {
              "@type": "Country",
              "name": "US"
            }
          }
        }
        </script>
        {{#page}}
        <!-- this content is supplied by overriding in calling context -->
        <section class="hero hero--no-description " data-context="hero">       
            <a class="hero__image lazyload" data-bgset="https://www.sho.com/assets/images/series/bellator/0_0_0_prm-bellatorinterim_568x426.jpg [--small] |  https://www.sho.com/assets/images/series/bellator/0_0_0_prm-bellatorinterim_1024x640.jpg">
            <picture style="display: none;"></picture></a>
            <div class="hero__inner">
              <div class="hero__body">
                <!--<div class="hero__top-line">New Series</div> -->       
                <div class="hero__top-line">New to Showtime</div>            
              <h1 class="hero__headline">BELLATOR MMA</h1>            
              <p class="hero__subtitle">Bellator MMA fights will be available to stream live on SHOWTIME</p>         
              </div>
            </div>
            <div class="hero__ctas" data-context="hero">
							<a class="button--stream button--fixed-width" href="/order?i_cid=int-bellator-21796" data-track data-label="order">
                <h5 class="button--stream__label">Start your showtime free trial</h5>
              </a>
              <a class="cta--item cta--video" href="/video/74566/bellator-mma-is-coming-to-showtime---april-2021" data-track data-label="trailer video:BELLATOR MMA IS COMING TO SHOWTIME">Watch a preview</a>
            </div>  
            <section class ="section section--inner">
                <p class="press-release__copy"><span class="highlight highlight--italic">Bellator MMA™</span> and <span class="highlight highlight--italic">SHOWTIME Sports®</span>, both leaders in the combat sports arena, have teamed up to bring world-class live mixed martial arts events back to the premium television service for years to come. <span class="highlight">Bellator MMA</span> and <span class="highlight">SHOWTIME Sports</span>, both owned by entertainment giant ViacomCBS, will air live events exclusively on <span class="highlight">SHOWTIME</span> on Friday nights and will launch with three consecutive weeks of championship fights beginning Friday, April 2 at 9PM ET/6PM PT, and continuing on Friday, April 9 and Friday, April 16.</p>
                <p class="press-release__copy">The three-week launch is comprised of highly anticipated match ups including the semi-finals of the Featherweight World Grand Prix and the opening rounds of the Light Heavyweight World Grand Prix tournament featuring eight <span class="highlight">Bellator MMA</span> stars from the deepest 205-pound division in the sport. Following the initial run of three live events, <span class="highlight">SHOWTIME</span> will televise up to two live <span class="highlight">Bellator MMA</span> events per month for the remainder of the year. All <span class="highlight">Bellator MMA</span> events, domestically and internationally, will be available on <span class="highlight">SHOWTIME</span> in the United States. Preliminary undercard matchups will stream live on <span class="highlight">Bellator MMA</span>’s YouTube channel, <span class="highlight">SHOWTIME Sports</span> YouTube channel and across online partner platforms.</p>
                <p class="press-release__copy"><span class="highlight">Bellator MMA</span> has positioned itself as a leader in the industry with the strongest roster of fighters in the history of the organization, which has been built through top free agent signings and the development of elite young prospects. The union with <span class="highlight">SHOWTIME Sports</span> will take both established brands to the next level, as <span class="highlight">SHOWTIME</span> doubles its live combat sports offering for subscribers, while giving Bellator’s premier athletes an opportunity to showcase their topnotch talent to a new audience on a new platform.</p>
                <p class="press-release__copy"><span class="highlight">SHOWTIME</span>, the standard bearer for live world championship boxing coverage, will televise <span class="highlight">Bellator MMA</span> events live on both coasts throughout the U.S. The network televised its first boxing event in 1986 and for 35 years has been a leader in producing high-quality combat sports events and shoulder programming. <span class="highlight">SHOWTIME</span> consistently presents the biggest names in the most compelling matchups in boxing via three flagship properties - <span class="highlight highlight--italic">SHOWTIME PPV®</span>, <span class="highlight highlight--italic">SHOWTIME CHAMPIONSHIP BOXING®</span> and <span class="highlight highlight--italic">ShoBox: The New Generation</span> – which presents boxers at every level of their development from prospect to pay-per-view superstar.</p>
            </section>
        </section>
        {{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}} 
    {{/page}}
    {{/content}}
  {{/ layouts/default}}
  