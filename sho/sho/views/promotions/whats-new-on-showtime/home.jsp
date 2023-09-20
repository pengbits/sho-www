{{!-- 
    /New This month on showtime
  --}}  
  {{< layouts/default }}
    {{$classnames}}whats-new has-nav-solid{{/classnames}}
  
    {{$meta}}
      <title>What's New This Month on Showtime, {{page.snapshotDataView.month}}, {{page.snapshotDataView.year}}</title>
      <meta property="og:title" content="What's New This Month on Showtime, {{page.snapshotDataView.month}}, {{page.snapshotDataView.year}}" />
      <meta name="description" content="{{#page.videoPlayerView}}{{description}}{{/page.videoPlayerView}}" />
      <meta property="og:description" content="{{#page.videoPlayerView}}{{description}}{{/page.videoPlayerView}}"/>
      <meta name="page-tracking" content="sho:schedule:whats new this month" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
    {{/meta}} 

    {{$content}} 
        {{#page}}
					<section class="whats-new section section--inner">     
					<h2 class="whats-new__header header--beta">
						<span class="caps">New this month on showtime
					</h2>
          {{#videoPlayerView}}{{#videoPlayerView.description}}
            <p>{{videoPlayerView.description}}</p>
          {{/videoPlayerView.description}}{{/videoPlayerView}}
          <div class="whats-new__line line--solid-red"></div>
          {{#videoPlayerView}}
						<section class="whats-new__video-player">
              <div class="video-player-simple js-video-player-simple">
                <div class="video-player-simple__inner">
                  <video
                    id="video-player-{{vendorId}}"
                    class="video-player-simple__embed video-js"
                    style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
                    data-account="63128"
                    data-asset-id="{{page.videoPlayerView.videoId}}"
                    data-asset-title="{{page.videoPlayerView.title}}"
                    data-asset-type="{{page.videoPlayerView.type}}"
                    data-embed="default" 
                    data-age-gate="0" 
                    data-player-name="sho.com" 
                    data-player="NzCF8EByd" 
                    data-full-episode="{{page.videoPlayerView.isFullEpisode}}" 
                    data-video-id="{{page.videoPlayerView.vendorId}}"
                    data-should-mute="false"
                    controls
                    muted="false"
                    loop 
                    poster="{{page.videoPlayerView.imageUrl}}">
                  </video>
                </div>
              </div>
						</section>
          {{/videoPlayerView}}
          </section> 
            <section class ="whats-new section section--inner section--large">
							{{#snapshotDataView}}
							<h2 class="whats-new__title caps">Series</h2>							  
							<div class="striped-data-table">
								<div class='striped-data-table__row'>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Series Name</p>
									</div>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Episode</p>
									</div>
								</div>
								{{#seriesTileList}}								
								{{> /promotions/whats-new-on-showtime/_striped_data_table_row_with_image }}
								{{/seriesTileList}}						
							</div>
						

							<h2 class="whats-new__title caps">New Movies</h2>
							<div class="striped-data-table">
								<div class='striped-data-table__row'>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Available Date</p>
									</div>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Title</p>
									</div>
								</div>	
								{{#moviesTileList}}
									{{> /promotions/whats-new-on-showtime/_striped_data_table_row }}
								{{/moviesTileList}}
							</div>

							<h2 class="whats-new__title caps">Last Chance Movies</h2>
							<div class="striped-data-table">
								<div class='striped-data-table__row'>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Last Chance Date</p>
									</div>
									<div class='striped-data-table__item'>
										<p class='striped-data-table__title'>Title</p>
									</div>
								</div>
								{{#lastChanceTileList}}
									{{> /promotions/whats-new-on-showtime/_striped_data_table_row }}
								{{/lastChanceTileList}}
							</div>

							{{/snapshotDataView}}
            </section>
       
        {{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}} 
    {{/page}}
    {{/content}}
    {{$brightcove_js}}
      {{> /partials/_assets_footer_brightcove }}
    {{/brightcove_js}}
  {{/ layouts/default}}

