---
name: Abandoned Cart Modal
collection: order
pageTracking: "sho:styleguide:cart-modal..."
---

# Abandoned Cart Modal 

A modal or lower-third style banner that is shown to users who have previously demonstrated a high intent of purchasing the service.


<button class="button--secondary" onclick="AbandonedCart.modal({'layout':'modal'})"  style="margin-right:15px">
  Open Default Modal
</button>

<button class="button--secondary" onclick="AbandonedCart.modal({'layout':'lower-third'})">
  Open Lower-Third Modal
</button>

<p>&nbsp;</p>

## Cookie functionality
when the abandoned cart modal is opened it will write a cookie to mark that it has been seen by a user. subsequent calls to open the modal will be ignored, until the cookie is cleared or expires (7 days from opening). _this functionality is bypassed in the styleguide, so it only applies to sho.com_

```
// set when modal is opened
Cookies.set('abandoned_cart_opened', true, 7)
```
in order to clear the cookie and see the component a second time, open developer tools: cookies: application and delete the row containing `abandoned_cart_opened`


## Activating with Optimizely
The primary way to trigger the widget is through Optimizely. This is a natural fit as we can use the user segmentation and behavior tracking functionality of the platform, and just concern ourselves with building the ui and supporting the handshake with optimizely so that the Abandoned Cart Modal is displayed at the right time. The widget can be invoked from Optimizely by defining variation code that sets the `sho_variations` window object with an entry under `cart` with the following 3 parameters:

1. Layout: lower-third or modal
2. Second Delay: The number of seconds to wait after invokation before showing the widget. 0 would be show immediately.
3. Theme: The theme to use from the Paige content block. Empty means no theme.

```
// to trigger form optimizely, define an experiment with the following variation code:
window.sho_variations = window.sho_variations || {}
window.sho_variations.abandoned_cart = {
  'layout':'modal',
  'theme':'yourhonor',
  'delay': 0
}

// or, for a lower-third version without a theme:
window.sho_variations.abandoned_cart = {
  'layout':'lower-third',
  'delay': 0
}
```

The widget will need to get its data from the content block created in DATABASE-1395. Please see the attached document for the mappings from content block to widget. The content block api in www does not currently support themes but will once SITE-21544 is complete.

We don't want this to show up on the order page or the stream-showtime page. Perhaps we can use the page-tracking variable use a startsWith('sho:order') type of thing as opposed to interrogating the url.

You can see the modal design here: https://showtime.invisionapp.com/share/5WONP2GQTFZ#/screens/326422901
You can see the lower third design here: https://showtime.invisionapp.com/share/XET3IC06PTZ#/screens/375126131


## Deprecated: Triggering via URL
In the previous version it was possible to render a link to a url (hash fragment) that would open the abandoned cart modal when clicked/visited. This functionality is no longer supported due to complexities in supporting different layouts with dynamic content.

```
<a class="button--solid-red" href="#/cart/open">Cart Modal</a>
```

If the cart is opened for the first time it drops a cookie called "abandoned_cart_opened". Once this cookie is dropped the cart modal cannot be opened again.
