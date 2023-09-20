{{!--
	gift-cards page
--}}

{{< layouts/default}}

  {{$classnames}}gift-cards{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>Buy a SHOWTIME Gift Card | SHOWTIME</title>
        <meta property="og:title" content="Buy a SHOWTIME Gift Card | SHOWTIME" />
        <meta name="description" content="Send an eGift or buy a gift card in stores and give instant access to stream SHOWTIME’s original series, movies, sports and more!" />
        <meta property="og:description" content="Send an eGift or buy a gift card in stores and give instant access to stream SHOWTIME’s original series, movies, sports and more!" />
        <meta name="page-tracking" content="sho:gift cards:info page" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-oganytime_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-oganytime_1280x640.jpg" />
      {{/page}}
    {{/meta}}
    {{$content}}
      <section class="hero hero--no-accent">
				
				{{> gift-card/partials/_hero }}
				
				{{> gift-card/partials/_ways_to_watch }}
				
        {{> gift-card/partials/_stores }}

        {{> gift-card/partials/_included }}

        {{> gift-card/partials/_redeem }}

      </section> 
    {{/content}}
		
    {{$entireShoLibrary}}
    {{/entireShoLibrary}}

{{/ layouts/default}}
