import $ from 'jquery';
import {
	addSeconds,
	diffInDays,
	diffInHours,
	diffInSeconds,
	diffInMinutes
} from '../utils/date';

class CountdownWidget {
	constructor(cfg) {
		this.el = $(cfg.el);
		Object.assign(this, {
			title: this.el.data('title') ? this.el.data('title') : '',
			timeUnits: this.el.data('timeUnits') ? this.el.data('timeUnits').split(' ').join('').split(',') : ['days', 'hrs', 'mins', 'secs'],
			timer: this.el.data('timer') ? !!this.el.data('timer') : false,
			redirect: this.el.data('redirect') ? this.el.data('redirect') : null,
			targetDate: this.el.data('date') ? this.el.data('date') : null,
		});

		if (this.timer === true) {
			let args = this.targetDate.split(' ');
			let number = parseInt(args[0]);
			let timeUnit = args[1];
			if( timeUnit !== 'seconds' ) {
				throw(`Timer only supports countdowns in seconds. It no longer supports a countdown of ${timeUnit}.`)
			}
			this.targetDate = addSeconds((new Date()), number, true);
		} else if (this.targetDate !== null) {
			this.targetDate = new Date(this.targetDate);
		}
		
		let title = $('<div>').addClass('countdown-widget__title').text(this.title);
		this.el.append(title);
		this.appendTimeUnits();
		this.callback = this.setCallback()
		this.update();
		this.interval = setInterval(() => this.update(), 1000);
	}

	setCallback() {
		if (this.redirect) {
			return () => { 
				window.location = this.redirect;
		 	}
		} else {
			return () => { this.cancel() }
		}
	}

	appendTimeUnits() {
		this.timeUnits.forEach((timeUnit) => {
			let timeUnitsContainer = $('<div>').addClass('countdown-widget__time-units');
			let timeEl = $('<div>').addClass('countdown-widget__time countdown-widget__time--' + timeUnit);
			let timeUnitEl = $('<div>').addClass('countdown-widget__time-unit countdown-widget__time-unit--' + timeUnit).text(timeUnit);
			timeUnitsContainer.append(timeEl).append(timeUnitEl);
			this.el.append(timeUnitsContainer);
		})
	}

	getDiffs() {
		let now = new Date();
		let diffs = {};
		diffs.days = diffInDays(now, this.targetDate);
		diffs.hrs = diffInHours(now, this.targetDate) % 24;
		diffs.mins = diffInMinutes(now, this.targetDate) % 60;
		diffs.secs = diffInSeconds(now, this.targetDate) % 60;
		for (let timeUnit in diffs) {
			if (diffs[timeUnit].toString().length < 2 && this.timer === false) {
				diffs[timeUnit] = '0' + diffs[timeUnit].toString();
			}
		}
		return diffs;
	}

	appendTimes(diffs){
		for (let timeUnit in diffs) {
			this.el.find('.countdown-widget__time--' + timeUnit).text(diffs[timeUnit]);
		}
	}

	update() {
		if (this.targetDate > new Date()) {
			this.appendTimes(this.getDiffs());
		} else {
			window.clearInterval(this.interval);
			this.callback();
		}
	}

	cancel() {
		window.clearInterval(this.interval);
		this.el.remove();
	}
}

export default CountdownWidget;