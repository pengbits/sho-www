// static utility methods for read/write of document.cookie,
// extracted from variations/controls.js

const getCookie = (key) => {
  const cookies = document.cookie.split('; ');
  const match   = cookies.find(c => c.indexOf(key) == 0);
  const value   = (match || '=').split('=').pop();

  if(value){
    return value
  } else {
    return null 
  }
  // ^ please resist changing this into a one-liner like `return v ? v : null`... very elegant but harder to debug with breakpoints
} 

// adapted from quirksmode example http://www.quirksmode.org/js/cookies.html
// setCookies takes a key, value and an optional expiration and domain parameter
// the expiration can be a number, in which case it is treated as the number of days,
// or a string, which can be used to pass one of two modes:
// - 'forever':cookie lives forever (actually ten years, the legacy default) 
// - 'session':cookie lives for the length of the session. equivalent to passing null, as no 'expires=' piece will be included in the output
const setCookie = (key, value, expires_, domain) => {
  let 
    days,
    date,
    expires
  ;
  if (typeof expires_ === 'number') {
    days = expires_;
  } else {
    if (expires_ == 'session') {}
    if (expires_ == 'forever'){
      days = 365 * 10;
    }
  }
  if(days){
    date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    expires = date.toGMTString();
  }
  
  let output = `${key}=${value}; ` + (expires ? `expires=${expires};` : '') + (domain ? `domain=${domain};` : '') + ` path=/;`
  if(location && location.protocol && location.protocol == 'https:') {
    output += " secure";
  }
  // console.log(`|cookies| document.cookie='${output}'`)
  document.cookie = output
}

export default {
  get:getCookie,
  set:setCookie
}