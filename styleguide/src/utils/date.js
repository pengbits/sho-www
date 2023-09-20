import { pad } from "./string";

/**
 * Determines whether a date in the XX/XX/XXXX string format. Does no other validation.
 * @param {String} dateString The date string to for the expected format
 * @returns Whether or not the string matches the expected format
 */
function isExpectedFormat(dateString) {
  return /^\d\d\/\d\d\/\d\d\d\d$/.test(dateString);
}
/**
 * Breaks apart a date string in the MM/DD/YYYY format into a date, month, day and year
 * @param {String} dateString The date string in the format MM/DD/YYYY
 * @returns An array with the a date object, and the month, day and year. If the wrong format is passed you receive an empty array.
 */
function dateAndPartsForString(dateString) {
  const [mnth, day, year] = dateString.split('/').map(p => parseInt(p, 10));
  const month = mnth - 1;
  const pDate = new Date(year, month, day);
  return isExpectedFormat(dateString) ? [pDate, month, day, year] : [];
}
/**
 * Takes a string in the general YYYYMMDD format. Allows for any non-numeric delimiter.
 * @param {String} dateString The date string to convert
 * @returns Date object for the given string
 */
export function dateFromYYYYMMDD(dateString) {
  const nums = dateString.replace(/\D/g, '');
  const year = parseInt(nums.slice(0, 4));
  const month = parseInt(nums.slice(4, 6)) - 1;
  const day = parseInt(nums.slice(6, 8));
  return new Date(year, month, day);
}
/**
 * Takes a date and formats it into a YYYYMMDD format
 * @param {Date} date The date to format
 * @param {String} delimiter Delimiter to separate date components. Default is -
 * @returns Formatted string for date
 */
export function dateToYYYYMMDD(date, delimiter = "-") {
  return date.getFullYear() + delimiter + pad( date.getMonth() + 1 ) + delimiter + pad(date.getDate());
}
/**
 * Tests whether or not a date is valid.
 * @param {String} dateString Assumes input is "MM/DD/YYYY"
 * @returns Boolean
 */
export function isValidDate(dateString) {
  const [date, month, day, year] = dateAndPartsForString(dateString);
  return date !== undefined ? date.getMonth() === month && date.getDate() === day && date.getFullYear() === year : false;
}
/**
 * Gets the age given the born date
 * @param {String} dateString Assumes input is "MM/DD/YYYY"
 * @returns Integer for age or NaN if the input is invalid
 */
export function ageInYears(dateString) {
  const today = new Date();
  const [birthDate] = dateAndPartsForString(dateString);
  if (birthDate === undefined) {
    return NaN;
  }
  let age = today.getFullYear() - birthDate.getFullYear();
  const mDiff = today.getMonth() - birthDate.getMonth();
  if (mDiff < 0 || (mDiff === 0 && today.getDate() < birthDate.getDate())) {
    age--;
  }
  return age;
}
/**
 * Provides the number of days for the provided month and year.
 * @param {Number} month Zero indexed number of the month (e.g. January is 0, February is 1, etc.)
 * @param {Number} year The year for which you want the number of days
 * @returns The number of days in the provided month and year accounting for leap years
 */
export function daysInMonth(month, year) {
  return new Date(year, month + 1, 0).getDate();
}
/**
 * Moves a date to the last millisecond of its month
 * @param {Date} date The date whic needs to be moved to the end of the month
 * @param {Bolean} mutate Whether or not to mutate the provided date or provide a cloned version
 * @returns A date moved to the last day, hour, minute, second and millisecond of that month
 */
export function endOfMonth(date, mutate = false) {
  const d = daysInMonth(date.getMonth(), date.getFullYear());
  const dt = mutate ? date : new Date(date.getTime())
  dt.setDate(d);
  dt.setHours(23, 59, 59, 999);
  return dt;
}
/**
 * Adds n number of months to a date accounting for year rollover
 * @param {Date} date The date to which months should be added
 * @param {Number} months The number of months to add
 * @param {Boolean} mutate Whether or not to mutate the provided date or provide a cloned version
 * @returns A date with the added months
 */
export function addMonths(date, months, mutate = false) {
  const dt = mutate ? date : new Date(date.getTime());
  var d = dt.getDate();
  dt.setMonth(dt.getMonth() + +months);
  if (dt.getDate() != d) {
    dt.setDate(0);
  }
  return dt;
}
/**
 * Adds n number of days to a date accound for month and year rollover.
 * @param {Date} date The date to which days should be added
 * @param {Number} days The number of days to add
 * @param {Boolean} mutate Whether or not to mutate the provided date or provide a cloned version
 * @returns A date with the added days
 */
export function addDays(date, days, mutate = false) {
  const dt = mutate ? date : new Date(date.getTime());
  dt.setDate(date.getDate() + days);
  return dt;
}
/**
 * Adds n number of seconds to a date accounting for minute rollover
 * @param {Date} date The date which seconds should be added
 * @param {Number} seconds The number of seconds to add
 * @param {Boolean} mutate Whether or not to mutate the provided date or provide a cloned version
 * @returns A date with the seconds added
 */
export function addSeconds(date, seconds, mutate = false) {
  const dt = mutate ? date : new Date(date.getTime());
  dt.setSeconds(dt.getSeconds() + seconds);
  return dt;
}
/**
 * Checks to see if the date is daylights saving day. This is a hack.
 * @param {Date} date The date to check whether it's daylights saving day
 * @returns Whether or not it's daylights saving day
 */
export function isDST(date) {
  let jan = new Date(date.getFullYear(), 0, 1).getTimezoneOffset();
  let jul = new Date(date.getFullYear(), 6, 1).getTimezoneOffset();
  return Math.max(jan, jul) !== date.getTimezoneOffset();    
}
/**
 * Changes the timezone of a date to a new timezone. This is a hack.
 * @param {Date} date The date to transform to the provided timezone
 * @param {String} tzString The timezone string to which to convert
 * @returns A converted date
 */
export function convertTZ(date, tzString = "America/New_York") {
  return new Date(date.toLocaleString("en-US", { timeZone: tzString }));
}
/**
 * Returns absolute value of milliseconds between the two dates
 * @param {Date} first Date to compare
 * @param {Date} second Date to compare
 * @returns Difference in milliseconds
 */
export function diffInMilliseconds( first, second ) {
  return Math.abs(first.getTime() - second.getTime());
}
/**
 * Returns absolute value of seconds between the two dates. On account of the way we think about
 * seconds and usually present them we are rounding as 9.95 seconds will feel like 10 seconds.
 * @param {Date} first Date to compare
 * @param {Date} second Date to compare
 * @returns Difference in seconds
 */
export function diffInSeconds( first, second ) {
  return Math.round(diffInMilliseconds( first, second ) / millisecondsInASecond)
}
/**
 * Returns absolute value of minutes between the two dates
 * @param {Date} first Date to compare
 * @param {Date} second Date to compare
 * @returns Difference in minutes
 */
export function diffInMinutes( first, second ) {
  return Math.floor(diffInMilliseconds( first, second ) / millisecondsInAMinute)
}
/**
 * Returns absolute value of hours between the two dates
 * @param {Date} first Date to compare
 * @param {Date} second Date to compare
 * @returns Difference in hours
 */
export function diffInHours( first, second ) {
  return Math.floor(diffInMilliseconds( first, second ) / millisecondsInAnHour)
}
/**
 * Returns absolute value of days between the two dates
 * @param {Date} first Date to compare
 * @param {Date} second Date to compare
 * @returns Difference in days
 */
export function diffInDays( first, second ) {
  return Math.floor(diffInMilliseconds( first, second ) / millisecondsInADay)
}
/**
 * Number of milliseconds in a second
 */
export const millisecondsInASecond = 1000;
/**
 * Number of milliseconds in a minute
 */
export const millisecondsInAMinute = (1000 * 60);
/**
 * Number of milliseconds in an hour
 */
export const millisecondsInAnHour = (1000 * 60 * 60);
/**
 * Number of milliseconds in a day
 */
export const millisecondsInADay = (24 * 60 * 60 * 1000);
/**
 * Array of days of the week for use by date.getDay()
 */
export const daysOfTheWeek = [
  'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
]
/**
 * Array of month names for use by date.getMonth()
 */
export const monthsOfTheYear = [
  'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
]
/**
 * Array of shortened month names for use by date.getMonth()
 */
export const monthsOfTheYearShort = [
  'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
]