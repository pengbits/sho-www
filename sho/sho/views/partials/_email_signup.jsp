{{!
---
name: email signup
source: /styleguide/src/email-signup/index.md
}}

{{#emailSignUp}}
<section class="section--large">
  <div
    id="email-signup-widget"
    class="js-react-email-signup"
    data-pub-id="{{#meta.valueMap}}{{newsletter_attr_id}}{{/meta.valueMap}}"
    data-headline="{{#headline}}{{headline}}{{/headline}}{{^headline}}GET EMAIL UPDATES{{/headline}}"
    data-cta="{{#ctaLabel}}{{ctaLabel}}{{/ctaLabel}}{{^ctaLabel}}Sign Up{{/ctaLabel}}"
    data-tracking-context="email signup:{{meta.valueMap.newsletter_title}}"
  >
  </div>
</section>
{{/emailSignUp}}
