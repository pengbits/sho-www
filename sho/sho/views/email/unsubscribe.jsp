{{< layouts/default }}
    {{$classnames}}email-preferences has-nav-solid{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>Email Preferences | SHOWTIME</title>
        <meta property="og:title" content="Email Preferences | SHOWTIME" />
        <meta name="page-tracking" content="sho:email:unsubscribe:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}
    {{$content}}
			<section class="email-preferences__section section" data-context="email unsub:{{page.newsletterView.name}}">
				<form class="email-preferences__form" action="/email/unsubscribe/confirm" method="POST">
						{{#page.email}}
              {{^page.newsletterView}}
              <h4 class="email-preferences__headline">Newsletter does not exist. Please try again.</h4>
              {{/page.newsletterView}}
  						{{#page.newsletterView.name}}
  						<h4 class="email-preferences__headline">You have requested that <span class="email-preferences__headline--grey">{{page.email}}</span> be unsubscribed from the <span class="email-preferences__headline--grey">{{page.newsletterView.name}}</span> newsletter:</h4>
              <a class="button--secondary" href="/" data-track data-label="cancel">Cancel</a>
  						 <input class="button--secondary" type="submit" value="Confirm" data-track data-label="confirm"/>
  						{{/page.newsletterView.name}}
						{{/page.email}}
					<input type="hidden" name="email" value="{{page.email}}">
					<input type="hidden" name="cid" value="{{page.subId}}">
					<input type="hidden" name="jid" value="{{page.etJobId}}">
					<input type="hidden" name="pubId" value="{{page.newsletterView.newsletterId}}">
					<input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>
				</form>
				<a class="email-preferences__manage-cta" href="/email/preferences?email={{page.email}}" data-track data-label="manage preferences">Manage my email preferences <i class="icon icon--small icon--next-grey"></i></a>
			</section>
	{{/content}}
{{/ layouts/default}}
