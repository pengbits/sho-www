{{!--
  # shoplace sales-tips
--}}

{{< layouts/shoplace }}
  {{$classnames}}shoplace-sales-tips{{/classnames}}  
  {{$pagename}}Sales Tips{{/pagename}}
  {{$pageurl}}sales-tips{{/pageurl}} 
    {{$content}}
      <section class="container__inner">
        <div class='row'>
        {{#salesTipGroupList}}
          <h3 class="sales-tip__title">{{name}}</h3>
          {{#itemViewList}}
            <blockquote >
              <p class="sales-tip__copy">{{{copy}}}</p>
              <cite class="sales-tip__attr">{{attribute}}</cite>
            </blockquote>
          {{/itemViewList}}
        {{/salesTipGroupList}}
        </div>
      </section>
  {{/content}}
{{/layouts/shoplace}}