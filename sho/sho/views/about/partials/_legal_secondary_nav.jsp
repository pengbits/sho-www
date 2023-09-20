 <nav class="secondary-nav" style="background-color: black;">
  <div class="secondary-nav__content" data-context="about navigation">
    <select class="secondary-nav__dropdown select-navigation js-select-navigation" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
      <option selected="selected" disabled="disabled">Legal</option>
      <option value="/about/terms" data-context="about navigation" data-label="terms of use">Terms of Use</option>
      <option value="https://www.viacomcbsprivacy.com/policy" data-context="about navigation" data-label="privacy policy">Privacy Policy</option>
      <option value="/about/closed-captioning" data-context="about navigation" data-label="closed captioning">Closed Captioning</option>
    </select>
      <ul class="secondary-nav__list">
        <li class="secondary-nav__item secondary-nav__item--terms"><a href="/about/terms" data-track data-label="terms of use">Terms of Use</a></li>
        <li class="secondary-nav__item secondary-nav__item--privacy"><a href="https://www.viacomcbsprivacy.com/policy" data-track data-label="privacy policy">Privacy Policy</a></li>
        <li class="secondary-nav__item secondary-nav__item--closed-captioning"><a href="/about/closed-captioning" data-track data-label="closed captioning">Closed Captioning</a></li>
      </ul>
  </div>
</nav>
