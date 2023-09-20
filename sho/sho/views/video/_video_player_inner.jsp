{{!--
# video player inner content
--}}

{{#page}}
  <main class="video-player-standard">
    <div class="video-player video-player--two-col {{#meta.videoView.isYoutube}}video-player--youtube{{/meta.videoView.isYoutube}}">
      <div class="video-player__primary">
        <div class="video-player__video">
          {{#meta.videoView.isYoutube}}     
            {{> /video/_video_embed_youtube}}
          {{/meta.videoView.isYoutube}}
          {{^meta.videoView.isYoutube}}
            <div class="video-play7r js-video-play7r"
              data-defer="true"
              data-autoplay="true"
              data-fullscreen="false"
              data-asset-id="{{videoTile.videoId}}"
              data-asset-title="{{videoTile.title}}"
              data-asset-type="{{page.meta.videoView.type}}"
              data-asset-creation-date="{{page.meta.videoView.creationDate}}"
              data-video-id="{{videoTile.vendorId}}"
              data-age-gate="{{videoTile.ageGate}}"
              data-full-episode="{{videoTile.isFullEpisode}}"
            >
              <img class="video-play7r__poster" src="https://www.sho.com/assets/images/video/play7r/ui/video-poster-clear_400x225.png"
                style="background-image:url({{videoTile.imageUrl}})" />
              <div class="video-play7r__age-gate-container"></div>
              <div class="video-play7r__big-play-button" type="button" title="Play Video"></div>
            </div>
          {{/meta.videoView.isYoutube}}
        </div><!-- END __video -->

        <section class="video-metadata-section video-metadata--short-form" data-context="video metadata">
          <div class="video-metadata">
              <h1 class ="video-metadata__title">{{videoInfo.title}}</h1>
              {{#page.videoTile.videoDetail}}<div class ="video-metadata__detail">{{page.videoTile.videoDetail}}</div>{{/page.videoTile.videoDetail}}
              {{#page.meta.threePartKey.series}}
                {{^page.videoTile.isFullEpisode}}
                  <p class="video-metadata__desc">{{page.videoInfo.description}}</p>
                  {{#isNotEq page.meta.videoView.type "trl"}}{{#page.titleCardInfo}}{{#page.titleCardInfo.url}}
                    <a href="{{.}}" class="video-metadata__link" data-track data-label="learn more">Learn More</a>
                  {{/page.titleCardInfo.url}}{{/page.titleCardInfo}}{{/isNotEq}}
                {{/page.videoTile.isFullEpisode}}
              {{/page.meta.threePartKey.series}}
              {{^page.meta.threePartKey.series}}
                {{#isNotEq page.meta.videoView.type "trl"}}
                  <p class="video-metadata__desc">{{page.videoInfo.description}}</p>
                {{/isNotEq}}
              {{/page.meta.threePartKey.series}}
          </div>
        </section>
      </div>
      {{#page.orderTile}}
        {{< partials/order/_order_banner}}
          {{$intStreamingCampaign}}?i_cid=int-default-26165{{/intStreamingCampaign}}
          {{$className}}refresh-order-banner--until-large refresh-order-banner--no-border{{/className}}
        {{/ partials/order/_order_banner}}
      {{/page.orderTile}}

      <div class="video-player__secondary 
      {{#page.meta.threePartKey.series}}{{^page.videoTile.isFullEpisode}}{{#isNotEq page.meta.videoView.type "trl"}}video-player__secondary--from-large
      {{/isNotEq}}{{/page.videoTile.isFullEpisode}}{{/page.meta.threePartKey.series}}" data-context="video metadata info">
        {{#page.titleCardInfo}}
          {{#attribution}}
            <div class="video-metadata__info__attribution">{{attribution}}</div>
          {{/attribution}}
          {{#page.titleCardInfo.url}}
            <a href="{{page.titleCardInfo.url}}" class="video-metadata__info__headline__container" data-track data-label="{{title}}">
          {{/page.titleCardInfo.url}}
          {{^titleImageUrl}}
            <div class="video-metadata__info__headline">{{{title}}}</div>
          {{/titleImageUrl}}
          {{#titleImageUrl}}
            <img class="video-metadata__info__headline__image" src="{{titleImageUrl}}" alt="{{title}}">
          {{/titleImageUrl}}
          {{#page.titleCardInfo.url}}
            </a>
          {{/page.titleCardInfo.url}}
          {{#descriptor}}<div class="video-metadata__info__detail">{{{descriptor}}}</div>{{/descriptor}}
          {{#tuneIn}}<div class="video-metadata__info__tunein">{{{tuneIn}}}</div>{{/tuneIn}}
          {{#subTitle}}<div class="video-metadata__info__detail">{{{subTitle}}}</div>{{/subTitle}}
          {{#description}}<div class="video-metadata__info__detail">{{{description}}}</div>{{/description}}
          {{#page.titleCardInfo.url}}
            <a href="{{page.titleCardInfo.url}}" class="video-metadata__info__link" data-track data-label="learn more">Learn More</a>
          {{/page.titleCardInfo.url}}
          {{#page.ffeBanner}}
            <a href="{{ctaLink}}" class="button--secondary button--video" data-track data-label="free full episode video:{{title}}">WATCH SERIES PREMIERE FREE</a>
          {{/page.ffeBanner}}
        {{/page.titleCardInfo}}
      </div> 
    </div>
    {{#page.orderTile}}
      {{< partials/order/_order_banner}}
        {{$intStreamingCampaign}}?i_cid=int-default-26165{{/intStreamingCampaign}}
        {{$className}}refresh-order-banner--from-large{{/className}}
      {{/ partials/order/_order_banner}}
    {{/page.orderTile}}
  </main>
  {{#if relatedVideoGroup.tileList.size}}
    <h3 class="section-header section-header--related-videos section-header--border">{{relatedVideoGroup.heading}}</h3>
    <div class="promo-group promo-group--related-videos promo-group--to-three-up section--inner" data-context="promo group:{{relatedVideoGroup.heading}}">
      {{#relatedVideoGroup.tileList}}
        {{> partials/_promo_landscape }}
      {{/relatedVideoGroup.tileList}}
    </div>
  {{/if}}
{{/page}}