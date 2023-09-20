import $ from 'jquery';
// this is a javascript function for coercing ® and * into more agreeable sizes with aid of special markup
// initially used in /order and /stream-showtime, bringing this into the sho context for use in bulk page

export const decorateSymbols = (el) => {
	if(!$(el).hasClass('decorated-symbols')){
		$(el).addClass('decorated-symbols')
		const textWithFormatedSymbols = el.innerHTML
			.replace('®',	`<span class="decorated-symbols__symbol decorated-symbols__symbol--reg">®</span>`)
			.replace("*",	`<span class="decorated-symbols__symbol decorated-symbols__symbol--asterisk">*</span>`);
		el.innerHTML = textWithFormatedSymbols;
	}
}

export const decorateAllSymbols = (context) => {
	console.log(`${context} decorateSymbols()`)
	const items = document.querySelectorAll('.js-format-symbols');
	[].forEach.call(items, decorateSymbols)
}

export default decorateAllSymbols