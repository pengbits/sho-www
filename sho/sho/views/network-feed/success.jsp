{{!-- 
  # network feed success
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid has-nav-exposed network-feed{{/classnames}}

  {{$meta}}
  	<title>Showtime Marketing Feed</title>
    <meta property="og:title" content="Showtime Marketing Feed" />
    <meta name="description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
    <meta property="og:description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
		<meta name="page-tracking" content="sho:utility:network feed:success" />
  {{/meta}}
  
  {{$content}}
  	<div class="network-feed">
			<div class="network-feed__inner">
				<div class="network-feed__sub-inner">
			  	<section class="section section--large">
						<h1 class="network-feed__header">THANK YOU</h1>
						<h4 class="legal__sub-headline">A Showtime representative will contact you shortly.</h4>
					</section>
					{{> network-feed/_features }}
				</div>
			</div>
		</div>
  {{/content}}

	{{$footer}}
		{{> partials/_footer_nav }}
	{{/footer}}
  
{{/layouts/default}}






