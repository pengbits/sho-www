---
name: Video Player v7
collection: components
---

# Video Player v7

A recode of the video player, upgrading brightcove to version 7 and elminating all but essential customizations/features:
- age gate
- heartbeat analyitcs
- different bc players for environments (bleeding-edge for dev,qa auto updated major for prod)

|player id |env|
|----------|---|
|WAPuItek9|Prod|
|7JuE5DqUiM|Dev & QA|

design goal: abstract brightcove and possibly delay fetch of bc player code until after first interaction. provide a single centralized way to play video on the site for all contexts/use-cases


## Options

- [video-js embed default](./embed.html)
- [placeholder with autoplay](./placeholder.html)
- [placeholder with defer](./placeholder-defer.html) this is the drop-in replacement for the [existing video player](../video-player/index.html) in video
- [placeholder with age gate](./placeholder-age-gate.html)
- [ctas and modal](./ctas-and-modal.html)
- [modal with age gate](./modal-age-gate.html)
- [modal loading state](./loading-state.html)
- [modal fullscreen](./modal-fullscreen.html)
- [modal fullscreen with bg-video](./modal-fullscreen-bg-video.html)
- [modal fullscreen with age gate](./modal-fullscreen-age-gate.html)

## Notes
- perhaps a single-page-app style pattern for the video page aka immersive experience, to avoid the autoplay fails associated with page-load

<style>
td,th {
  padding:10px;
  border: solid #000 2px;
  text-align:center
}
th {
  background-color:#000
}

a:link, a:visited {
  text-decoration:underline
}

a:hover, a:active {
  text-decoration:none
}
</style>