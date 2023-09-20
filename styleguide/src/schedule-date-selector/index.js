import $ from 'jquery';
import isTouchDevice from '../utils/touch-events'

import ScheduleDateInput from './schedule-date-input.js';
import ScheduleDatePicker from './schedule-date-picker.js';

class ScheduleDateSelector {
	constructor(cfg) {
		if (cfg.date) {
			this.date = new Date(cfg.date);
		} else {
			this.date = new Date();
		}

		let el = $(cfg.el);
    const useDateInput = isTouchDevice() && !!(navigator.userAgent.match(/(iPhone)|(iPad)|(iPod)|(Android)/))
    console.log(`Schedule-Date-Selector useDateInput? ${useDateInput}`)
    if (useDateInput) {
			window.picker = new ScheduleDateInput(el, this.onSelectDate, this.date);
		} else {
			window.picker = new ScheduleDatePicker(el, this.onSelectDate, this.date);
		}
	}

	onSelectDate(date) { 
		window.location = `/schedule?date=${date}`
	}
}

export default ScheduleDateSelector;