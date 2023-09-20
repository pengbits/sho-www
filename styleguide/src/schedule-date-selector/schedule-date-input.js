import $ from 'jquery';
import { addMonths, endOfMonth, addDays } from '../utils/date';
import { pad } from '../utils/string';

export default class ScheduleDateInput {
	constructor(container, callback, date) {
    this.callback = callback;
		this.today = new Date();
		this.startDate = date;
		this.nextMonth = addMonths(this.today, 1);
		this.input = $('<input>')
		.addClass('date-picker__input')
		.attr({
			type: 'date',
			required:'required',
			min: this.boundsInputLabelFromDate(this.today),
			max: this.boundsInputLabelFromDate(endOfMonth(this.nextMonth))
		})
		.val(this.boundsInputLabelFromDate(this.startDate));

		// Since Android fires 'change' event & iPhone fires 'blur' when date input is set
		if (navigator.userAgent.match(/Android/)) {
			// Also add the 'android' class to remove background image arrow icon so it doesn't conflict with default because there's no other way to get rid of it mmmk?
			$('html').addClass('android');
			this.input.change((e) => this.selectDate(e));
		} else if (navigator.userAgent.match(/(iPhone)|(iPad)|(iPod)/)) {
			this.input.blur((e) => this.selectDate(e));
		}
		
		container.append(this.input);
	}

	boundsInputLabelFromDate(date) {
		return `${date.getFullYear()}-${pad(date.getMonth() + 1)}-${pad(date.getDate())}`
	}

	selectDate(e){
    $.event.trigger({
    	type: "scheduleDateSelected"
    });
    
		let selectedDate = e.target.value;
    this.callback(selectedDate);
	}

	incrementDay(){
    // limited to last available schedule - end of next month + the following day
    if( endOfMonth(this.nextMonth).getTime() - this.startDate.getTime() > millisecondsInADay ) {
			addDays(this.startDate, 1, true);
			this.input.val(this.boundsInputLabelFromDate(this.startDate));
    }
  }

  decrementDay(){
    // limited to today
    if ( this.today.getTime() - this.startDate.getTime() > millisecondsInADay ){
			addDays(this.startDate, -1, true);
			this.input.val(this.boundsInputLabelFromDate(this.startDate));
    }
  }
}