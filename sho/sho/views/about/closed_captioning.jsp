{{!--
  # about showtime closed-captioning
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid about-legal legal-closed-captioning{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>Closed Captioning | SHOWTIME	</title>
      <meta property="og:title" content="Closed Captioning | SHOWTIME" />
      <meta name="description" content="Closed captions are available on all full-length programs on SHO.com. " />
      <meta property="og:description" content="Closed captions are available on all full-length programs on SHO.com." />
      <meta name="page-tracking" content="sho:about:closed captioning" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$nav}}
    {{< partials/_global_navigation }}
      {{$secondaryNav}}
        {{> about/partials/_legal_secondary_nav}}
      {{/secondaryNav}}
    {{/partials/_global_navigation }}
  {{/nav}}

  {{$content}}
    {{#page}}
        <section class="section section--black section--large legal">

        <p class="legal__body">Closed captions are available on all full-length programs on SHO.com. After a program has been selected and started, to turn captions on or off just toggle the <strong>[CC]</strong> button that will appear in the bottom right of the video screen.</p>
        <p class="legal__body">If you'd like to make a written comment or complaint about closed captions, please contact:</p>
        <p class="legal__body">Mark Turits<br>
          Vice President, Captioning and Video Description<br>
          CBS Television Network
        </p>
        <p class="legal__body">E: <a class="legal__body__link" href="mailto:captioning@showtime.net">captioning@showtime.net</a><br>
          P: 212-708-3205<br>
          F: 212-881-9005
        </p>
        <p class="legal__body">555 West 57th Street<br>
          New York, NY 10019<br>
          Att: Mail Stop 555/1327 (SNI)
          </p>
        <p class="legal__body"><a class="legal__body__link" href="https://www.sho.com/assets/pdf/about/certification.pdf">Closed Captions Quality Certification</a></p>

        </section>


          {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}
    {{/page}}
  {{/content}}
{{/ layouts/default}}
