{{< layouts/default }}
    {{$classnames}}press-release the-trade--resources{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>The Trade - Resources | SHOWTIME</title>
        <meta property="og:title" content="The Trade - Resources | SHOWTIME" />
        <meta name="description" content="If you are in need of help or want to help victims of human trafficking, please refer to this page for a list of resources." />
        <meta property="og:description" content="If you are in need of help or want to help victims of human trafficking, please refer to this page for a list of resources." />
        <meta name="page-tracking" content="sho:series:the trade:resources" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/1034118_0_0/1034118_0_0_00h_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/1034118_0_0/1034118_0_0_00h_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}
    {{#page}}
      <!-- this content is supplied by overriding in calling context -->
      <section class="hero hero--no-description " data-context="hero">
        <div class="hero__inner--short">
          <div class="hero__body">
            <h1 class="hero__headline">RESOURCES</h1>
            <p class="hero__subtitle">If you are in need of help or want to help victims of human trafficking, listed below are some resources.</p>
          </div>
        </div>    
        <section class ="section section--inner">
            <p class="resources__copy"><a href="https://polarisproject.org/" target="_blank" rel="noopener noreferrer">Polaris</a></p>
            <p class="resources__copy"><a href="https://www.ecpatusa.org/" target="_blank" rel="noopener noreferrer">Ecpat-USA</a></p>
            <p class="resources__copy"><a href="https://sanctuaryforfamilies.org/" target="_blank" rel="noopener noreferrer">Sanctuary for Families</a></p>
            <p class="resources__copy"><a href="https://catwinternational.org/" target="_blank" rel="noopener noreferrer">Coalition Against Trafficking in Women</a></p>
            <p class="resources__copy"><a href="https://sharedhope.org/" target="_blank" rel="noopener noreferrer">Shared Hope International</a></p>
            <p class="resources__copy"><a href="http://www.bsccoalition.org/" target="_blank" rel="noopener noreferrer">Bilateral Safety Corridor Coalition</a></p>
        </section>
      </section>
      {{#meta.valueMap}}
        {{> series/partials/_series_legal}}
      {{/meta.valueMap}}
      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}} 
    {{/page}}
  {{/content}}
{{/ layouts/default}}