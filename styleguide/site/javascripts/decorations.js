export default function decorations() {
  const logos = [1002741,1002742,1003022,1003042,1003082,1003223,
    1003969,1004409,1004832,1004833,1006531,1006571,
    1006751,1007113,1029487,1030224,1031103,1031578,
    1031632,1032076,1032232,1032276,1032477,1032577,
    1032708,1032815,1032991,1033027,1033097,1033183,
    1033323,1033326,1033331,1033334,1033342,1033451,
    1033547,1033605,1033676,1033683,1033739,1033823,
    1033856,1033926,1033985,1034118,1034139,1034337,
    1034338,1034344,1034375,1034383,1034405,1034406,
    1034411,1034513,1034524,1034540,1034680,1034809,
    1034821,1034844,1034861,1034895,1034991,1035000,
    1035023,1035133,1035206,1035316,1035433,1035446,
    1035479,1035582,1035606,1035608,1035652,1035654,
    1035680,1035815,1035834,1035854,1035996,1036034,
    1036060,1036122,1036145,1040770,1040800,134,135,210,
    291,323,324,369,376,408,411,525,595,613,742,748,74,
    754,779,796,804,805,85];
  let selectedLogoIndex = -1;
  document.querySelectorAll('.refresh-hero__headline__container__image').forEach(function(logoElement){
    logoElement.onclick = function() {
      selectedLogoIndex = selectedLogoIndex >= logos.length ? 0 : selectedLogoIndex + 1;
      this.src = `https://www.sho.com/assets/images/series/logos/${logos[selectedLogoIndex]}_200x200.png`;
      return false;
    }
  })
}