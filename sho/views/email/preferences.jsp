{{< layouts/default }}
    {{$classnames}}email-preferences has-nav-solid{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Email Preferences | SHOWTIME</title>
        <meta property="og:title" content="Email Preferences | SHOWTIME" />
        <meta name="page-tracking" content="sho:email:preferences:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}
			<section class="email-preferences__section section">
        <h3 class="email-preferences__headline--large">Manage your Email preferences</h3>
				<form name="newsletterManagementForm" method="POST">
          <input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>

					{{#newsletterManagementForm.newsletterCategoryMap}}
						{{#Newsletter}}
							{{#newsletterList}}
                <div class="email-preferences__form-section">
  								<input class="email-preferences__input--card" type="checkbox" id="{{id}}" name="userSelectedNewsletterSet" value="{{id}}" {{#subscribed}}checked{{/subscribed}} />
                  <label for="{{id}}">{{name}}</label>
  								<p class="email-preferences__description">{{{description}}}</p>
                </div>
  							{{#iter.isFirst}}
                  <div class="email-preferences__form-section--general">
  									{{#General}}
  										<h5 class="email-preferences__label">{{name}}</h5>
  										{{#newsletterList}}
                        {{#iter.isEven}}
                          <div class="email-preferences__entry email-preferences__entry--even">
      											<input class="email-preferences__input" type="checkbox" id="{{id}}" name="userSelectedNewsletterSet" value="{{id}}" {{#subscribed}}checked{{/subscribed}} />
                            <label for="{{id}}" class="email-preferences__label--inline">{{name}}</label>
                          </div>
                        {{/iter.isEven}}
                        {{#iter.isOdd}}
                          <div class="email-preferences__entry email-preferences__entry--odd">
      											<input class="email-preferences__input" type="checkbox" id="{{id}}" name="userSelectedNewsletterSet" value="{{id}}" {{#subscribed}}checked{{/subscribed}} />
                            <label for="{{id}}" class="email-preferences__label--inline">{{name}}</label>
                          </div>
                        {{/iter.isOdd}}
  										{{/newsletterList}}
  									{{/General}}
                  </div>
								{{/iter.isFirst}}
							{{/newsletterList}}
						{{/Newsletter}}
					{{/newsletterManagementForm.newsletterCategoryMap}}
          <div class="email-preferences__unsubscribe">
            <a href="#" class="email-preferences__unsubscribe--link">Unsubscribe</a> from all email lists. You will continue to receive service related emails about your account.
          </div>
					<button class="email-preferences__submit" name="submitBtn" value="submit" data-track data-context="email preferences" data-label="save">SAVE</button>
				</form>
			</section>
	{{/content}}
  {{$jsFooter}}
    <script>
    $(".email-preferences__unsubscribe--link").click(function () {
        $("input:checkbox").removeAttr('checked');
        return false;
    });
    </script>
  {{/jsFooter}}
{{/ layouts/default}}
