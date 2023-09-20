{{!-- 
note - support for MMA variant
Entering the description field in Paige will trigger the MMA variant. A Paige user can enter the classname in the description, which will be added to the container, as well as the alternate markup.
Strangely, the video description was causing a conflict with the description in the promotion, so I wrote out the fully qualified path to the property in the check below.
https://work.sho.com/jira/browse/SITE-22175
--}}

<section class="{{$className}}{{/className}} order-banner"  data-context="banner"> 
	{{#page.orderTile.description}}<a href="{{ctaLink}}" data-track data-label="order">{{/page.orderTile.description}}
		<div class="order-banner__inner" {{#page.orderTile.description}}style="background-image: url({{imageUrl}})"{{/page.orderTile.description}}>
			<div class="order-banner__body">
        {{$order_banner_logo}}{{/order_banner_logo}}
        <h2 class="order-banner__headline">{{{title}}}</h2>
				<p class="order-banner__copy">{{{subTitle}}}</p>
				{{^page.orderTile.description}}
					<a class="order-banner__button" href="{{ctaLink}}" data-track data-label="order">
						{{ctaLabel}}
					</a>
				{{/page.orderTile.description}}
				</div>		
					<div class="order-banner__image lazyload" 	{{^page.orderTile.description}} data-bgset="{{imageUrl}}"{{/page.orderTile.description}}></div>		
		</div>
		{{#page.orderTile.description}}</a>{{/page.orderTile.description}}
</section>