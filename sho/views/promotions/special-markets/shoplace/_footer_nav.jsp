
<footer class="footer">
<section class="footer__inner">
{{#global}}
  {{#nav}}
    {{#navItemList}}
    {{#iter.hasNext}}
    {{#isNotEq iter.index 3}}
    <aside class="footer__section">
      <ul class="menu" data-context="footer">
          <li class="menu__item"><a data-track data-label="{{label}}" href="{{link}}">{{label}}</a></li>
          {{#linkList}}
          <li class="menu__item"><a data-track data-label="{{text}}" href="{{url}}">{{text}}</a></li>
          {{/linkList}}
      </ul>
      {{!-- cheat third item (training videos) into second item container if not null --}}
      {{#isEq iter.index 2}}{{#navItemList.2}}
      <ul class="menu">
        <li class="menu__item"><a data-track data-label="{{label}}" href="{{link}}">{{label}}</a></li>
      </ul>
    {{/navItemList.2}}{{/isEq}}
    </aside>
    {{/isNotEq}}
    {{/iter.hasNext}}
    {{/navItemList}}
  {{/nav}}
  {{#footer}}
    <aside class="footer__section">
      {{#shoSocialLinkList.0}}
      <span class="social-connections-title">Socialize with Showtime</span>
      <ul class="social-connections" data-context="footer">
        {{#shoSocialLinkList}}
          <li class="social-connections__item">
            <a data-track data-label="{{link}}"  href="{{link}}"><img src="{{imageUrl}}"></a>
          </li>
        {{/shoSocialLinkList}}
      </ul>
      {{/shoSocialLinkList.0}}
      {{#partnerSocialLinkList.0}}
      <span class="social-connections-title">Socialize with {{global.partner}}</span>
      <ul class="social-connections">
        {{#partnerSocialLinkList}}
          <li class="social-connections__item">
            <a data-track data-label="{{link}}"  href="{{link}}"><img src="{{imageUrl}}"></a>
          </li>
        {{/partnerSocialLinkList}}
      </ul>
      {{/partnerSocialLinkList.0}}
      
      <p>SNI'S Consumer Site: <a href="https://www.sho.com">www.sho.com</a></p>
      {{#emailUs}}
      <p>Have a Question? <a class="" href="mailto:{{emailUs}}" target="_top">Email Us</a></p>
      {{/emailUs}}
  </aside>
</section>
<aside class="footer__legal">
  <section class="footer__inner">
  <p>{{legalLine}}</p>
</section>
</aside>

{{/footer}}
{{/global}}
</footer>