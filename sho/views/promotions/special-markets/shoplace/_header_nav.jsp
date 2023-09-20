{{#global}}
{{#nav}}
<nav class="primary-nav js-primary-nav{{^navItemList}} primary-nav--disabled{{/navItemList}}" data-context="global navigation">
  <em class="primary-nav__toggle"></em>
  <section class="primary-nav__inner">
    <span class="primary-nav__closer"></span>
    <div class="primary-nav__nav-list" >
      <ul class="primary-nav__nav-left">
        <li class="primary-nav__item primary-nav__item--logo">
          <a data-track data-label="Home" href="/shoplace/{{slug}}">Home</a>
        </li>
        {{#navItemList}}
        <li class="primary-nav__item" data-category="{{label}}"><a data-track data-label="{{label}}" href="{{link}}">{{label}}</a>
          {{#linkList.0}}
          <ul class="primary-nav__menu">
          {{#linkList}}
            <li class="primary-nav__menu__item"><a data-track data-label="{{text}}" href="{{url}}">{{text}}</a></li>
          {{/linkList}}
          </ul>
          {{/linkList.0}}
        </li>
        {{/navItemList}}
      </ul>
    {{!-- 
      there is a lot of confusion around the logo implementation carrying over from the old implementation:
      - the showtime logo is supposed to render at 85x32 for the showtime branded shoplace, and 71x32 for partners.
      - there are multiple versions of the showtime logo,  and the `shoplace_nav_showtimesmaller_170x64.png` version is actually 142x64...
      - both a secondaryNavLogo and primaryNavLogo are returned in the json, but it's unclear if the showtime logo is ever used, since hard-coded paths exist instead
      - it looks like it'd be cleaner to handle these size quirks in css, and draw dynamic logo paths from backend in all case,
       the dynamic logo returned for primaryNav in the showtime theme case is not even usable in that context, it is in fact the shoplace logo used below, 
       not a showtime logo at all, but the persistent shoplace logo most relevant for mobile!
    --}}
    <ul class="primary-nav__logoset">
      {{#global.partner}}
      {{# isNotEq "SHOWTIME" }}
      <li class="primary-nav__logo primary-nav__logo--partner"> 
        <img src="{{secondaryLogo.url}}" alt="{{secondaryLogo.text}}" />
      </li>
      <li class="primary-nav__logo primary-nav__logo--sho">
        <img src="{{primaryLogo.url}}" alt="{{primaryLogo.text}}" />
      </li>
      {{/isNotEq}}
      {{# isEq "SHOWTIME" }}
      <li class="primary-nav__logo primary-nav__logo--sho">{{!-- sho logo is not availble in JSON for this case --}}
        <img src="https://www.sho.com/assets/images/shoplace/nav_logos/generic/shoplace_nav_showtimeonly_170x64.png" alt="showtime" />
      </li>
      {{/isEq}}
      {{/global.partner}}
    </ul>
  </div>

  </section>
  
  {{#primaryLogo.url}}{{#isNotEq ""}}
  <img class="primary-nav__logo primary-nav__logo--shoplace" 
    src="{{.}}" 
  />
  {{/isNotEq}}{{/primaryLogo.url}}
</nav>
{{/nav}}
{{/global}}