<script type="application/ld+json">
{
  "@context":"https://schema.org",
  "@type":"BroadcastEvent",
{{#page.eventView}}
  "url": "{{global.canonicalUrl}}",
  "name": "{{title}}",
  "description": "{{description}}", 
  "isLiveBroadcast": {{isOriginalAirDateInFuture}},
  "videoFormat": "HD",
  "startDate": "{{countdownTime}}",
  "broadcastOfEvent": {
    "@type": "SportsEvent",
    "name": "{{title}}"
{{/page.eventView}}
{{#page.fightCards}}
  {{#fightCardList.0}}
  ,
    "competitor": [
      {{#topDog}}
      {
        "@type": "Person",
        "name": "{{firstName}} {{lastName}}"
      },
      {{/topDog}}
      {{#challenger}}
      {
        "@type": "Person",
        "name": "{{firstName}} {{lastName}}"
      }
      {{/challenger}}
    ],
    "startDate": "{{#page.eventView}}{{countdownTime}}{{/page.eventView}}"
    {{/fightCardList.0}}
{{/page.fightCards}}
  }
}
</script>