var camelize = (function(str){
  var camelized = '';
  var segments = str.split(/[_-]/)
  var length = segments.length;
  for(var l=0; l<segments.length; l++){
    var phrase = segments[l];
    if(l==0){
      camelized += phrase;
    }
    else {
      camelized += phrase.substr(0,1).toUpperCase();
      camelized += phrase.substr(1);
    }
  }
  return camelized;
})

const uncamelize = (str, delim=' ') => {
  const segments = str.replace(/[A-Z]+/g, function (match) {
    return delim + match.toLowerCase()
  });
  return segments

}

const humanize = (str) => {
  return uncamelize(str).replace(/\w\S*/g, function (match) {
    return match.charAt(0).toUpperCase() + match.substring(1)
  })
}

const kebabify = (str => uncamelize(str, '-'))

const pad = (input, toLength = 2, withCharacters = '0') => {
  let out = input.toString();
  while (out.length < toLength) {
    out = withCharacters + out;
  }
  return out;
}

export { 
  camelize, 
  uncamelize, 
  humanize,
  kebabify,
  pad
}