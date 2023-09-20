<script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "TVEpisode",
    "name": "{{page.meta.series.displayTitle}} Season {{page.meta.episode.seasonNumber}}, Episode {{page.meta.episode.number}}: {{page.meta.episode.displayTitle}}",
    "url": "{{global.canonicalUrl}}",
    "episodeNumber": {{page.meta.episode.number}},
    "partOfSeason": {
      "@type": "TVSeason",
      "seasonNumber": {{page.meta.episode.seasonNumber}}
    },
    "partOfSeries": {
      "@type": "TVSeries",
      "name": "{{page.meta.series.displayTitle}}"{{#page.meta.valueMap.sameAsLink}},
      "sameAs": "{{page.meta.valueMap.sameAsLink}}"
      {{/page.meta.valueMap.sameAsLink}}
    },
    "releasedEvent": {
      "@type": "PublicationEvent",
      "startDate": "{{page.meta.episode.originalAirTime}}",
      "location": {
        "@type": "Country",
        "name": "US"
      }
    },
    {{#page.titleCtaView.streamCta}}
    "potentialAction": 
      {
        "@type": "WatchAction",
        "target": [
          {
            "url": "https://www.showtime.com/#/episode/{{page.meta.episode.id}}?s_cid=goog-default-1000",
            "actionPlatform": "http://schema.org/DesktopWebPlatform",
            "inLanguage": "en"
          },
          {
            "url": "https://www.showtime.com/#/episode/{{page.meta.episode.id}}?s_cid=goog-default-1000",
            "actionPlatform": "http://schema.org/MobileWebPlatform",
            "inLanguage": "en"
          },
          {
            "url": "https://www.showtime.com/#/episode/{{page.meta.episode.id}}?s_cid=goog-default-1000",
            "actionPlatform": "http://schema.org/IOSPlatform",
            "inLanguage": "en"
          },
          {
            "url": "android-app://com.showtime.standalone/http/www.showtime.com/PAGE/t{{page.meta.episode.id}}",
            "actionPlatform": "http://schema.org/AndroidPlatform",
            "inLanguage": "en"
          }
          ],
        "expectsAcceptanceOf": {
          "@type": "Offer",
          "category": "subscription",
          "name": "Showtime",
          "availabilityStarts": "{{page.meta.streamingSchedule.startDate}}",
          "availabilityEnds": "{{page.meta.streamingSchedule.endDate}}",
          "eligibleRegion": {
            "@type": "Country",
            "name": "US"
          }
        }
      },
    {{/page.titleCtaView.streamCta}}
    "image": {
      "@type": "ImageObject",
      "height": 1280,
      "width": 640,
      "url": "{{page.meta.valueMap.ogImageUrl}}"
    },
    "description": "{{page.meta.episode.shortDescription}}",
    "actor": [{{#page.castInfo.actors}}
      {
        "@type": "PerformanceRole",
        "actor": {
          "@type": "Person",
          "name": "{{talentName}}"
        },
        "characterName": "{{characterName}}"
      }{{^iter.isLast}},{{/iter.isLast}}
    {{/page.castInfo.actors}}
    {{#page.castInfo.guestStars.0}},{{/page.castInfo.guestStars.0}}
    {{#page.castInfo.guestStars}}
      {
        "@type": "PerformanceRole",
        "actor": {
          "@type": "Person",
          "name": "{{talentName}}"
        },
        "characterName": "{{characterName}}"
      }{{^iter.isLast}},{{/iter.isLast}}
    {{/page.castInfo.guestStars}}
    ],
    "director": [{{#page.castInfo.directors}}
      {{^iter.isLast}}
      {
        "@type": "Person",
        "name": "{{talentName}}"
      },
      {{/iter.isLast}}
      {{#iter.isLast}}
      {
        "@type": "Person",
        "name": "{{talentName}}"
      }{{/iter.isLast}}{{/page.castInfo.directors}}],
    "mainEntityOfPage": {
      "@type":"WebPage",
      "@id": "{{global.canonicalUrl}}",
      "breadcrumb": {
        "@type": "BreadcrumbList",
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
            "@id": "https://www.sho.com{{page.meta.series.baseUrl}}",
            "name": "{{page.meta.titleTracking}}"
          }
        },
        {
          "@type":"ListItem",
          "position":3,
          "item":
          {
            "@id": "https://www.sho.com{{page.meta.series.baseUrl}}/season/{{page.meta.episode.seasonNumber}}",
            "name": "{{page.meta.titleTracking}} Season {{page.meta.episode.seasonNumber}}"
          }
        },
        {
          "@type":"ListItem",
          "position":4,
          "item":
          {
            "@id": "{{global.canonicalUrl}}",
            "name": "{{page.meta.titleTracking}}{{#page.meta.episode}} Season {{seasonNumber}} Episode {{number}}{{/page.meta.episode}}"
          }
        }
        ]
      }
    }
  }
  </script>