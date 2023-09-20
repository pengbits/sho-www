---
name:  Block List
collection: order
---
# Block List

The block-list is a pattern for rendering content as chunky list items at mobile, 
and (optionally) as a 4-up grid at larger sizes. 


### Stream Showtime Value Proposition - Feature Icons
It is used in the stream showtime page to describe the attributes of the service (a value proposition), with each item getting a custom icon.

<div class="block-list-example block-list-example--white">
  <ul class="block-list block-list--to-grid">
    <li  class="block-list__item">
      <img class="block-list__icon" alt="no ads" 
        src="https://www.sho.com/assets/images/stream-showtime/icons/commercial-free-tv.svg" />
      <p>All of SHOWTIME – Commercial-Free</p>
    </li>
    <li class="block-list__item">
      <img class="block-list__icon" alt="download full episodes" 
        src="https://www.sho.com/assets/images/stream-showtime/icons/3_DL_Icon.svg" />
      <p>Download full episodes and movies to watch offline</p>
    </li>
    <li class="block-list__item block-list__item--wide">
      <img class="block-list__icon" alt="stream live" 
        src="https://www.sho.com/assets/images/stream-showtime/icons/4_Live_Icon.svg" />
      <p>Stream your favorite series, movies, boxing and more LIVE or catch up on demand</p>
    </li>
    <li class="block-list__item">
      <img class="block-list__icon" alt="no cable needed" 
        src="https://www.sho.com/assets/images/stream-showtime/icons/scissors.svg" />
      <p>No cable needed</p>
      <!-- Trigger for centering the video, if /#center-video is included in the url -->
      <span class="center-video-section--trigger" id="center-video"></span>
    </li>     
  </ul>
</div>

```
<ul class="block-list block-list--to-grid">
  <li  class="block-list__item">
    <img class="block-list__icon" alt="no ads" 
      src="https://www.sho.com/assets/images/stream-showtime/icons/commercial-free-tv.svg" />
    <p>All of SHOWTIME – Commercial-Free</p>
  </li>
  <li class="block-list__item">
    <img class="block-list__icon" alt="download full episodes" 
      src="https://www.sho.com/assets/images/stream-showtime/icons/3_DL_Icon.svg" />
    <p>Download full episodes and movies to watch offline</p>
  </li>
  <li class="block-list__item block-list__item--wide">
    <img class="block-list__icon" alt="stream live" 
      src="https://www.sho.com/assets/images/stream-showtime/icons/4_Live_Icon.svg" />
    <p>Stream your favorite series, movies, boxing and more LIVE or catch up on demand</p>
  </li>
  <li class="block-list__item">
    <img class="block-list__icon" alt="no cable needed" 
      src="https://www.sho.com/assets/images/stream-showtime/icons/scissors.svg" />
    <p>No cable needed</p>
    <!-- Trigger for centering the video, if /#center-video is included in the url -->
    <span class="center-video-section--trigger" id="center-video"></span>
  </li>     
</ul>
```


### Series Updates Module
The block-list also serves as the foundation for the Series Updates module in series homepages, where we forgo the responsive behavior, keeping a list at medium+ and use the smaller icon size throughout.

<div class="block-list-example ">
  <ul class="block-list block-list--icons-medium">
    <li class="block-list__item">
      <a href="#"><span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
      <p>Slappy frontside air helipop handplant Slap full-cab speed wobbles grind.</p>
      </a>
    </li>
    <li class="block-list__item">
      <a href="#"><span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
      <p>Willy Santos smith grind full-cab fakie street bearings dude.</p>
      </a>
    </li>
    <li class="block-list__item">
      <a href="#">
      <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
        <p>Rocket air feeble crooked grind poseur Christ air rip grip skate key Andy Takakjian. </p>
    </a></li>
    <li class="block-list__item">
    <a href="#">
      <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
      <p>Skate ipsum dolor sit amet, soul skate 1080 pop shove-it gnar bucket deck bone air downhill.</p>
    </a>
    </li>     
  </ul>
</div>

```
<ul class="block-list block-list--icons-medium">
  <li class="block-list__item">
    <a href="#">
    <img class="block-list__icon" alt="no ads" 
      src="http://fpoimg.com/40x40?text=icon" />
    <p>Slappy frontside air helipop handplant Slap full-cab speed wobbles grind.</p>
  </a></li>
  <li class="block-list__item"><a href="#">
    <img class="block-list__icon" alt="download full episodes" 
      src="http://fpoimg.com/40x40?text=icon" />
    <p>Willy Santos smith grind full-cab fakie street bearings dude.</p>
  </a></li>
  <li class="block-list__item"><a href="#">
    <img class="block-list__icon" alt="stream live" 
      src="http://fpoimg.com/40x40?text=icon" />
      <p>Rocket air feeble crooked grind poseur Christ air rip grip skate key Andy Takakjian. </p>
  </a></li>
  <li class="block-list__item"><a href="#">
    <img class="block-list__icon" alt="no cable needed" 
      src="http://fpoimg.com/40x40?text=icon" />
    <p>Skate ipsum dolor sit amet, soul skate 1080 pop shove-it gnar bucket deck bone air downhill.</p>
  </a></li>     
</ul>
  ```