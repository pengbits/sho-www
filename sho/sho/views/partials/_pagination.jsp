{{!
---
name: Pagination
source: /styleguide/src/pagination/index.md
}}

<div class="pagination" data-context="pagination">
    {{#previousCta}}<a class="pagination__prev" data-track data-label="page navigation" href="{{ctaLink}}"></a>{{/previousCta}}
    <ul class="pagination__list">
		{{#rangeCtaList}}
        <li class="pagination__page-number {{#active}}pagination__page-number--active{{/active}}">
            {{^active}}<a href="{{ctaLink}}" data-track data-label="page navigation">{{/active}}{{ctaLabel}}{{^active}}</a>{{/active}}
        </li>
        {{/rangeCtaList}}
    </ul>
    {{#nextCta}}<a class="pagination__next" data-track data-label="page navigation" href="{{ctaLink}}"></a>{{/nextCta}}
</div>