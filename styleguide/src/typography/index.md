---
name: Typography
collection: elements
---

# Typography

We have two fonts in play: Atyp and Antique Legacy. Atyp should always be used in all caps. Antique Legacy should never be in all caps (use title case or sentence case.)

Atyp uses different versions of the font, based on font weight:<br>
Atyp Light: 100 300<br>
Atyp Regular: 400<br>
Atyp Medium: 500<br>
Atyp Semi Bold: 600 900<br>


## Headings

<div class="typography-example">
<h1 class="header header--alpha">
  <span class="caps">T-bone magna boudin in capicola </span>
</h1>
H1/Alpha: Atyp Regular 50/48px, 34/32px, normal (desktop font-size/line-height, mobile font-size/line-height, letter-spacing)  
<hr>   
<h2 class="header header--beta" style="margin-bottom:0">
  <span class="caps">Cillum deserunt enim minim</span>
</h2>
H2/Beta: Atyp Light 30/30px, 24/24px, -0.005em
<hr>   
<h3 class="header header--theta">
  <span class="caps">Cillum deserunt enim minim</span>
</h3>
H3/Theta: Atyp Regular 24/26px, 18/20px, -0.005em
<hr>  
<h4 class="header header--eta">
  <span class="caps">Commodo brisket sirloin</span>
</h4>
H4/Eta: Atyp Semi-Bold 14/18px, 14/18px, 0.15em
<hr>  
<h3 class="header header--gamma">
  Laborum veniam pastrami officia rump
</h3>
H3/Gamma: Antique Legacy 24/26px, 18/22px, normal
<hr>  
<h4 class="header header--delta">
  Eiusmod veniam filet mignon ut cupidata
</h4>
H4/Delta: Antique Legacy 20/24px, 16/20px, normal
<hr>  
<h5 class="header header--epsilon">
  Incididunt excepteur venison
</h5>
H5/Epsilon: Antique Legacy 16/22px, 14/18px, normal
<hr>  
<h6 class="header header--zeta">
  Lborum chicken quis esse et mi
</h6>
H6/Zeta: Antique Legacy 12/16px, 12/16px, normal  
<hr> 
</div>
 
```html
<h1 class="header--alpha">
  <span class="caps">T-bone magna boudin in capicola </span> Mollit jerky pork chop
</h1>
<h2 class="header--beta">
  <span class="caps">Cillum deserunt enim minim</span> Ugiat shoulder cupim bacon jowl
</h2>
<h3 class="header--theta">
  <span class="caps">Cillum deserunt enim minim</span> Ugiat shoulder cupim bacon jowl
</h3>
<h4 class="header--eta">
  <span class="caps">Commodo brisket sirloin</span> Eiusmod veniam filet mignon ut cupidata
</h4>
<h3 class="header--gamma">
  <span class="caps">Leberkas rump spare ribs cupim swine</span> Laborum veniam pastrami officia rump
</h3>
<h4 class="header--delta">
  <span class="caps">Commodo brisket sirloin</span> Eiusmod veniam filet mignon ut cupidata
</h4>
<h5 class="header--epsilon">
  <span class="caps">Ham ribeye alcatra fugia</span> Incididunt excepteur venison
</h5>
<h6 class="header--zeta">
  <span class="caps">Shankle tri-tip. Ball tip cul</span> Lborum chicken quis esse et mi
</h6>
```

## Body Text

<div class="typography-example">
  <div class="body-text">
    <p>Bacon ipsum dolor amet pork excepteur bacon culpa reprehenderit kevin, tenderloin cupim turkey kielbasa duis veniam mollit drumstick spare ribs. Fugiat shoulder cupim bacon jowl tempor anim andouille landjaeger meatball. Rump shank enim beef esse. Tenderloin boudin flank commodo officia laborum porchetta in shank reprehenderit t-bone bresaola sirloin deserunt ad. Laborum veniam pastrami officia rump. Minim ex exercitation drumstick eiusmod, in dolore veniam.</p>
    <p>Sausage laborum cillum consectetur leberkas dolor ea. Biltong nisi eu pork chuck drumstick ut duis. Kielbasa fatback in, hamburger aliqua labore magna shankle beef ribs prosciutto biltong. Ullamco porchetta velit eiusmod veniam filet mignon ut cupidatat. T-bone magna boudin in capicola officia eiusmod ea sirloin beef ribs culpa cillum. Elit minim cupidatat, mollit pig chuck incididunt shankle brisket ham aliquip beef ribs pastrami fugiat.</p>
    <p>Mollit jerky pork chop adipisicing, cillum deserunt enim minim leberkas rump spare ribs cupim swine. Ground round nulla sint rump anim venison laborum beef, dolor lorem in strip steak. Shankle picanha laborum proident filet mignon, porchetta dolore cupim pork chop pork tenderloin. Chicken est dolor spare ribs ball tip. Chuck incididunt fugiat occaecat. Chicken commodo et, aute drumstick ipsum filet mignon tempor hamburger enim jowl biltong. Laboris shankle irure shank filet mignon turkey.</p>
  </div>
16/22px, 14/18px; same as header--epsilon
</div>
<br><br>     

## Header Mix-ins

<p>if classnames aren't your thing, there is a mix-in for each header:</p>

<div class="header-mixin-example"> 
  <dl class="property-list">
    <dt class="property-list__key">Lundamotive</dt>
      <dd class="property-list__value">by Extreme Music</dd>
    <dt class="property-list__key">One of a Kind</dt>
      <dd class="property-list__value">by Extreme Music &amp; something extra long</dd>
  </dl>
</div>

  
```
.property-list__key {
  @include header('alpha');
}
.property-list__value {
  @include header('delta');
}
```
  

## Font-Weight Mixins

it's possible to set the weights directly, by using one of the weight mixins.. However this is probably not neccesary since the weight you want will almost certainly set by the header.

<p class="weight-example weight-example--medium">Medium: Bacon ipsum dolor amet pork excepteur bacon culpa reprehenderit kevin, tenderloin cupim turkey kielbasa duis veniam mollit drumstick spare ribs. Fugiat shoulder cupim bacon jowl tempor anim andouille landjaeger meatball. Rump shank enim beef esse. Tenderloin boudin flank commodo officia laborum porchetta in shank reprehenderit t-bone bresaola sirloin deserunt ad. Laborum veniam pastrami officia rump. Minim ex exercitation drumstick eiusmod, in dolore veniam.</p>
<p class="weight-example weight-example--regular">Regular: Sausage laborum cillum consectetur leberkas dolor ea. Biltong nisi eu pork chuck drumstick ut duis. Kielbasa fatback in, hamburger aliqua labore magna shankle beef ribs prosciutto biltong. Ullamco porchetta velit eiusmod veniam filet mignon ut cupidatat. T-bone magna boudin in capicola officia eiusmod ea sirloin beef ribs culpa cillum. Elit minim cupidatat, mollit pig chuck incididunt shankle brisket ham aliquip beef ribs pastrami fugiat.</p>

```
.weight-example--medium {  
  @include header-medium-weight; // 600
}
.weight-example--regular { 
  @include header-regular-weight; // 400
}
```

## Text Links 

The current style for simple text links (that have no icons) is a constant underline (whether hovering or not). Since we don't want this to be the default behavior - most <a> links (i.e. within promos) don't require this underline - the underline must be added explicitly to  elements within a component. So, for example, in the footer navigation, this style is nested within the SASS - only at the level it is absolutely needed, to avoid showing up in other places within the component or worse, other components.
  
````
    a { 
      @include underline;
    }
```

<br><br>

## Font-Weights for Antique Legacy

Antique Legacy uses different versions of the font, based on font weight:<br>

<p class="body-text" style="font-weight:400;">
  This is what regular text with font weight of 400 in Antique Legacy looks like
</p>
Antique Legacy, Regular, font-weight:400px
<hr>   

<p class="body-text" style="font-weight:500;">
  This is what text with font weight of 500 in Antique Legacy looks like
</p>
Antique Legacy, Medium, font-weight:600px
<hr>  

<p class="body-text" style="font-weight:600;">
  This is what text with font weight of 600 in Antique Legacy looks like
</p> 
Antique Legacy, Semi Bold, font-weight:600px
<hr>  

<p class="body-text" style="font-weight:700;">
  This is what text with font weight of 700 and 900 in Antique Legacy looks like
</p>
Antique Legacy, Bold, font-weight:700px
<hr>  