{{!--
  # about showtime legal-notices
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-exposed has-nav-solid about-legal legal-notices{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>Legal Notices | SHOWTIME	</title>
      <meta property="og:title" content="Legal Notices | SHOWTIME" />
      <meta name="description" content="Review legal notices for the SHOWTIME websites, mobile and connected TV applications." />
      <meta property="og:description" content="Review legal notices for the SHOWTIME websites, mobile and connected TV applications." />
      <meta name="page-tracking" content="sho:about:legal notices" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  
  {{$content}}
    {{#page}}        
      <section class="section section--black section--large legal legal-notices">
        <h2 class="legal__headline">Legal Notices</h2>
        <p class="legal__body">© 2023 Showtime Networks Inc. and Showtime Digital Inc. SHOWTIME is a registered trademark of Showtime Networks Inc., a Paramount Global Company.</p>
        <p class="legal__body">SHOWTIME is accessible for viewing solely in the United States and its territories and possessions. Minimum high-speed broadband connection is required for viewing.</p>
        <p class="legal__body">Download the SHOWTIME app to any supported device, including: SMART TVS & GAME CONSOLES: Amazon Fire TV™, Android TV™, Apple TV®, Chromecast™, LG Smart TVs, Roku® devices, Samsung Smart TVs, Xbox One. MOBILE & TABLET: Android™ devices, Amazon Fire Tablet™, iPad®, iPhone®. COMPUTERS: showtime.com.</p>
        <p class="legal__body">Online ordering not available with some TV Service Providers. SHOWTIME pricing and packaging varies by service provider.</p>
        <ul class="legal-departure-nav" data-context="footer">
          <li><a href="https://www.showtime.com/?i_cid=int-default-1010" data-track data-label="showtime.com">SHOWTIME.com</a></li>
          <li><a href="/?i_cid=int-default-14592" data-track data-label="sho.com">SHO.com</a></li>
        </ul>
      </section>
    {{/page}}
  {{/content}}
{{/ layouts/default}}
