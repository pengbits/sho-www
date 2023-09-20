<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@id": "{{global.canonicalUrl}}",
  "@type": "Movie",
  "name": "{{page.meta.titleTracking}}",
  "url": "{{global.canonicalUrl}}",
  "description": "{{page.titleView.titleHero.description}}",
  "releasedEvent": {
    "@type": "PublicationEvent",
    "startDate": "{{page.titleView.releaseYear}}",
    "location": {
      "@type": "Country",
      "name": "US"
    }
  },
	"potentialAction": {
    "@type": "WatchAction",
    "target": [
      {
        "url": "https://www.showtime.com/#/movie/{{page.titleView.titleId}}?s_cid=goog-default-1002",
        "actionPlatform": "http://schema.org/DesktopWebPlatform",
        "inLanguage": "en"
      },
      {
        "url": "https://www.showtime.com/#/movie/{{page.titleView.titleId}}?s_cid=goog-default-1002",
        "actionPlatform": "http://schema.org/MobileWebPlatform",
        "inLanguage": "en"
      },
      {
        "url": "https://www.showtime.com/#/movie/{{page.titleView.titleId}}?s_cid=goog-default-1002",
        "actionPlatform": "http://schema.org/IOSPlatform",
        "inLanguage": "en"
      },
      {
        "url": "android-app://com.showtime.standalone/http/www.showtime.com/PAGE/t{{page.titleView.titleId}}",
        "actionPlatform": "http://schema.org/AndroidPlatform",
        "inLanguage": "en"
      }
    ],
    "expectsAcceptanceOf": {
      "@type": "Offer",
      "availabilityStarts": "{{page.waysToWatch.streaming.startDate}}",
      "availabilityEnds": "{{page.waysToWatch.streaming.endDate}}",
      "category": "subscription",
      "name": "Showtime",
      "seller": {
        "@type": "Organization",
        "name": "Showtime",
        "sameAs": "https://www.showtime.com/"
      },
      "eligibleRegion": {
        "@type": "Country",
        "name": "US"
      }
    }
  },
  "image": {
    "@type": "ImageObject",
    "url": "{{page.titleView.titleHero.imageUrl}}"
  }
  {{#page.castInfo}}
    {{#actors.0}}
    ,
      "actor": [
        {{#actors}}
      		{
      			"@type": "PerformanceRole",
      			"actor": {
              "@type": "Person",
              "name": "{{talentName}}"
            },
            "characterName": "{{characterName}}"
      		}{{#iter.hasNext}},{{/iter.hasNext}}
        {{/actors}}
      ]
    {{/actors.0}}
    {{#directors.0}}
    ,
    	"director": [
        {{#directors}}
      		{
      			"@type": "Person",
      			"name": "{{talentName}}"
      		}{{#iter.hasNext}},{{/iter.hasNext}}
        {{/directors}}
      ]
    {{/directors.0}}

  {{/page.castInfo}}
}
</script>
