<a class="refresh-hero__cta {{#isNotEq ctaType 'order link'}}{{#isNotEq ctaType 'stream link'}}button--secondary {{/isNotEq}}{{/isNotEq}}{{#isEq type 'video'}} js-video-play7r-cta {{#iter.isFirst}}refresh-hero__cta--first-video {{/iter.isFirst}}{{/isEq}}{{#isEq ctaType 'order link'}}button--primary{{/isEq}} {{#isEq ctaType 'stream link'}}button--primary{{/isEq}} button--{{type}}" 
  href="{{ctaLink}}" {{#isEq type "video"}} 
  data-mode="modal" 
  data-fullscreen="true" 
{{/isEq}} 
{{#this.videoTile}}
  data-video-id="{{vendorId}}"
  data-asset-id="{{videoId}}"
  data-asset-title="{{this.title}}"
  data-asset-type="{{type}}"
  data-asset-creation-date="{{creationDate}}"
  data-age-gate="{{ageGate}}"
  data-poster="{{imageUrl}}"
{{/this.videoTile}}
{{#videoTile}}
  data-video-id="{{vendorId}}"
  data-asset-id="{{videoId}}"
  data-asset-title="{{this.title}}"
  data-asset-type="{{type}}"
  data-asset-creation-date="{{creationDate}}"
  data-age-gate="{{ageGate}}"
  data-poster="{{imageUrl}}"
{{/videoTile}}
  data-track 
  data-label="{{ctaType}}:{{ctaLabel}}" 
  data-location="cta">{{ctaLabel}}</a>