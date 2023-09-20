	{{!--
  # about showtime video-services
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid about-legal legal-video-services {{/classnames}}

  {{$meta}}
    {{#page}}
      <title>Video Services | SHOWTIME </title>
      <meta property="og:title" content="Video Services | SHOWTIME" />
      <meta name="description" content="View the SHOWTIME video services and social networking policies to take advantage of social networking and other features on the Services." />
      <meta property="og:description" content="View the SHOWTIME video services and social networking policies to take advantage of social networking and other features on the Services." />
      <meta name="page-tracking" content="sho:about:video services" />
			<meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
			<meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$nav}}
    {{< partials/_global_navigation }}
      {{$secondaryNav}}
        {{> about/partials/_legal_secondary_nav}}
      {{/secondaryNav}}
    {{/partials/_global_navigation }}
  {{/nav}}

  {{$content}}
    {{#page}}
        <section class="section section--black section--large legal">
          <h2 class="legal__headline">Video Services and Social Networking Policy</h2>
          <p class="legal__body">Effective Date December 2016</p>
          <p class="legal__body">Your video content viewing activities may be collected through your use of the Services. By viewing our video content, you are consenting to share your video viewing and related media consumption activities with others, including video content you have watched or audio content streamed on the Services. Sharing this information will allow you to take advantage of TV and audio control services, social networking and other features including the delivery of relevant advertising on the Services. Such sharing may continue for two years or until you withdraw your consent.</p>
          <h4 class="legal__sub-headline">Social Networking Services</h4>
          <p class="legal__body">Showtime Networks has partnered with certain third party social networking companies to offer you their services through certain Showtime Networks Services. For example, you can use third party social networking services, such as <a class="legal__body__link" href="https://www.facebook.com/privacy/explanation">Facebook</a>, <a class="legal__body__link" href="http://www.google.com/policies/privacy/">Google</a> or <a class="legal__body__link" href="https://twitter.com/privacy?lang=en">Twitter</a>, to share information about your experience on Showtime Networks Services with your friends and followers on those services. These social networking services may be able to collect information about you, including about your activities on Showtime Networks Services, and they also may notify your friends, both on Showtime Networks Services and on their services, that you are a Showtime Networks user or about your use of the Showtime Networks Services, in accordance with applicable law and their own privacy policies.</p>
					<p class="legal__body">By using your Showtime Networks Services account with a third party social networking service, you consent to share information about you, including video content that you have watched on Showtime Networks Services, with your friends and followers on those services. You can limit how third party social networking services share your information by visiting your social networking services' websites and updating your privacy settings.</p>
					<p class="legal__body">In addition, Showtime Networks Services may request your permission to a) access and collect information available from your social networking account; and b) post information to your friends on your behalf. When you connect your social networking service with your Showtime Networks Services account, you authorize Showtime Networks Services to access certain information about you from your social networking service to provide content and services, including to help us tailor our communications to you and to develop rich online content and services across the Showtime Networks Services. The information Showtime Networks may access from your social networking services is governed by the privacy policies and settings of those third party services.</p>
          <h4 class="legal__sub-headline">Advertising and Video Measurement Services</h4>
					<p class="legal__body">Some of the Showtime Networks Services may use cookies, web beacons, and other similar technologies that allow our advertisers, service providers and market research companies, such as Adobe, Nielsen or Comscore, to collect information about the users and the type of content, including video content that users have watched on Showtime Networks Services. By watching video content on Showtime Networks Services, you consent to allow us to share information with these advertisers, service providers and video measurement services. For more information about Nielsen digital measurement products, please <a class="legal__body__link" href="http://www.nielsen.com/digitalprivacy">click here</a>. If you do not wish to participate in Nielsen's digital measurement research on a Showtime Networks mobile application, please <a href="http://www.nielsen.com/digitalprivacy#choice" class="legal__body__link">click here</a> to opt-out. If you choose to opt out, Showtime Networks will not share with Nielsen video content viewing information generated by you. For more information about Comscore, please <a href="http://www.comscore.com/" class="legal__body__link">click here</a>. Please note that we do not share contact information with video measurement services.</p>
          <p class="legal__body">In addition, third party market research services, such as Nielsen, may access information about you through your social networking services. You can prevent Nielsen from receiving any data from Facebook that includes information identifying you by opting out of Nielsen measurement. Please <a href="https://www.facebook.com/help/211774365532736?sr=1&sid=0U3IgVgLaT89shpT3" class="legal__body__link">click here</a> to read about Facebook's participation in Nielsen's measurement services, and <a href="https://priv-policy.imrworldwide.com/priv/browser/cookie-policy-de-en.html?optout" class="legal__body__link">here</a> to learn how to opt out of Nielsen measurement services on web browsers.</p>
					<h4 class="legal__sub-headline">TV and Audio Control Services</h4>
					<p class="legal__body">Showtime Networks has partnered with certain third party companies that offer TV and audio control services to enhance your video content viewing experience. For example, you can use third party apps and audio control services, such as the Apple TV App or Siri, to search, recommend or access video content on Showtime Network Services. These apps and audio control services may be able to collect and store information about you, including about your video viewing activities on Showtime Network Services. By using your Showtime Network Services account with a third party TV app or audio control service, you consent to share information about you, including the video content that you have watched on Showtime Network Services. You can limit how third party TV app or audio control services collect and store information about your video content viewing by visiting the third party app's privacy settings. For example, the Apple TV App allows you to discontinue the collection and storage of your video content viewing information by visiting the Apple TV App Settings page choosing the &quot;Remove and Clear Play History&quot; option.  <a href="http://www.apple.com/privacy/privacy-policy/" class="legal__body__link">Click here</a> to learn more about Apple TV and audio control services privacy policy.</p>
         </section>
          {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}
    {{/page}}
  {{/content}}
{{/ layouts/default}}
