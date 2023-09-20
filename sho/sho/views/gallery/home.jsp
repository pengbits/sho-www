{{!--
  # gallery home page
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>{{meta.name}} | SHOWTIME</title>
        <meta property="og:title" content="{{meta.name}} | SHOWTIME" />
        <meta name="description" content="{{meta.description}}" />
        <meta property="og:description" content="{{meta.description}}" />
        <meta name="page-tracking" content="sho:galleries:{{meta.name}}" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}
    {{$content}}
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "ImageGallery",
        "image": {
          "@type": "ImageObject",
          "image": [{{#page.tileGroup.imageViewList}}"{{imageUrl}}"{{#iter.hasNext}},{{/iter.hasNext}}
                    {{/page.tileGroup.imageViewList}}]
        }
      } 
      </script>
      {{#page}}
      {{#tileGroup}}
      <section class="section section--black gallery">
        <h1 class="section-header gallery__header">{{heading}}</h1>
        <div class="gallery__image-count">
          <p>{{itemCount}} Images</p>
        </div>
        <div class="gallery__inner" data-context="photo gallery">
          {{#imageViewList}}
          <a class="gallery__image" href="{{galleryUrl}}/{{iter.index}}" data-track data-label="view photo">
    				<figure>           
    					<img class="lazyloaded" alt="{{caption}}" {{#smallImageUrl}} src="{{smallImageUrl}}"  {{/smallImageUrl}} {{^smallImageUrl}} src="https://www.sho.com/assets/images/lib/blank.gif"  {{/smallImageUrl}}>
            </figure>
          </a>
          {{/imageViewList}}
        </div>
      </section>
      {{/tileGroup}}
      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}
      {{/page}}
    {{/content}}
{{/ layouts/default}}
