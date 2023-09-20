{{#downloadResourcesTilesGroup}}
<section class="section section--large">
	<div class="promo-group-header">
		<h3 class="promo-group-header__title">Download Resources</h3>
	</div>
	<div class="slider slider--cast js-slider" data-step="page">
		<a href="#" class="slider__control slider__control--prev">
			<span class="slider__control__label">previous</span>
		</a>
		<div class="slider__container">
			<div class="slider__content">
				<ul class="slider__items">
					{{#tileList}}
					<li class="slider__item">
						<figure class="promo promo--cast">
							<div class="promo__image lazyload" data-bgset="{{imageUrl}}">
							</div>
							<figcaption class="promo__body">
								<p class="promo__copy">{{{title}}}</p>
							</figcaption>
							<a class="promo__link" href="{{ctaLink}}" data-track data-context="resource center" data-label="{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
						</figure>
					</li>
					{{/tileList}}
				</ul>
			</div>
		</div>
		<a href="#" class="slider__control slider__control--next">
			<span class="slider__control__label">next</span>
		</a>
	</div>
</section>
{{/downloadResourcesTilesGroup}}
