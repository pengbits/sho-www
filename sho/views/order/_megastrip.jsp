<div class="megastrip {{$className}}{{/className}}" style="display:none">
  <ul class="megastrip__inner">
    {{#tileList}}
    <li class="megastrip__item megastrip__item-{{iter.index}}"><img 
      class="megastrip__image" style="background-image:url({{imageUrl}})"  
      data-index="{{iter.index}}" alt="{{title}}" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    {{/tileList}}
  </ul>
</div>