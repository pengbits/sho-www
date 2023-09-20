<script type="application/ld+json">
{
	"@context": "https://schema.org",
	"@id": "{{global.canonicalUrl}}",
	"@type": "TVSeason",
	"url": "{{global.canonicalUrl}}",
	"releasedEvent": {
		"@type": "PublicationEvent",
		"startDate": "{{page.meta.startDate}}",
		"location": {
			"@type": "Country",
			"name": "US"
		}
	},
	"seasonNumber": "{{page.meta.threePartKey.seasonNumber}}",
	"partOfSeries": {
		"@type": "TVSeries",
		"name": "{{page.meta.series.displayTitle}}"{{#page.meta.valueMap.sameAsLink}},
		"sameAs": "{{page.meta.valueMap.sameAsLink}},"
		{{/page.meta.valueMap.sameAsLink}},
		"url": "https://www.sho.com{{page.meta.series.baseUrl}}"
	},


	"potentialAction": 
		{
			"@type": "WatchAction",
			"target": [
				{
				  "url": "https://www.showtime.com/#/episode/{{page.meta.episodeId}}?s_cid=goog-default-1000",
				  "actionPlatform": "http://schema.org/DesktopWebPlatform",
				  "inLanguage": "en"
				},
				{
				  "url": "https://www.showtime.com/#/episode/{{page.meta.episodeId}}?s_cid=goog-default-1000",
				  "actionPlatform": "http://schema.org/MobileWebPlatform",
				  "inLanguage": "en"
				},
				{
				  "url": "https://www.showtime.com/#/episode/{{page.meta.episodeId}}?s_cid=goog-default-1000",
				  "actionPlatform": "http://schema.org/IOSPlatform",
				  "inLanguage": "en"
				},
				{
				  "url": "android-app://com.showtime.standalone/http/www.showtime.com/PAGE/t{{page.meta.episodeId}}",
				  "actionPlatform": "http://schema.org/AndroidPlatform",
				  "inLanguage": "en"
				}
			  ],
			"expectsAcceptanceOf": [
				{
					"@type": "Offer",
					"category": "subscription",
					"name": "Showtime",
					"price": "10.99",
					"priceCurrency": "USD",
					"availabilityStarts": "{{page.meta.streaming.startDate}}",
					"availabilityEnds": "{{page.meta.streaming.endDate}}",
					"eligibleRegion": {
						"@type": "Country",
						"name": "US"
					},
					"seller": {
						"@type": "Organization",
						"name": "Showtime",
						"sameAs": "https://www.sho.com/"
					}
				}
			]
		}
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
      "@id": "https://www.sho.com{{page.meta.series.baseUrl}}",
      "name": "{{page.meta.titleTracking}}"
    }
  },
  {
    "@type":"ListItem",
    "position":3,
    "item":
    {
      "@id": "{{global.canonicalUrl}}",
      "name": "{{page.meta.titleTracking}} Season {{page.meta.threePartKey.seasonNumber}}"
    }
  }
    ]
}
</script>
