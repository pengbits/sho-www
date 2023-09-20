<dl class="metadata">
{{#castInfo}}
	{{#if actors guestStars logic="or"}} <dt class="metadata__key">Cast</dt>
	<dd class="metadata__value">{{/if}}
		{{#actors}}
			<dl class="metadata__value--multi">
			<dt class="metadata__value--multi-key">{{talentName}}</dt>
			<dd class="metadata__value--multi-value">{{characterName}}</dd>
			</dl>
		{{/actors}}
		{{#guestStars}}
		<dl class="metadata__value--multi">
			<dt class="metadata__value--multi-key">{{talentName}}</dt>
			<dd class="metadata__value--multi-value">{{characterName}}</dd>
		</dl>
		{{/guestStars}}
	{{#if actors guestStars logic="or"}}</dd>{{/if}}

	{{#writers}}
		<dt class="metadata__key">{{credit}}</dt>
		<dd class="metadata__value">{{talentName}} {{article}}</dd>
	{{/writers}}
	{{#directors}}
		<dt class="metadata__key">{{credit}}</dt>
		<dd class="metadata__value">{{talentName}} {{article}}</dd>
	{{/directors}}
{{/castInfo}}
{{#if genreList.size}}
	<dt class="metadata__key">Genre</dt>
	<dd class="metadata__value">
{{/if}}
{{#genreList}}
		<!-- <a class="metadata__link" href="{{ctaLink}}">{{ctaLabel}}</a> -->
    <span class="capitalize">{{ctaLabel}}{{^iter.isLast}}, {{/iter.isLast}}</span>
{{#genreList.-1}}
	</dd>
{{/genreList.-1}}
{{/genreList}}
{{#titleView}}
	{{#rating}}
		<dt class="metadata__key">Rating</dt>
		<dd class="metadata__value">{{rating}}</dd>
	{{/rating}}
	{{#advisories}}
		<dt class="metadata__key">Showtime Advisories</dt>
		<dd class="metadata__value">{{advisories}}</dd>
	{{/advisories}}
	{{#releaseYear}}
		<dt class="metadata__key">Released</dt>
		<dd class="metadata__value">{{releaseYear}}</dd>
	{{/releaseYear}}
{{/titleView}}
</dl>
