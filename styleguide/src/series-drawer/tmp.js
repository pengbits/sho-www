// you can run this in the console to temporarily convert the images coming from backend to desired format
$('.series-drawer__catalog-grid__image img').map(function(){
  var dirty = this.src;
  var regex = /(00|01)_(200x300|300x450)/
  var match = regex.exec(dirty)[0]
  var clean = dirty.replace(regex, '01h_210x118');
  // console.log('was `'+dirty+'` now: `'+clean+'`') 
  this.src = clean
})