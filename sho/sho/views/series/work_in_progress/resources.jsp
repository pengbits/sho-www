{{< layouts/default }}
    {{$classnames}}press-release{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Work in Progress - Resources | SHOWTIME</title>
        <meta property="og:title" content="Work in Progress - Resources | SHOWTIME" />
        <meta name="description" content="If you are in need of help or want to help, talk to someone from the resources listed below." />
        <meta property="og:description" content="If you are in need of help or want to help, talk to someone from the resources listed below." />
        <meta name="page-tracking" content="sho:series:work in progress:resources" />
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
            <p class="resources__copy"><span class="highlight">National Resources:</span></p>
            <p class="resources__copy"><a href="https://www.translifeline.org/" target="_blank" rel="noopener noreferrer">Trans Lifeline</a></p>
            <p class="resources__copy"><a href="https://www.thetrevorproject.org/" target="_blank" rel="noopener noreferrer">The Trevor Project</a></p>
            <p class="resources__copy"><a href="https://suicidepreventionlifeline.org/" target="_blank" rel="noopener noreferrer">National Suicide Prevention Lifeline</a></p>
            <p class="resources__copy"><a href="http://www.transgenderlegal.org/" target="_blank" rel="noopener noreferrer">Transgender Legal Defense & Education Fund</a></p>
            <p class="resources__copy"><a href="https://pflag.org/" target="_blank" rel="noopener noreferrer">PFLAG National</a></p>

            <p class="resources__copy--title resources__copy"><span class="highlight">Local Resources:</span></p>
            <p class="resources__copy"><a href="https://www.ilsafeschools.org/" target="_blank" rel="noopener noreferrer">Illinois Safe Schools</a></p>
            <p class="resources__copy"><a href="http://tjlp.org/" target="_blank" rel="noopener noreferrer">Transformative Justice Law Project of Illinois</a></p>
            <p class="resources__copy"><a href="https://howardbrown.org/" target="_blank" rel="noopener noreferrer">Howard Brown Health</a></p>
            <p class="resources__copy"><a href="https://www.bravespacealliance.org/" target="_blank" rel="noopener noreferrer">Brave Space Alliance</a></p>
            <p class="resources__copy"><a href="https://chicagobond.org/" target="_blank" rel="noopener noreferrer">Chicago Community Bond Fund</a></p>
             
            <p class="resources__copy--title resources__copy"><span class="highlight">Additional Resources:</span></p>
            <p class="resources__copy"><a href="https://itgetsbetter.org/" target="_blank" rel="noopener noreferrer">It Gets Better Project</a></p>
            <p class="resources__copy"><a href="https://www.1800runaway.org/" target="_blank" rel="noopener noreferrer">National Runaway Safeline</a></p>
            <p class="resources__copy"><a href="https://transequality.org/" target="_blank" rel="noopener noreferrer">National Center for Transgender Equality</a></p>
            <p class="resources__copy"><a href="https://www.lambdalegal.org/" target="_blank" rel="noopener noreferrer">Lambda Legal</a></p>
            <p class="resources__copy"><a href="https://srlp.org/" target="_blank" rel="noopener noreferrer">Sylvia Rivera Law Project</a></p>
            <p class="resources__copy"><a href="https://transgenderlawcenter.org/" target="_blank" rel="noopener noreferrer">Transgender Law Center</a></p>
            <p class="resources__copy"><a href="https://www.nami.org/" target="_blank" rel="noopener noreferrer">National Alliance on Mental Illness</a></p>
            <p class="resources__copy"><a href="https://www.nimh.nih.gov/index.shtml" target="_blank" rel="noopener noreferrer">National Institute of Mental Health</a></p>
            <p class="resources__copy"><a href="https://www.crisistextline.org/" target="_blank" rel="noopener noreferrer">Crisis Textline</a></p>
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