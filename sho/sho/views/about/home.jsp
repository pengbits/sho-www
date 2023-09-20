{{!--
  # about showtime
--}}

{{< layouts/default }}
  {{$classnames}}about{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>About SHOWTIME | SHOWTIME</title>
      <meta property="og:title" content="About SHOWTIME | SHOWTIME" />
      <meta name="description" content="Find out more about Showtime Networks Inc. (SNI), a Paramount Global Company." />
      <meta property="og:description" content="Find out more about Showtime Networks Inc. (SNI), a Paramount Global Company." />
      <meta name="page-tracking" content="sho:about:home" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page}}
      <section class="hero hero--no-top-line">
        <a class="hero__image lazyload" data-bgset="https://www.sho.com/assets/about/aboutpagehero_568x426.jpg [--small] | https://www.sho.com/assets/about/aboutpagehero_1024x640.jpg">
        </a>
        <div class="hero__inner" data-context="hero">
          <div class="hero__body">
            <div class="hero__top-line">About Showtime</div>
            <h1 class="hero__headline">
              About Showtime
            </h1>
            <p class="hero__description">
              Showtime Networks Inc. (SNI), a wholly owned subsidiary of Paramount, owns and operates the premium service SHOWTIME&reg;, which features critically acclaimed original series, provocative documentaries, box-office hit films, comedy and music specials and hard-hitting sports. SHOWTIME is available as a stand-alone streaming service across all major streaming devices and Showtime.com, as well as via cable, DBS, telco and streaming video providers. SNI also operates the premium services THE MOVIE CHANNEL&#8482; and FLIX&reg;, as well as on demand versions of all three brands. SNI markets and distributes sports and entertainment events for exhibition to subscribers on a pay-per-view basis through SHOWTIME PPV®. For more information, go to www.SHO.com.
            </p>
          </div>
        </div>
      </section>
<!--
      <section class="section section--black section--large">
        <h3 class="section-header section-header--bio section-header--border">Executive Leadership</h3>
        <div class="about-bio js-read-more" data-mode="block">
          <div class="about-bio__person">
          <picture>
            <source media="(max-width: 767px)"
            srcset="g">

            <source srcset="">
            <img alt="..." src="https://www.sho.com/assets/images/lib/blank.gif">
          </picture>
          </div>

          <div class="about-bio__details">
            <h2 class="about-bio__name">...</h2>
            <p class="about-bio__title">
              ...,<br/>
              ...
            </p>
            <p class="about-bio__description">...</p>
              <div class ="read-more__content">
                <p class="about-bio__description">...</p>
              </div>
            <div class="read-more"><a class="read-more__toggle">Read More</a></div>
          </div>
        </div>
      </section>
-->
      <section class="section section--black section--large">
        <h3 class="section-header section-header--border">Showtime Networks Portfolio</h3>
        <div class="channel-row channel-row--first-item">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Primary_Red_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">HD, SD</span>
            </p>
            <p class="channel-row__body__desc">SHOWTIME&reg; is premium entertainment featuring critically-acclaimed Original Series and Limited Series, groundbreaking documentaries and docu-series, hit Hollywood movies, action-packed sports, hilarious comedy specials and much more, all without commercial interruption.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span >
            <span class="channel-row__meta__type">SD</span >
          </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_OnDemand_Red_White_RGB.svg">
          <div class="channel-row__body">
          <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">On Demand HD, On Demand</span></p>
            <p class="channel-row__body__desc">SHOWTIME ON DEMAND&reg; gives you complete control of SHOWTIME&reg; with immediate access to a wide array of monthly programming choices. Catch up on critically-acclaimed seasons of current SHOWTIME Original Series and Limited Series, immerse yourself in groundbreaking documentaries and docu-series, watch Hollywood hits, or experience the excitement of hard-hitting SHOWTIME Sports whenever you want. Plus, hilarious comedy specials, uncensored reality and behind-the-scenes extras, all uncut and without commercial interruption. SHOWTIME ON DEMAND is free with your SHOWTIME subscription through participating TV providers.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">On Demand HD</span>
            <span class="channel-row__meta__type">On Demand </span>
           </div>
        </div>
          <div class="channel-row">
            <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Anytime_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">Amazon Fire Devices, Amazon Fire TV, Android, Apple TV, Chromecast, iPad, iPhone, LG Smart TVs, Roku, Samsung Smart TVs, Xbox One</span>
            </p>
            <p class="channel-row__body__desc">SHOWTIME Anytime&reg; allows you to stream SHOWTIME&reg; wherever and whenever you want on your favorite device. You can watch what's currently airing live, or enjoy award-winning Original Series and Limited Series, groundbreaking documentaries and docu-series, hit movies, SHOWTIME Sports, comedy specials and much more. Whether it premiered 5 minutes or 5 seasons ago, just find what you want and start watching &ndash; it's that simple. Pause on one device, resume on another and use 'My List' to bookmark and view your favorite programs. SHOWTIME Anytime is free with your SHOWTIME subscription through participating TV providers and streaming services.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">Amazon Fire Devices</span>
            <span class="channel-row__meta__type">Amazon Fire TV </span>
            <span class="channel-row__meta__type">Android</span>
            <span class="channel-row__meta__type">Apple TV </span>
            <span class="channel-row__meta__type">Chromecast </span>
            <span class="channel-row__meta__type">iPad</span>
            <span class="channel-row__meta__type">iPhone </span>
            <span class="channel-row__meta__type">LG Smart TVs</span>
            <span class="channel-row__meta__type">Roku</span>
            <span class="channel-row__meta__type">Samsung Smart TVs </span>
            <span class="channel-row__meta__type">Xbox One </span>
           </div>
        </div>

        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_2_Red_White_RGB.svg">
          <div class="channel-row__body">
           <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">HD, SD</span>
            </p>
            <p class="channel-row__body__desc">SHOWTIME 2&reg; is the place to catch the best of SHOWTIME&reg;. SHO 2 features everything from Hollywood hits to marathons of the most talked-about SHOWTIME Original Series and Limited Series. Plus, enjoy replays of groundbreaking documentaries and docu-series, hilarious comedy specials and more.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>

        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Showcase_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD</span>
             </p>
            <p class="channel-row__body__desc">With an extensive array of select acclaimed films, groundbreaking documentaries and hilarious comedy specials, SHOWTIME SHOWCASE brings high quality and big thrills to your screen.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Extreme_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD</span></p>
            <p class="channel-row__body__desc">SHOWTIME EXTREME&reg; features action-packed movies and Original Series and all the best of SHOWTIME Sports&reg;. Enjoy hard-hitting boxing, thrilling, edge-of-your-seat movies and more.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOxBET_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD</span></p>
            <p class="channel-row__body__desc">SHO×BET is a premium destination for entertainment that celebrates and showcases Black culture. Enjoy compelling SHOWTIME and BET Original Series and documentaries, star-studded movies, action-packed sports, exclusive comedy specials and so much more, all in one place.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>
          <div class="channel-row">
            <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_FamilyZone_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">SD</span>
            </p>
            <p class="channel-row__body__desc">We know spending time together is important, and that's why SHOWTIME FAMILYZONE&reg; features outstanding films, documentaries and shorts that your entire family can enjoy together. Everything from kid-approved animated features to family-friendly dramas, and absolutely no R-rated programming whatsoever.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Next_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD</span></p>
            <p class="channel-row__body__desc">With revolutionary films, documentaries, music events and comedy specials for the 18-34 generation, SHOWTIME NEXT&reg; offers the unexpected, the extraordinary, and the best of what's "next."</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
           </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/SHOWTIME_Women_Red_White_RGB.svg">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">HD, SD</span>
            </p>
            <p class="channel-row__body__desc">Celebrating women in front of and behind the camera, SHOWTIME WOMEN&reg; brings you the most unique, daring and groundbreaking films, documentaries and shorts from aspiring and established female talents.</p>
          </div>
          <div class="channel-row__meta">
            <span class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
          </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/TMC.png">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD, On Demand HD, On Demand</span></p>
            <p class="channel-row__body__desc">Attention movie fans! If you've got a passion for movies, THE MOVIE CHANNEL&#8482; is your one-stop movie destination, all without commercial interruption. From outrageous comedies and heart-wrenching dramas to the most explosive action hits, THE MOVIE CHANNEL is movies for movie lovers.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
            <span class="channel-row__meta__type">On Demand HD</span>
            <span class="channel-row__meta__type">On Demand</span>
           </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/TMC_Xtra.png">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
               <span class="channel-row__body__available__meta__type">HD, SD</span></p>
            <p class="channel-row__body__desc">Can't find a movie to suit your mood on THE MOVIE CHANNEL&#8482;? Check out THE MOVIE CHANNEL XTRA&#8482; for even more movies that will blow you away.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">HD</span>
            <span class="channel-row__meta__type">SD</span>
          </div>
        </div>
        <div class="channel-row">
          <img class="channel-row__logo" src="https://www.sho.com/assets/images/channel_logos/FLIX.png">
          <div class="channel-row__body">
            <p class="channel-row__body__available">Availability:
              <span class="channel-row__body__available__meta__type">SD, On Demand</span></p>
            <p class="channel-row__body__desc">First-rate feature films as they were meant to be seen &ndash; uncut and uninterrupted. FLIX&reg; is a celebration of all things cinema, from knee-slapping comedy to face-slapping film noir. Get ready to experience the long history of Hollywood, one classic at a time.</p>
          </div>
          <div class="channel-row__meta">
            <p class="channel-row__meta__title">Availability:</p>
            <span class="channel-row__meta__type">SD</span>
            <span class="channel-row__meta__type">On Demand</span>
          </div>
        </div>
      </section>
    {{/page}}
  {{/content}}
{{/ layouts/default}}
