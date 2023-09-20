---
name: Terms Modal
collection: components
---

# Terms Modal

A modal or lower-third style banner that is shown to users who have previously demonstrated a high intent of purchasing the service.


<button class="button--secondary" onclick="Terms.modal()">
  Open Terms Modal
</button>

<p>&nbsp;</p>

<span class="terms-modal-auto-open-trigger"></span>

## Cookie functionality
when the terms modal is opened it will write a cookie to mark that it has been seen by a user. subsequent calls to open the modal will be ignored, until the cookie is cleared or expires (60 days from opening). _this functionality is bypassed in the styleguide, so it only applies to sho.com_

```
// set when modal is opened
Cookies.set('terms_modal_opened', true, 60)
```
in order to clear the cookie and see the component a second time, open developer tools: cookies: application and delete the row containing `terms_modal_opened`

