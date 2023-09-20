{{!--
  # shoplace training-videos
--}}
{{< layouts/shoplace }}
  {{$classnames}}shoplace-training-videos{{/classnames}}  
  {{$pagename}}Training Videos{{/pagename}}
  {{$pageurl}}training-videos{{/pageurl}}
  {{$content}}
    {{#data}}
    <section class="container__inner">
      {{< /promotions/special-markets/shoplace/_video_player }}
        {{$player_name}}shoplace{{/player_name}}
        {{$bc_player}}NzCF8EByd{{/bc_player}}
        {{$bc_account}}63128{{/bc_account}}
        {{$video_player_classname}}video-player--short-form{{/video_player_classname}}  
      {{/ /promotions/special-markets/shoplace/_video_player }}
    </section>
		<section class="container__inner">					
      {{> /promotions/special-markets/shoplace/_video_collection }}
    </section>
    {{/data}}
    
    {{> /promotions/special-markets/shoplace/_assets_footer_brightcove }}
  {{/content}}
{{/layouts/shoplace}}