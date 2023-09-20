<script type="application/ld+json">
  {
  "@context":"https://schema.org",
  "@type":"TVSeries",
  "name":"{{page.meta.titleTracking}}",
  "actor":{
    "@type":"PerformanceRole",
      "actor":{
        "@type":"Person",
          "name":"{{page.primaryHero.talentView.name}}"
          },
      "characterName":"{{page.primaryHero.characterView.name}}",
      "image":"{{page.meta.valueMap.ogImageUrl}}",
      "description":"{{page.primaryHero.characterView.nonHTMLDescription}}"
    }
  }
  </script>
