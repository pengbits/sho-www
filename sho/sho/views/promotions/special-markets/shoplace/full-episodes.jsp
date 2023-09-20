{{!--
  # shoplace full-episodes
--}}
{{< layouts/shoplace }}
	{{$classnames}}shoplace-programming full-episodes{{/classnames}}  
	{{$pagename}}Full Episodes{{/pagename}}
	{{$pageurl}}full-episodes{{/pageurl}} 
	{{$header}}
		<h2 class="masthead__title">
			SHOWTIME Full Episodes
		</h2>
		<h3 class="masthead__copy">
			Get to know SHOWTIME by watching episodes of our hit series! Please note that most content is TV-MA and is intended to be viewed by mature, adult audiences and may be unsuitable for children under 17.
		</h3>
	{{/header}}
  {{$content}}
    {{#data}}
      <section class="container__inner">
        {{< /promotions/special-markets/shoplace/_video_player }}
          {{$video_player_classname}}video-player--full-episode{{/video_player_classname}}
        {{/ /promotions/special-markets/shoplace/_video_player}}
      </section>
			<section class="container__inner">					
        {{> /promotions/special-markets/shoplace/_video_collection }}
			</section>
    {{/data}}
    
    {{> /partials/_assets_footer_brightcove }}
  {{/content}}
{{/layouts/shoplace}}