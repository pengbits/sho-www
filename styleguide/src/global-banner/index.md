---
name:  Global Banner
collection: components
---

# Global Banner

Global Banner can be customized in Paige to have different backgrounds in Mobile and Desktop. Logic is written such that when there is a mobile background image in paige, then the html is used to reflect that. Otherwise the same image is used for both desktop and mobile.

<a id="" class="global-banner global-banner__switch" data-track="" data-context="global navigation" data-label="" href="https://www.sho.com/video/76634/yellowjackets-series-premiere-tvma">
  <div class="global-banner__bg global-banner__desktop" style="background-image: url(https://cdn.optimizely.com/img/2628570003/00f9a915c50f4431ae75c434c3bcc310.png);">
    <div class="global-banner__content" style="background-image: url(https://cdn.optimizely.com/img/2628570003/403d005993d042e2b7a1ec1168552a79.png);">
    </div>
  </div>
  <div class="global-banner__bg global-banner__mobile" style="background-image: url(https://www.sho.com/site/image-bin/images/1035479_2_0/1035479_2_0_pro01_568x568.jpg);">
    <div class="global-banner__content" style="background-image: url();">
    </div>
  </div>
</a> 

```
<a id="" class="global-banner {{#smallImageUrl}}global-banner__switch{{/smallImageUrl}}" data-track="" data-context="global navigation" data-label="{{topLine}}" href="{{ctaLink}}">
  <div class="global-banner__bg global-banner__desktop" style="background-image: url({{subTitle}});">
    <div class="global-banner__content" style="background-image: url({{ctaLabel}});">
    </div>
  </div>
  <div class="global-banner__bg global-banner__mobile" style="background-image: url({{smallImageUrl}});">
    <div class="global-banner__content" style="background-image: url({{imageUrl}});">
    </div>
  </div>
</a>
```
