{{< layouts/default }}
    {{$classnames}}press-release{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>The End - Resources | SHOWTIME</title>
        <meta property="og:title" content="The End - Resources | SHOWTIME" />
        <meta name="description" content="If you are in need of help or want to help, talk to someone from the resources listed below." />
        <meta property="og:description" content="If you are in need of help or want to help, talk to someone from the resources listed below." />
        <meta name="page-tracking" content="sho:series:the end:resources" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}

    {{$content}}
    {{#page}}
      <!-- this content is supplied by overriding in calling context -->
      <section class="hero hero--no-description " data-context="hero">
        <div class="hero__inner--short">
          <div class="hero__body">
            <h1 class="hero__headline">RESOURCES</h1>
            <p class="hero__subtitle">If you are in need of help or want to help, please reach out to the resources listed below.</p>
          </div>
        </div>    
        <section class ="section section--inner">
            <p class="resources__copy"><a href="https://www.crisistextline.org/" target="_blank" rel="noopener noreferrer">Crisis Textline</a></p>
            <p class="resources__copy"><a href="https://www.nami.org/" target="_blank" rel="noopener noreferrer">National Alliance on Mental Illness</a></p>
            <p class="resources__copy"><a href="https://suicidepreventionlifeline.org/" target="_blank" rel="noopener noreferrer">National Suicide Prevention Lifeline</a></p>
            <p class="resources__copy"><a href="https://www.nimh.nih.gov/index.shtml" target="_blank" rel="noopener noreferrer">National Institute of Mental Health</a></p>
            <p class="resources__copy"><a href="https://www.1800runaway.org/" target="_blank" rel="noopener noreferrer">National Runaway Safeline</a></p>
            <p class="resources__copy"><a href="https://www.translifeline.org/" target="_blank" rel="noopener noreferrer">Trans Lifeline</a></p>
            <p class="resources__copy"><a href="https://www.thetrevorproject.org/" target="_blank" rel="noopener noreferrer">The Trevor Project</a></p>
            <p class="resources__copy"><a href="https://itgetsbetter.org/" target="_blank" rel="noopener noreferrer">It Gets Better Project</a></p>
            <p class="resources__copy"><a href="http://www.transgenderlegal.org/" target="_blank" rel="noopener noreferrer">Transgender Legal Defense & Education Fund</a></p>
            <p class="resources__copy"><a href="https://pflag.org/" target="_blank" rel="noopener noreferrer">PFLAG National</a></p>
            <p class="resources__copy"><a href="https://drugfree.org/" target="_blank" rel="noopener noreferrer">Partnership to End Addiction </a></p>
            <p class="resources__copy"><a href="https://www.shatterproof.org/" target="_blank" rel="noopener noreferrer">Shatterproof </a></p>
            <p class="resources__copy"><a href="https://www.findtreatment.gov" target="_blank" rel="noopener noreferrer">SAMHSA (Substance Abuse and Mental Health Services Administration) </a></p>      
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