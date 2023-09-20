---
name:  TV Provider Modal
collection: order
pageTracking: "sho:styleguide:tv-provider-modal"
---
# TV Provider Modal



The TV provider list uses the Modal component in order to render the list of providers in a lightbox/overlay effect over the page. The hash-change component is used to trigger the behavior, so a hash of `#/tv-providers-modal/open` will open the component, and `#/tv-providers-modal/close` will close it.

Historically, the tv-provider was stored in a hard-coded json map, along with the order-tray's source files. Now we've done away with the order-tray, and the provider data is actually available as part of the order page's response. While we could have reworked the entire component into a totally server-side solution where the list of providers is part of the initial response, and then somehow 'uncloaked' or assembled into place on demand, this is probably overkill for this use-case, and bloating the dom with the hundred or so tv providers is undesirable given that any users may not click on the tv option at all - so the modal performs an xhr request to the json version of the order page and renders the resulting data into the modal on the fly, similar to before.

<table class="streaming-modal-example-buttons">
  <tr>
    <td>
      TV Provider List example "#/tvproviders/open
    </td>
    <td>
      <a class="button--fixed-width button--solid-red button--skinny" href="#/tvproviders/open">Open TV Providers List</a>  
    </td>
  </tr>
 </table>
