---
name: Order Banner (Refresh)
collection: order
---

# Order Banner (Refresh)

The refreshed order banner takes the place, in the majority of contexts, of both the legacy order banner and order promo components. On smaller/mobile widths, the left-side image is simply hidden.

The component can accept a variant classname in addition, i.e. .refresh-order-banner--no-image, which will hide the image, resulting in a legacy promo style that can fit within in a column, instead of a full-bleed context.

<section class="refresh-order-banner">
  <div class="refresh-order-banner__inner" data-context="banner">
    <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__image-wrapper">
      <div class="refresh-order-banner__image lazyload" data-bgset="https://www.sho.com/assets/images/refresh/refresh-order-banner-no-borders_960x180.jpg">
      </div>
    </a>
    <div class="refresh-order-banner__body">
      <div class="refresh-order-banner__topline">Limited Time Offer</div>
      <h3 class="refresh-order-banner__headline">$3.99/MO FOR 3 MONTHS<sup>&#42;</sup></h3>
      <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">try 30 days free</a>
      <div class="refresh-order-banner__legal">&#42;Terms apply.</div>
    </div>
  </div>
</section>

```
<section class="{{$className}}{{/className}} refresh-order-banner section--inner">
  <div class="refresh-order-banner__inner" data-context="banner">
    <a href="{{ctaLink}}" data-track data-label="order"class="refresh-order-banner__image-wrapper">
      <div class="refresh-order-banner__image lazyload" data-bgset="{{imageUrl}}">
      </div>
    </a>
    <div class="refresh-order-banner__body">
      <div class="refresh-order-banner__topline">{{topLine}}</div>
      <h3 class="refresh-order-banner__headline">{{title}}</h3> 
      <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">{{ctaLabel}}</a>
      <div class="refresh-order-banner__legal">{{subTitle}}</div>
    </div>
  </div>
</section>
```


  
<br><br> 

# Order Banner (No Image; Promo Style)

<section class="refresh-order-banner refresh-order-banner--no-image" style="max-width: 500px">
  <div class="refresh-order-banner__inner" data-context="banner">
    <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__image-wrapper">
      <div class="refresh-order-banner__image lazyload" data-bgset="https://www.sho.com/assets/images/refresh/refresh-order-banner-no-borders_960x180.jpg">
      </div>
    </a>
    <div class="refresh-order-banner__body">
      <div class="refresh-order-banner__topline">Limited Time Offer</div>
      <h3 class="refresh-order-banner__headline">$3.99/MO FOR 3 MONTHS<sup>&#42;</sup></h3>
      <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">try 30 days free</a>
      <div class="refresh-order-banner__legal">&#42;Terms apply.</div>
    </div>
  </div>
</section>

Example of passing a classname to the partial:
```
{{< partials/order/_order_banner}}
  {{$className}}refresh-order-banner--no-image{{/className}}
{{/ partials/order/_order_banner}}
```

```
<section class="section--inner refresh-order-banner refresh-order-banner--no-image">
  <div class="refresh-order-banner__inner" data-context="banner">
    <a href="{{ctaLink}}" data-track data-label="order"class="refresh-order-banner__image-wrapper">
      <div class="refresh-order-banner__image lazyload" data-bgset="{{imageUrl}}">
      </div>
    </a>
    <div class="refresh-order-banner__body">
      <div class="refresh-order-banner__topline">{{topLine}}</div>
      <h3 class="refresh-order-banner__headline">{{title}}</h3> 
      <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">{{ctaLabel}}</a>
      <div class="refresh-order-banner__legal">{{subTitle}}</div>
    </div>
  </div>
</section>
```
 
