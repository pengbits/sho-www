	 {{!--
  # about showtime privacy
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid about-legal legal-privacy {{/classnames}}

  {{$meta}}
    {{#page}}
      <title>Privacy | SHOWTIME</title>
      <meta property="og:title" content="Privacy | SHOWTIME" />
      <meta name="description" content="Review the SHOWTIME Privacy Policy, terms, scope and use of information." />
      <meta property="og:description" content="Review the SHOWTIME Privacy Policy, terms, scope and use of information." />
      <meta name="page-tracking" content="sho:about:privacy" />
			<meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
			<meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$nav}}
    {{< partials/_global_navigation }}
      {{$secondaryNav}}
        {{> about/partials/_legal_secondary_nav}}
      {{/secondaryNav}}
    {{/partials/_global_navigation }}
  {{/nav}}

  {{$content}}
    {{#page}}
        <section class="section section--black section--large legal">
          <h2 class="legal__headline">Privacy Policy</h2>
          <p class="legal__body">Effective Date November 16, 2020</p>
          <p class="legal__body">Note: Our Privacy Policy has been updated.  Please review the updated Privacy Policy carefully before using any Showtime Networks Service.  By using any Showtime Networks Service, you consent to the terms of the updated privacy policy.</p>
          <p class="legal__body">Welcome to the network of interactive services provided by Showtime Networks Inc. or its affiliates (collectively, &quot;Provider,&quot; &quot;Showtime Networks,&quot; &quot;us,&quot; or &quot;we&quot;).  Provider is committed to protecting the privacy of its users and has prepared this Privacy Policy to inform users concerning the protection of privacy on Provider&rsquo;s websites, mobile and connected TV applications, features, products and services that include an authorized link to this Privacy Policy (collectively, &quot;Services&quot;). </p>
          <p class="legal__body">This Privacy Policy describes, among other things, the types of information collected about you when you visit the Services; how your information may be used and when it may be disclosed; how you can control the use and disclosure of your information; and how your information is protected.  </p>
          <h4 class="legal__sub-headline">1. Scope of Privacy Policy</h4>
          <p class="legal__body">This Privacy Policy applies to information, including contact information, collected about you by our Services.  Please review this Privacy Policy carefully.  In addition, please review our <a class="legal__body__link" href="/about/terms">Terms of Use</a>, which govern your use of the Services.</p>
          <p class="legal__body">Please note that the Services are intended solely and exclusively for residents of the United States, its territories and possessions (&quot;U.S.&quot;) while they are located in the U.S.  Accordingly, this Privacy Policy is specifically directed only towards residents of the U.S.  If you are located in the European Union or elsewhere outside of the U.S. and you use the Site contrary to our <a class="legal__body__link" href="/about/terms">Terms of Use</a>, you do so at your own risk and initiative, and are responsible for compliance with any applicable local and national laws.  Please be aware that any information you submit to us will be transferred to and processed in the U.S and subject to U.S. law, which may not be equivalent to the laws in your country of residence.  By using the Site and/or providing us with your information, you consent to this collection, transfer, storage and processing of information to and in the U.S., and waive any claims that may arise under your own local and national laws.</p>
          <h4 class="legal__sub-headline">2. Information Collected</h4>
          <p class="legal__body">Information you provide directly to Provider Services. </p>
          <p class="legal__body">You are not required to provide information about yourself when you visit our Services.  Our Services may ask you for different types of information when you register for certain services, access various content or features, or directly contact the Services including:</p>
            <ul class="legal__body__list">
              <li class="legal__body__list-item">Contact information, such as name, email address, postal address, phone number, facsimile number, and mobile number;</li>
              <li class="legal__body__list-item">User name, password, and password reminder questions and answers;</li>
              <li class="legal__body__list-item">Authentication and sub-account information for Showtime Anytime;</li>
              <li class="legal__body__list-item">Age and date of birth;</li>
              <li class="legal__body__list-item">Other demographic information, such as gender, job information, and postal code;</li>
              <li class="legal__body__list-item">Public information, including profile information, you provide to the Provider Services for publication, such as your user name, comments, likes, interests, status, pictures and the address of your website;</li>
              <li class="legal__body__list-item">Information you provide if you complete a survey that we use for research purposes, or enter a sweepstakes, contest or other online promotion;</li>
              <li class="legal__body__list-item">Communications preferences, such as which newsletters you would like to receive;</li>
              <li class="legal__body__list-item">Search queries;</li>
              <li class="legal__body__list-item">In limited circumstances, payment information, such as credit card number, where needed for payment, to complete a particular transaction, or to access a particular service;</li>
              <li class="legal__body__list-item">Information posted in community discussions and other interactive online features, including so-called &quot;user generated content&quot; and &quot;feedback&quot; and postings to third-party social media sites through the Services (collectively, &quot;User Submissions&quot;);</li>
              <li class="legal__body__list-item">Information you provide if you report a problem with the Site or contact us for other reasons; and</li>
              <li class="legal__body__list-item">Information collected about you offline (including via facsimile, mail, or in person for sweepstakes entrance forms).</li>
              </ul>

            <p class="legal__body">Information we collect automatically on Provider Services. </p>
            <p class="legal__body">Our Services may collect certain information automatically, including:</p>
              <ul class="legal__body__list">
                <li class="legal__body__list-item">Your browser type and operating system;</li>
                <li class="legal__body__list-item">Your Internet Protocol (IP) address, which is the number automatically assigned to your computer whenever you access the Internet and that can sometimes be used to derive your general geographic area;</li>
                <li class="legal__body__list-item">Your Internet Service Provider (ISP);</li>
                <li class="legal__body__list-item">Websites you visited immediately before and after visiting our Services;</li>
                <li class="legal__body__list-item">Web pages and advertisements you view, links you click on within our Services and other clickstream data;</li>
                <li class="legal__body__list-item">Unique identifiers, including device identification numbers that can identify the physical location of such devices in accordance with applicable law;</li>
                <li class="legal__body__list-item">Information collected through cookies, web beacons, pixel tags and other similar technologies;</li>
                <li class="legal__body__list-item">Information about your interactions with audio and video content, such as the type of content listened to and viewed, and information about your interactions with email messages, such as the links clicked on and whether the messages were opened or forwarded;</li>
                <li class="legal__body__list-item">Your bandwidth speed and information about the software programs installed on your computer including registry key information; and</li>
                <li class="legal__body__list-item">Standard server log information, including date/time information.</li>
              </ul>

            <p class="legal__body">Some Internet browsers include the ability to transmit &quot;Do Not Track&quot; signals.  Since uniform standards for &quot;Do Not Track&quot; signals have not been adopted, the Services do not process or respond to &quot;Do Not Track&quot; signals.  To learn more about &quot;Do Not Track&quot;, please visit &quot;<a class="legal__body__link" href="http://www.allaboutdnt.com">All About Do Not Track</a>&quot;.</p>
            <p class="legal__body">Information we obtain from other sources. </p>
            <p class="legal__body">Where permitted by applicable law, we may collect information about you from other sources, including through interactive applications (e.g., mobile devices, third party services, and embedded audio and video players), from co-branded partners and websites (e.g., on our Facebook pages), and from commercially available sources (e.g., data aggregators and public databases).  The following are examples of information we may collect from other sources:  </p>
              <ul class="legal__body__list">
                <li class="legal__body__list-item">Name, postal address, and telephone number;</li>
                <li class="legal__body__list-item">Demographic data, such as age, gender, and income level;</li>
                <li class="legal__body__list-item">If you access third party services (e.g., Facebook, Google+ or Twitter) through a Provider Service, or if you access a Provider Service through a third party service, your username and password for those services and other information available about or collected from you on those services, as described in our <a class="legal__body__link" href="/about/video-services">Video Services and Social Networking Policy</a>;</li>
                <li class="legal__body__list-item">Your interests and purchase behavior;</li>
                <li class="legal__body__list-item">Publicly-observed data, such as activities on blogs, videos, and other online postings; and</li>
                <li class="legal__body__list-item">Other navigation data, such as websites visited and advertisements viewed or clicked on.</li>
              </ul>

          <p class="legal__body">Combining information. </p>
          <p class="legal__body">Please note that all of the information we collect about you may be combined, including to help us tailor our communications to you and to develop rich online content and services across our Services.</p>
          <p class="legal__body">Information collected by third parties.</p>
          <p class="legal__body">The Services may use services provided by third-party advertising and market research companies.  When you visit the Services, these companies may use technologies such as cookies and pixel tags to collect information such as your IP address, video content that you have watched and what page you are visiting when you view a page, video, or email in which a tag is embedded.  The information practices of these advertising companies are governed by their own privacy policies and are not covered by this Privacy Policy.  If you would like more information on your choices regarding this practice and the use of this information, click <a class="legal__body__link" href="http://www.networkadvertising.org/choices">here</a> and <a class="legal__body__link" href="http://www.aboutads.info/choices">here</a>.</p>
          <p class="legal__body">When you select a link from one of our Services to a third party service, any information that you disclose on the third party service will be governed by that service&rsquo;s privacy policy and not this Privacy Policy.</p>
          <h4 class="legal__sub-headline">3. Use of Information</h4>
          <p class="legal__body">We only use payment information, such as credit card numbers, as necessary for completing a particular transaction or fulfilling a service (e.g., paid subscriptions or awarding prizes to contest winners) or as otherwise required by law.</p>
          <p class="legal__body">We generally use other information we collect about you to:</p>
            <ul class="legal__body__list">
              <li class="legal__body__list-item">Fulfill your requests for products, services, and information, including to send you electronic newsletters, authorize a purchase, complete a transaction that you have requested, or serve you when you have questions or problems;</li>
              <li class="legal__body__list-item">Enable you to participate in features and activities such as surveys, polls, sweepstakes, message boards, interviews and other research activities;</li>
              <li class="legal__body__list-item">Provide you with electronic newsletters, information, special offers and promotional materials on behalf of our Services, companies within our corporate family, and third parties, in accordance with applicable law;</li>
              <li class="legal__body__list-item">Operate our Services and analyze the use of our Services and information about visitors to our Services to understand and improve our service offerings and, in accordance with our sharing policies, discussed below, to produce or disclose anonymous or aggregated data and statistics that might help third parties develop their own products and service offerings;</li>
              <li class="legal__body__list-item">Customize the content you see when you visit our Services;</li>
              <li class="legal__body__list-item">Develop and provide advertising tailored to your interests;</li>
              <li class="legal__body__list-item">Prevent potentially prohibited or illegal activities and otherwise in accordance with Provider&rsquo;s Terms of Use; and</li>
              <li class="legal__body__list-item">For any other purposes disclosed to you at the time we collect your information or pursuant to your consent.</li>
            </ul>

          <h4 class="legal__sub-headline">4. Disclosure of Information</h4>
          <p class="legal__body">Provider is committed to maintaining your trust and we want you to understand when and with whom we may share information collected about you.</p>
            <ul class="legal__body__list">

              <li class="legal__body__list-item">With your consent.  With your consent, we may share your contact information with third party marketing partners. </li>
              <li class="legal__body__list-item">User Submissions.  Publication of User Submissions is subject to our <a class="legal__body__link" href="/about/terms">Terms of Use</a>.  Please remember that any information you disclose becomes public information and exercise caution when deciding to disclose your contact, financial, and other information in a User Submission. </li>
              <li class="legal__body__list-item">Authorized service providers.  We may share your contact information and other information about you with vendors that help us with specialized services, including customer support, payment processing, account management, email and text message deployment, business analytics, marketing, suppression list management and data processing.  These vendors are allowed to use your information to help us provide our services and not for any other purpose.  Also, authorized service providers may collect non-contact information about your visits to our Services with cookies, web beacons and other similar technologies that may be used to deliver advertisements or marketing tailored to your interests.  </li>
              <li class="legal__body__list-item">Sweepstakes, contests, or promotions.  When you choose to enter a sweepstakes, contest, or other promotion, and in accordance with the terms and conditions of the promotions, your information may be disclosed to our sponsors and third parties who help design, administer and implement the promotion, including in connection with winner selection, prize fulfillment and aggregated data analysis.  Your information also may be disclosed as required by law, such as on a winners list.  Further, by entering a promotion, you are agreeing to the official rules that govern that promotion, including allowing our sponsors to use your name, voice, and likeness in advertising and marketing associated with the promotion in accordance with applicable law.  All terms applicable to the particular promotion will be made available to you at the time you enter the promotion.</li>
              <li class="legal__body__list-item">Co-Branded Partners.  Co-Branded Partners are third parties with whom a Service may jointly offer a service or feature.  You can tell when you are accessing a service or feature offered by a Co-Branded Partner because the Co-Branded Partner&rsquo;s name will be featured prominently.  You may be asked to provide information about yourself to register for a service offered by a Co-Branded Partner.  In doing so, you may be providing your information to both us and the Co-Branded Partner, or we may share your information with the Co-Branded Partner.  Please note that the Co-Branded Partner&rsquo;s privacy policy may also apply to its use of your information.</li>
              <li class="legal__body__list-item">Advertising.  We may share information about our users with advertisers so that they can measure the effectiveness of advertisements viewed on our Services.  For example, we may tell advertisers the number of users who clicked on a particular advertisement.  We also may use technology to deliver advertising to you on other websites based on email address or other personal information you provide to us or through the use of information we received from third parties.  </li>
              <li class="legal__body__list-item">Provider Services and other businesses of our affiliated companies.  Where permitted by law, we may share information we collect about you within our family of corporate affiliates, so that we can provide you with information about products and services that might interest you.  </li>
              <li class="legal__body__list-item">Information about your interactions with audio and video content.  Information collected about your interactions with audio and video content, including video content that you have watched, may be shared with third parties, including social networking services and audience measurement and market research services, as described in our <a class="legal__body__link" href="/about/video-services">Video Services and Social Networking Policy</a>.</li>
              <li class="legal__body__list-item">Business transfers.  We may share your information in connection with a corporate transaction, such as the sale of a Provider Service, a merger, consolidation, asset sale, or in the unlikely event of bankruptcy.</li>
              <li class="legal__body__list-item">Legal requirements.  We may disclose information about our users, including contact information, to respond to subpoenas, court orders, legal process, and other law enforcement measures, and to comply with other legal obligations, such as FCC requirements, in our sole judgment.</li>
              <li class="legal__body__list-item">Protect our Services and users.  We may disclose information to protect and defend the legal rights, interests, and safety of Provider Services, our affiliated companies, and their employees, agents, and contractors (including enforcing our agreements); to protect the safety and security of users of the Services and members of the public; and as otherwise disclosed in our <a class="legal__body__link" href="/about/terms">Terms of Use</a>.</li>
              <li class="legal__body__list-item">Aggregated or anonymized information.  We may share aggregated or anonymized information with third parties, to help us develop content and services we hope will interest you or to help these third parties develop their own products and service offerings including targeted marketing.</li>
            </ul>

          <h4 class="legal__sub-headline">5. Your Choices</h4>
          <p class="legal__body">You can choose to enjoy content and features on certain of our Services without providing us directly with any information about you; however, as described above, some information may be collected automatically or be requested so that you can take advantage of certain features and services offered on the Services.</p>
          <p class="legal__body">You have various options for expressing your preferences regarding our newsletters and other promotional communications. For example, with respect to SHO.com, you may opt out of receiving promotional email or text communications from a particular Service by following the instructions contained in any such communication. Please note that even if you opt not to receive promotional communications, we may still send you communications relating to your use of the Services, such as administrative messages, service announcements, or terms and conditions of your account.</p>
          <p class="legal__body">While each browser is different, browsers generally provide you options to accept all cookies, reject all cookies, notify you when a cookie is set, or delete cookies periodically. </p>
          <h4 class="legal__sub-headline">6. Reviewing Your Information</h4>
          <p class="legal__body">If you choose to share contact information with us, you may have the opportunity to update certain such information on a Service through your user account profile on that Service.  You also may update your information by contacting us.  If you ask us to close your account, we will do so within a reasonable period of time.  Please note that we may need to retain some information about you as a result of our ordinary procedures for operation of the Services or in order to satisfy our legal and security obligations.  For example, some of your information may remain in back-up storage even if you ask us to close your account.  In some cases, you may be entitled under local laws to access or object to the processing of information that we hold relating to you.</p>
          <h4 class="legal__sub-headline">7. Security</h4>
          <p class="legal__body">We are committed to protecting your information.  We have adopted technical, administrative and physical procedures to collect, manage, maintain and store user information in a manner designed to help protect your information from loss, misuse, unauthorized access, and alteration.  Unfortunately, no data transmission or storage can be guaranteed to be 100% secure.  We want you to feel confident using our Services, but we cannot ensure or warrant the security of any information you transmit to us, and you do so at your own risk.  Please refer to the <a class="legal__body__link" href="http://www.consumer.ftc.gov/">U.S. Federal Trade Commission&rsquo;s website</a> for information on how to protect yourself from identity theft.</p>
          <h4 class="legal__sub-headline">8. Children&rsquo;s Use of the Services</h4>
          <p class="legal__body">To access and use our connected TV applications that do not incorporate the linear feed of the SHOWTIME television service, you must be at least 14 years of age.  All of our other Services are designed for and targeted to adults.  You must be at least 18 years of age (or whatever the applicable age of majority (legal adulthood) is where you are located) to use them, except to the extent you have the permission of your parent or guardian to use a Showtime Anytime sub-account, as described in Section 9 of our <a class="legal__body__link" href="/about/terms">Terms of Use</a>.</p>
          <p class="legal__body">We are sensitive to parents&rsquo; concerns about the collection of information from children.  Accordingly, we do not desire to collect or retain personal information from children under the age of 18, even if they are authorized to use a connected TV application or Showtime Anytime sub-account.  If, during the registration or account management process, we learn that a user is under 18, we delete any personal information collected from that user. </p>
          <h4 class="legal__sub-headline" id="your-california-privacy-rights">9. Your California Privacy Rights</h4>
          <p class="legal__body">This Section 9 contains additional provisions that apply if you are a resident of the State of California.</p>
          <p class="legal__body">9.1 California Consumer Protection Act.
            The California Consumer Privacy Act (&quot;CCPA&quot;) provides consumers who are residents of the State of California with specific rights related to their personal information, subject to certain exceptions. It also requires us to disclose the information we collect, the purposes for which we collect it, and what we share and disclose.</p>
          <p class="legal__body">9.2 The Personal Information We Collect and Why.
            You have the right to know what personal information we collect and why. The information we collect and the purposes for which we use it are described in this Privacy Policy under &quot;Information Collected&quot; and &quot;Use of Information&quot; above.</p>
          <p class="legal__body">9.3 The Personal Information We Share or Disclose.
            You have the right to know what personal information we disclose or share with third parties. The personal information we share is described in this Privacy Policy under &quot;Disclosure of Information&quot;.</p>
          <p class="legal__body">9.4 Right to Know.
            You have the right to ask us what personal information we have collected from you over the past 12 months. You may make such requests up to twice a year.</p>
          <p class="legal__body">9.5 Right to Delete.
            You have the right to ask us to delete your personal information. In certain circumstances the law may not require or permit us to delete certain personal information, but if we cannot honor a deletion request, we will tell you.</p>
          <p class="legal__body">9.6 Right to Opt-Out (&quot;Do Not Sell&quot;).
            You have the right to tell us not to disclose or transfer your personal information to a third party in exchange for something of value. The CCPA refers to this as your right to say &quot;Do Not Sell&quot; my personal information. If you opt out of disclosure or transfer of your personal information, you may later opt-in again to having your personal information move more freely.</p>
          <p class="legal__body">9.7 Exercising Your Rights</p>
          <p class="legal__body">9.7.1 Right to Know and Right to Delete.
            You may ask us for the personal information we have about you, or ask us to delete your personal information, by accessing our CCPA Rights Management Tools available at (<a class="legal__body__link" href="http://privacy.cbs/managemyrights">http://privacy.cbs/managemyrights</a>) or by calling 1(888)-841-3343. When you make a request online, we will verify your identity by sending you an email and asking you to respond. When you call the toll-free number, you must leave a name and address or email address we can use to contact you.</p>
          <p class="legal__body">If you ask what personal information we have received from you, and we cannot verify your identity, or if providing the information you have requested creates a security risk, we will give you a general description of the type of personal information we have about you.</p>
          <p class="legal__body">If you ask us to delete your personal information, and we can&rsquo;t verify your identity and confirm that you made the request, we will not be able to honor it. Generally, though, if we can confirm your identity and your request, we will delete, de-identify, or aggregate your personal information so it can no longer be associated with you. There are some reasons that the law may require or permit us to keep your personal information, however.</p>
          <p class="legal__body">9.7.2 Opt-Out (Do Not Sell).
            If you do not want us to disclose or transfer your personal information to a third party in exchange for something valuable, you may opt out by clicking <a class="legal__body__link ot-sdk-show-settings" style="cursor: pointer;">Do Not Sell</a> or calling 1(888)-841-3343. When you call our toll-free number, you will need to leave a name and address or email address that we can use to contact you.</p>
          <p class="legal__body">9.7.3 Authorized Agents.
            If you are an authorized agent, you must submit your request at <a class="legal__body__link" href="http://privacy.cbs/managemyrights">http://privacy.cbs/managemyrights</a>. We will contact you with further instructions to process your request in accordance with the CCPA requirements.  In general, you will need to provide proof that you are registered with the Attorney General, as required by law, and proof you have written authority to act for the consumer. You shall also provide the email address of the consumer you are representing so we can verify their identity or provide documentation that you have power of attorney for the consumer pursuant to Probate Code sections 4000-4465. We will not be able to honor requests without sufficient documentation that you are authorized to represent the consumer or that you are registered with the Attorney General.</p>
          <p class="legal__body">9.7.4 Requests made on behalf of a &quot;Household&quot;. 
            If you would like to request personal information about your household, you must submit your request at <a class="legal__body__link" href="http://privacy.cbs/managemyrights">http://privacy.cbs/managemyrights</a>. We will contact you with further instructions to process your request.  We will need to verify the members of the household, and in some cases, if a request raises security concerns for any household member, we may not be able to honor the request.</p>
          <p class="legal__body">9.8 Financial Incentives.
            We do not offer any financial incentives for consumers to take any action or make any choices in using our services.</p>
          <p class="legal__body">9.9 Non-Discrimination.
            We will not discriminate against you for exercising any of the rights described in this Privacy Policy. Specifically, we will not deny you goods or services or charge you different prices or rates for goods or services, including through the use of discounts or other benefits, or by imposing penalties.</p>
          <p class="legal__body">9.10 California &quot;Shine the Light&quot; Law.
            Residents of the State of California may request a list of all third parties to which we have disclosed certain information during the preceding year for those third parties&rsquo; direct marketing purposes.</p>
          <p class="legal__body">9.11 Exercising these Rights.
            For all requests under the &quot;Shine the Light&quot; Law, please submit your request at <a class="legal__body__link" href="http://privacy.cbs/managemyrights">http://privacy.cbs/managemyrights</a>.  We will accept requests to exercise these rights only through this form with the proper subject line and complete and accurate information.</p>
          <p class="legal__body">9.12 Contacting Us.
            You may contact us with questions about Your California Privacy Rights at <a class="legal__body__link" href="mailto:Privacy@CBS.com?subject=Your California Privacy Rights">Privacy@cbs.com</a> or</p>
          <p class="legal__body">Showtime Networks Inc.<br>
          1633 Broadway<br>
          New York, NY 10019<br>
          Attn: Legal Department, Privacy Inquiries<br>
          </p>
          <h4 class="legal__sub-headline">10. Your Nevada Privacy Rights</h4>
          <p class="legal__body">Nevada law requires website operators to provide a way for Nevada consumers to opt out of the sale of certain information that the website operator may collect about them. This information is limited to direct identifiers, such as your name, postal address, and email address. When Nevada consumers opt out of the sale of their information, website operators must ensure that the information is not sold to another business that will further license or sell the information to others. </p>
          <p class="legal__body">If you are a Nevada resident and you would like to opt out of any possible sale of this information, please email us at <a class="legal__body__link" href="mailto:privacyadministrator@showtime.net?subject=Your Nevada Privacy Rights">privacyadministrator@showtime.net</a>. For all requests, you must put the statement “Your Nevada Privacy Rights” in the subject field of your request. You must also include your full name, street address, city, state, and zip code. We will not accept requests via telephone, postal mail, or facsimile, and we are not responsible for notices that are not labeled or sent properly, or that do not have complete information. </p>
          <h4 class="legal__sub-headline">11. Changes to This Privacy Policy</h4>
          <p class="legal__body">This Privacy Policy is effective as of the Effective Date above.  We may change this Privacy Policy in the future, and such changes will be effective upon posting, so we encourage you to review periodically the Privacy Policy applicable to each Service you use.  The most current version of the applicable Privacy Policy (along with its effective date) will be linked from each of the Services.  If you have registered an account with us for a Service and we make significant changes in the Privacy Policy for that Service, we will attempt to notify you by sending an email to the address you have registered for your account. </p>
          <h4 class="legal__sub-headline">12. Contact Information</h4>
          <p class="legal__body">If you have any questions, comments or concerns regarding this Privacy Policy and/or our privacy practices, please contact us through the contact or help feature of the relevant Service or write to us at Showtime Networks Inc., 1633 Broadway, New York, NY 10019, Attn: Customer Care, or call our customer care department at (877)4-SHOWTIME ((877)474-6984).</p>
         </section>


      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}
    {{/page}}
  {{/content}}
{{/ layouts/default}}
