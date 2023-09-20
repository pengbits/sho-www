---
name: Privacy Policy Overlay
collection: components
---

# Privacy Policy Overlay

As part of the privacy policy changes for sho.com (and other sites), we need a way to push a notice out to our users. In order to solve for this, CBS is using the optanon/onetrust library thats already integrated with sho.com to render an absolutely-positioned banner into the bottom of the page at runtime. The banner appears to be cookied so the user won't see it more than once. While the notice/banner is not part of our codebase, we have captured it here for reference, and to provide a context for styling the ui.

```
<div id="cps-shaman-notifier">
  <div data-reactroot="" class="cps-banner cps-container">
    <div class="cps-content">
      <p>
        <!-- react-text: 5 -->Thank you for being a valued user of ViacomCBS Services. We have updated our Privacy Policy to describe our collection and use of personal information across the ViacomCBS family of companies. Please read it carefully to
        understand our privacy practices and your privacy rights. By continuing to use this Service, you acknowledge that you have read the updated Privacy Policy, which can be viewed at
        <!-- /react-text --><a href="https://www.viacomcbsprivacy.com/policy" target="_blank">https://www.viacomcbsprivacy.com/policy</a><!-- react-text: 7 -->.
        <!-- /react-text -->
      </p>
    </div>
    <div class="cps-actions"><a class="cps-btn cps-dismiss" tabindex="1">Continue</a></div>
  </div>
</div>

<style type="text/css">
div#cps-shaman-notifier {
  position: fixed;
  bottom: 0;
  left: 0;
  background: #fff;
  color: #000;
  z-index: 4000000;
  border-top: 1px solid #000
}

div#cps-shaman-notifier .cps-container {
  display: grid;
  gap: 2em;
  align-items: center;
  grid-template-columns: auto 140px;
  font-size: 16px;
  font-family: arial, helvetica, sans-serif;
  margin: .5em 1.75em
}

div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn {
  color: #fff;
  background: #000;
  border: 1px solid #000
}

div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn:focus {
  outline: 5px double -webkit-focus-ring-color
}

div#cps-shaman-notifier .cps-container .cps-content p {
  line-height: 1.48;
  font-size: 16px;
  margin: 1em 0;
  color: #000
}

div#cps-shaman-notifier .cps-container .cps-content a {
  color: blue
}

div#cps-shaman-notifier .cps-container .cps-actions {
  text-align: center
}

div#cps-shaman-notifier .cps-container .cps-actions a {
  padding: 1em 1.5em;
  background: #fff;
  color: #000;
  border: 1px solid #000;
  border-radius: .5em
}

div#cps-shaman-notifier .cps-container .cps-actions a:hover {
  cursor: pointer
}


@media only screen and (max-width:767px) {
  div#cps-shaman-notifier .cps-container {
    grid-template-columns: auto;
    margin-bottom: 2em;
    overflow-wrap: anywhere
  }
}
</style>
```
<div id="cps-shaman-notifier">
  <div data-reactroot="" class="cps-banner cps-container">
    <div class="cps-content">
      <p>
        <!-- react-text: 5 -->We’ve updated our Privacy Policy to describe our collection and use of personal information across the ViacomCBS family of companies. By continuing to use this Service, you acknowledge you’ve read the updated Privacy Policy, <!-- /react-text --><a href="https://www.viacomcbsprivacy.com/policy" target="_blank">https://www.viacomcbsprivacy.com/policy</a><!-- react-text: 7 -->.<!-- /react-text -->
      </p>
    </div>
    <div class="cps-actions"><a class="cps-btn cps-dismiss" tabindex="1">Continue</a></div>
  </div>
</div>

<!-- BEGIN sho overrides -->
<style type="text/css">
div#cps-shaman-notifier {
	background-color: #222226 !important; 
	color: #FFFFFF !important;
}
div#cps-shaman-notifier .cps-container .cps-content p,
div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn  {
  font-family: ff-din-web,Calibri,Arial,sans-serif !important;
	color: #FFFFFF !important;
}
div#cps-shaman-notifier .cps-container .cps-content a {
  color: #FFFFFF !important;
	text-decoration: underline !important;
}
</style>
<!-- END sho overrides -->

<style type="text/css">
div#cps-shaman-notifier {
  position: fixed;
  bottom: 0;
  left: 0;
  background: #fff;
  color: #000;
  z-index: 4000000;
  border-top: 1px solid #000
}

div#cps-shaman-notifier .cps-container {
  display: grid;
  gap: 2em;
  align-items: center;
  grid-template-columns: auto 140px;
  font-size: 16px;
  font-family: arial, helvetica, sans-serif;
  margin: .5em 1.75em
}

div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn {
  color: #fff;
  background: #000;
  border: 1px solid #000
}

div#cps-shaman-notifier .cps-container .cps-actions a.cps-btn:focus {
  outline: 5px double -webkit-focus-ring-color
}

div#cps-shaman-notifier .cps-container .cps-content p {
  line-height: 1.48;
  font-size: 16px;
  margin: 1em 0;
  color: #000
}

div#cps-shaman-notifier .cps-container .cps-content a {
  color: blue
}

div#cps-shaman-notifier .cps-container .cps-actions {
  text-align: center
}

div#cps-shaman-notifier .cps-container .cps-actions a {
  padding: 1em 1.5em;
  background: #fff;
  color: #000;
  border: 1px solid #000;
  border-radius: .5em
}

div#cps-shaman-notifier .cps-container .cps-actions a:hover {
  cursor: pointer
}

@media only screen and (max-width:767px) {
  div#cps-shaman-notifier .cps-container {
    grid-template-columns: auto;
    margin-bottom: 2em;
    overflow-wrap: anywhere
  }
}
</style>

