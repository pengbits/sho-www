# Video Player v7
[back](./index.html)

## Modal Native Playback Loading State 

When attempting native playback on mobile, there is an interim state where we show the underlying modal, but without the player footprint, before the media playback begins. Including an example of this 'cloaked' modal here for reference and for styling purposes.


<div class="modal video-player-outer-modal modal video-play7r-outer-modal--cloaked">
  <div class="modal__inner">
    <div class="modal__header"><a class="modal__close" rel="modal:close" href="#" data-track="" data-label="close" data-context="video-player7 "></a></div>
    <div class="modal__content">
      <div class="video-play7r-modal">
        <div class="video-play7r-modal__placeholder" style="background-color:green; background-image: url('https://www.sho.com/site/image-bin/images/1042640_1_0/1042640_1_0_trl01_1280x640.jpg');">
          <div class="video-play7r__big-play-button"></div>
        </div>
      </div>
    </div>
  </div>
</div>

```
<div class="modal video-player-outer-modal modal video-play7r-outer-modal--cloaked">
...
</div>
```

<script type="text/javascript">
  setTimeout(function(el){el.className = el.className+ ' modal-open'}, 250,
  document.getElementsByTagName('body')[0])
</script>