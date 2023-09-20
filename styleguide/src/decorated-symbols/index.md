---
name: Decorated Symbols
collection: components
---

# Decorated Symbols

This is a javascript function for coercing ® and * into bespoke sizes, an extremely small font-size set against a much larger headline. 
The effect is achieved with some custom markup, but since the copy comes from editorial-controlled sources, it can't be stored as html

## Before
```
<h1> $10.99/month. Cancel anytime.*</h1>
```

## After
```
<h1> $10.99/month. Cancel anytime.<span class="decorated-symbols_symbol decorated-symbols__symbol--asterisk"></h1>
```

<div style="padding:30px; background-color:#000">
  <h1 class="header js-format-symbols">STREAM SHOWTIME NOW</h1>
  <h3 class="header js-format-symbols">Start your 30-day free trial, then only $10.99/month. Cancel anytime.*</h3>
</div>

```
<div style="padding:30px; background-color:#000">
  <h1 class="header js-format-symbols">STREAM SHOWTIME NOW</h1>
  <h3 class="header js-format-symbols">Start your 30-day free trial, then only $10.99/month. Cancel anytime.*</h3>
</div>

// ik decorated-symbols/index.js
const decorateSymbols = (el) => {
	const wasDecorated = !!el.querySelector('.js-format-symbols .decorated-symbols__symbol--reg')
	if(!wasDecorated){
		const textWithFormatedSymbols = el.innerHTML
				.replace('®',	`<span class="decorated-symbols__symbol decorated-symbols__symbol--reg">®</span>`)
				.replace("*",	`<span class="decorated-symbols__symbol decorated-symbols__symbol--asterisk">*</span>`);
		el.innerHTML = textWithFormatedSymbols;
	}
}

const decorateAllSymbols = (context) => {
	// console.log(`|decorated-symbols__symbol| decorateSymbols(${context})`)
	const items = document.querySelectorAll('.js-format-symbols');
	[].forEach.call(items, decorateSymbols)
}

export default decorateAllSymbols // used as decorateSymbols elsewhere

// called from
// in sho/index.js, decorated-symbols__symbol.index.js etc
decorateAllSymbols('domready')
```