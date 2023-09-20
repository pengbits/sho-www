<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@id": "{{global.canonicalUrl}}",
  "@type": "TVSeries",
  "name": "{{page.meta.titleTracking}}",
  "sameAs": "{{page.meta.valueMap.sameAsLink}}",
  "url": "{{global.canonicalUrl}}",
  "releasedEvent": {
    "@type": "PublicationEvent",
    "location": {
      "@type": "Country",
      "name": "US"
    }
  },

  "actor": [
    {{#page.talentNavigation.tileList}}
  		{
        "@type": "PerformanceRole",
        "actor": {
          "@type": "Person",
          "name": "{{subTitle}}"
        },
        "characterName": "{{title}}"
  		}{{#iter.hasNext}},{{/iter.hasNext}}
    {{/page.talentNavigation.tileList}}
  ]
  {{#page.waysToWatch.streaming.startDate}}
  ,
  "potentialAction": {
    "@type": "ViewAction",
    "target": [
      {
        "url": "http://www.showtime.com/#/series/{{page.meta.series.id}}?s_cid=goog-default-1001",
        "actionPlatform": "http://schema.org/DesktopWebPlatform",
        "inLanguage": "en"
      },
      {
        "url": "http://www.showtime.com/#/series/{{page.meta.series.id}}?s_cid=goog-default-1001",
        "actionPlatform": "http://schema.org/MobileWebPlatform",
        "inLanguage": "en"
      },
      {
        "url": "http://www.showtime.com/#/series/{{page.meta.series.id}}?s_cid=goog-default-1001",
        "actionPlatform": "http://schema.org/IOSPlatform",
        "inLanguage": "en"
      },
      {
        "url": "android-app://com.showtime.standalone/http/www.showtime.com/PAGE/s{{page.meta.series.id}}",
        "actionPlatform": "http://schema.org/AndroidPlatform",
        "inLanguage": "en"
      }
    ]
    ,
    "expectsAcceptanceOf": {
      "@type": "Offer",
      "availabilityStarts": "{{page.waysToWatch.streaming.startDate}}",
      "availabilityEnds": "{{page.waysToWatch.streaming.endDate}}",
      "category": "subscription",
      "eligibleRegion": {
        "@type": "Country",
        "name": "US"
      }
    }
  }
  {{/page.waysToWatch.streaming.startDate}}
}
</script>

<script type="application/ld+json">
{
  "@context":"https://schema.org",
  "@type":"BreadcrumbList",
  "itemListElement":[
  {
    "@type":"ListItem",
    "position":1,
    "item":
    {
      "@id": "https://www.sho.com/",
      "name": "Showtime"
    }
  },
  {
    "@type":"ListItem",
    "position":2,
    "item":
    {
      "@id": "{{global.canonicalUrl}}",
      "name": "{{page.meta.titleTracking}}"
    }
  }
  ]
}
</script>
