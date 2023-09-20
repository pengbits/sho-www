<div class="press-recap" data-context="press">
	{{#tileList}}
		<div class="press-recap__body">
			{{#imageUrl}}<img class="press-recap__logo" src="{{imageUrl}}" alt="{{title}}">{{/imageUrl}}
			<p class="press-recap__copy">"{{{subTitle}}}"</p>
			<a class="press-recap__link" href="{{ctaLink}}" rel="nofollow" data-track data-label="{{title}}:{{ctaLabel}}" data-location="tile {{iter.index}}">{{ctaLabel}}</a>
		</div>
	{{/tileList}}
</div>
