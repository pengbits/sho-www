{{!-- 
  # network feed home
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid has-nav-exposed network-feed network-feed--home{{/classnames}}

  {{$meta}}
  	<title>Showtime Marketing Feed</title>
    <meta property="og:title" content="Showtime Marketing Feed" />
    <meta name="description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
    <meta property="og:description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
		<meta name="page-tracking" content="sho:utility:network feed:home" />
  {{/meta}}
  
  {{$content}}
  	<div class="network-feed">
			<div class="network-feed__inner">
				<div class="network-feed__sub-inner">
			  	<section class="section section--large">
						<h1 class="network-feed__header">MARKETING FEEDS</h1>
						<h4 class="legal__sub-headline">Please complete the form below to request access to official SHOWTIME schedules, metadata and promotional assets through our marketing feeds.</h4>
						<div id="email-signup-widget" class="email-signup email-signup--marketing-feed">
							<div class="email-signup__inner">
								{{#if feedRegistrationForm.errorMap.size}}
									<div class="email-signup__validation">
										{{#feedRegistrationForm.errorMap}}
											{{#contact}}
												<span class="email-signup__validation--error">{{contact}}</span>
											{{/contact}}
											{{#affiliation}}
												<span class="email-signup__validation--error">{{affiliation}}</span>
											{{/affiliation}}
											{{#phoneNumber}}
												<span class="email-signup__validation--error">{{phoneNumber}}</span>
											{{/phoneNumber}}
											{{#email}}
												<span class="email-signup__validation--error">{{email}}</span>
											{{/email}}
											{{#showtimeContact}}
												<span class="email-signup__validation--error">{{showtimeContact}}</span>
											{{/showtimeContact}}
											{{#doAgreeToTerms}}
												<span class="email-signup__validation--error">{{doAgreeToTerms}}</span>
											{{/doAgreeToTerms}}
										{{/feedRegistrationForm.errorMap}}
									</div>
								{{/if}}
								<form name="email-signup-form" id="email-signup-form" method="POST" action="/network-feed/home">
									<div class="email-signup__form-fields">
										<div class="email-signup__contact-input">
											<p class="email-signup__label 
																{{#feedRegistrationForm.errorMap.contact}}
																	email-signup__error--label
																{{/feedRegistrationForm.errorMap.contact}}">
												Contact Name
											</p>
											<input class="input-box input-box-contact
																		{{#feedRegistrationForm.errorMap.contact}}
																			email-signup__error--form
																		{{/feedRegistrationForm.errorMap.contact}}"
															type="text" 
															name="contact" 
															value="{{feedRegistrationForm.contact}}">
										</div>
										<div class="email-signup__affiliation-input">
											<p class="email-signup__label
																{{#feedRegistrationForm.errorMap.affiliation}}
																	email-signup__error--label
																{{/feedRegistrationForm.errorMap.affiliation}}">
												Company/Affiliation
											</p>
											<input class="input-box input-box-affiliation
																		{{#feedRegistrationForm.errorMap.affiliation}}
																			email-signup__error--form
																		{{/feedRegistrationForm.errorMap.affiliation}}" 
															type="text" 
															name="affiliation" 
															value="{{feedRegistrationForm.affiliation}}">
										</div>
										<div class="email-signup__email-input">
											<p class="email-signup__label
																{{#feedRegistrationForm.errorMap.phoneNumber}}
																	email-signup__error--label
																{{/feedRegistrationForm.errorMap.phoneNumber}}">
												Phone Number
											</p>
											<input class="input-box input-box-contact 
															{{#feedRegistrationForm.errorMap.phoneNumber}}
																email-signup__error--form
															{{/feedRegistrationForm.errorMap.phoneNumber}}"
															type="text" name="phoneNumber" value="{{feedRegistrationForm.phoneNumber}}">
										</div>
										<div class="email-signup__email-input">
											<p class="email-signup__label
																{{#feedRegistrationForm.errorMap.email}}
																	email-signup__error--label
																{{/feedRegistrationForm.errorMap.email}}">
												Email Address
											</p>
											<input class="input-box input-box-email
																		{{#feedRegistrationForm.errorMap.email}}
																			email-signup__error--form
																		{{/feedRegistrationForm.errorMap.email}}"
															type="email" name="email" value="{{feedRegistrationForm.email}}">
										</div>
										<div class="email-signup__email-input">
											<p class="email-signup__label
																{{#feedRegistrationForm.errorMap.showtimeContact}}
																	email-signup__error--label
																{{/feedRegistrationForm.errorMap.showtimeContact}}">
												Showtime Contact Name
											</p>
											<input class="input-box input-box-contact
																{{#feedRegistrationForm.errorMap.showtimeContact}}
																	email-signup__error--form
																{{/feedRegistrationForm.errorMap.showtimeContact}}"
															type="text" name="showtimeContact" value="{{feedRegistrationForm.showtimeContact}}">
										</div>
										<div class="email-signup__tos-input">
											<input class="check-box
																		{{#feedRegistrationForm.errorMap.doAgreeToTerms}}
																			email-signup__error--form
																		{{/feedRegistrationForm.errorMap.doAgreeToTerms}}" 
                                    {{#feedRegistrationForm.doAgreeToTerms}} 
                              checked 
                                    {{/feedRegistrationForm.doAgreeToTerms}}
															type="checkbox" 
															name="doAgreeToTerms">
											<span>I agree to the <a href="/network-feed/terms">terms</a> of the SHOWTIME Network Feed and Promotional Video MRSS Feed.
											</div>
										</div><!-- /form-fields -->
										<button class="email-signup__submit-btn" type="submit" value="ACCEPT">
											Request Access
										</button>
										<input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>
									</form>
					</section>
				  {{> network-feed/_features }}
				</div>
			</div>
		</div>
  {{/content}}
  
	{{$footer}}
		{{> partials/_footer_nav }}
	{{/footer}}
  
{{/layouts/default}}






