import $ from 'jquery';
import {Calendar} from 'calendar';
import {
  addMonths,
  addDays,
  daysOfTheWeek,
  monthsOfTheYearShort,
  monthsOfTheYear,
  endOfMonth,
  millisecondsInADay
} from '../utils/date';
import { pad } from '../utils/string';

export default class ScheduleDatePicker {
  constructor(container, callback, ...dates) {
    // container should be a jQuery object, dates can be any number of date objects
    this.today = new Date();
    this.nextMonth = addMonths(this.today, 1);
    this.startDate = dates[0];
    this.container = container;
    this.hidden = true;
    this.callback = callback;
    this.calendarContainer = $('<div>').addClass('date-picker__calendar-container')
    this.container.append(this.calendarContainer);
    this.render();
  }

  render(){
    this.renderToggle(this.startDate);
      // scheduleDatePicker has the ability to build month calendars for all date arguments
    // dates.forEach((date) => {
    //   this.buildCalendar(date);
    // })
    // BUT we will restrict it to 2 months from the current date because that is the data set we have
    this.buildCalendar(this.today);
    this.buildCalendar(this.nextMonth);
  }

  toggleTextLabelFromDate(date) {
    return `${daysOfTheWeek[date.getDay()]}, ${monthsOfTheYearShort[date.getMonth()]} ${date.getDate()}`
  }

  calendarLabelFromDate(date) {
    return `${monthsOfTheYear[date.getMonth()]} ${date.getFullYear()}`
  }

  scheduleServiceURLFromDate(date, day) {
    //`/schedule?date=${date.format("YYYY-MM")}-${('0' + day).slice(-2)}`
    return `/schedule?date=${date.getFullYear()}-${pad(date.getMonth() + 1)}-${pad(day)}`;
  }

  renderToggle(date){
    let toggle = $('.date-picker__toggle');
    if (toggle.length === 0){
      let toggleEl = $('<div>')
        .addClass('date-picker__toggle')
        .text(this.toggleTextLabelFromDate(date))
        .click(() => this.toggleCalendar('.date-picker__calendar-container', '.date-picker__toggle'));
      this.container.append(toggleEl);
    } else {
      toggle.text(this.toggleTextLabelFromDate(date))
    }
  }

  buildCalendar(date){
    let calendarHead = $('<div>')
      .addClass('calendar__month')
      .text(this.calendarLabelFromDate(date));

    let daysRow = $('<tr>').addClass('calendar__days');
    let days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
    days.forEach(day => {
      daysRow.append($('<td>').addClass('calendar__day').text(day));
    })
    let calendarTable = $('<table>').append(daysRow);
    let calendar = $('<div>')
      .addClass('date-picker__calendar')
      .append(calendarHead)
      .append(calendarTable);
    this.calendarContainer.append(calendar);

    let calendarArray = new Calendar(0);
    calendarArray.monthDays(date.getFullYear(), date.getMonth()).forEach(week => {
      let weekRow = $('<tr>');
      week.forEach(day => {
        let weekDay = $('<td>')
        
        if (day != 0){
          weekDay.addClass('calendar__date')

          if (date.getMonth() === this.today.getMonth() && day < this.today.getDate()) {
            weekDay.addClass('calendar__date--past').text(day.toString());
          } else {
            let dateLink = $('<a>')
            .attr('href', this.scheduleServiceURLFromDate(date, day))  // zero pad day
            .attr('data-track','')
            .attr('data-context','schedule navigation')
            .attr('data-label','calendar date')
            .attr('class', 'calendar__date-link')
            .text(day.toString());
            weekDay.append(dateLink)
          }

          if (date.getMonth() === this.startDate.getMonth() && day === this.startDate.getDate()) {
            weekDay.addClass('calendar__date--selected');
          }
        }
        weekRow.append(weekDay);
      })
      calendarTable.append(weekRow);
    })
  }

  toggleCalendar(...selectors) {
    selectors.forEach((selector)=> {
      $(selector).toggleClass(`${selector.slice(1)}--active`)
    })
    this.hidden = !this.hidden;
  }

  selectDate(e) {
    let selectedDay = $(e.target).text();
    let selectedMonth = $(e.target).parents('table').prev().text();
    let selectedDate = new Date(`${selectedDay} ${selectedMonth}`);
    console.log(selectedDate)
    this.callback()
  }

  incrementDay(){
    // limited to last available schedule - end of next month + the following day
    if( endOfMonth(this.nextMonth).getTime() - this.startDate.getTime() > millisecondsInADay ) {
      this.calendarContainer.empty()
      addDays( this.startDate, 1, true );
      this.render();
    }
  }

  decrementDay(){
    // limited to today
    if ( this.today.getTime() - this.startDate.getTime() > millisecondsInADay ){
      this.calendarContainer.empty()
      addDays( this.startDate, -1, true );
      this.render();
    }
  }
}