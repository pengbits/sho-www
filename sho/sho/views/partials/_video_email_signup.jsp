<div id="email-signup-widget" class="email-signup email-signup--video js-email-signup">
  <div class="email-signup__inner">
    <div class="email-signup__headline">
      <i class="icon icon--large icon--envelope"></i>
      <span class="email-signup__headline--text">To watch this free full episode, please enter your information below.</span>
    </div>
    <div class="email-signup__validation" style="display:none;"></div>
    <form name="email-signup-form" id="email-signup-form">
      <div class="email-signup__form-fields">
        <div class="email-signup__email-input">
          <p class="email-signup__label">email</p>
          <input class="input-box input-box-email" id="email-address" name="email" placeholder="name@example.com" type="text" value="" autocomplete="off">
        </div>
        <div class="email-signup__dob-select">
          <p class="email-signup__label">date of birth</p>
          <select class="dob-select select-month" id="select-month" name="birthdate_month">
            <option selected hidden>MM</option>
          </select>
          <select class="dob-select select-day" id="select-day" name="birthdate_day">
            <option selected hidden>DD</option>
          </select>
          <select class="dob-select select-year" id="select-year" name="birthdate_year">
            <option selected hidden>YYYY</option>
          </select>
        </div>
        <div class="email-signup__tos-input">
          <input class="check-box" id="tos-agree" name="accepts_terms" type="checkbox">
          <span>I have read and agree to the <a href="/about/terms">Terms of Use</a>, and <a href="https://www.viacomcbsprivacy.com/policy">Privacy Policy</a>. I agree to receive updates, alerts and promotions from Showtime.</span>
        </div>
      </div><!-- /form-fields -->
      <input type="hidden" name="pubId" id="pubId" value="898">
      <button class="email-signup__submit-btn" id="submit" data-context="email signup:FFE SHO.com Prospect">
        Submit
      </button>
    </form>
  </div>
  <div class="email-signup__headline--success"><i class="icon icon--large icon--check-mark"></i><span>Thank you for signing up for Showtime email updates.</span></div>
  <div class="email-signup__headline--lockout"><i class="icon icon--large icon--close"></i><span>Sorry, but you are ineligible for registering on sho.com</span></div>
  <div class="email-signup__headline--error"><i class="icon icon--large icon--close"></i><span>Sorry, but something went wrong, please try again.</span></div>
</div>