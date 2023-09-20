{{!--
  # video player title page
  # now with containers for two-col layout, although full experience is limited to optimizely test at the moment
--}}
{{< layouts/default }}
  {{$classnames}}has-nav-solid{{/classnames}}

  {{$meta}}
    {{#page}}
    {{#switch page.meta.videoView.seriesId}}
      {{#case 46 break=true}}
        <title>{{videoTile.title}}{{#page.meta.seriesShortTitle}} - {{page.meta.seriesShortTitle}}{{/page.meta.seriesShortTitle}} | SHOWTIME</title>
        <meta property="og:title" content="{{videoTile.title}}{{#page.meta.seriesShortTitle}} - {{page.meta.seriesShortTitle}}{{/page.meta.seriesShortTitle}} | SHOWTIME" />
      {{/case}}
      {{#default}}
        <title>{{#page.meta.seriesShortTitle}}{{page.meta.seriesShortTitle}}{{#isNotEq ""}}: {{/isNotEq}}{{/page.meta.seriesShortTitle}}{{videoTile.title}} | SHOWTIME</title>
        <meta property="og:title" content="{{#page.meta.seriesShortTitle}}{{page.meta.seriesShortTitle}}{{#isNotEq ""}}: {{/isNotEq}}{{/page.meta.seriesShortTitle}}{{videoTile.title}} | SHOWTIME" />
      {{/default}}
    {{/switch}}
      <meta name="description" content="{{videoTile.description}}" />
      <meta name="sho:video_duration" content="{{meta.videoView.time}}" />
      <meta property="og:description" content="{{videoTile.description}}" />
      {{#isNotEq meta.videoView.seriesId 0}}
      <meta name="page-tracking" content="sho:video:series:{{meta.contextTracking}}:{{meta.videoView.type}}:{{meta.titleTracking}}" />
      {{/isNotEq}}
      {{#isEq meta.videoView.seriesId 0}}
      <meta name="page-tracking" content="sho:video:title:{{meta.contextTracking}}:{{meta.videoView.type}}:{{meta.titleTracking}}" />
      {{/isEq}}
      <meta property="og:image" content="{{videoTile.imageUrl}}" />
      <meta name="sho:image" content="{{videoTile.shoSearchImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page}} 
      {{{videoStructuredData}}}
      {{#videoTile}}
        {{> /video/_video_player_inner}}
      {{/videoTile}}
    {{/page}}
  {{/content}}
  {{$brightcove_js}}
  {{/brightcove_js}}

{{/ layouts/default}}
