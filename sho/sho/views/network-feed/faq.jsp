{{!-- 
  # network feed faq
--}}

{{< layouts/default }}
  {{$classnames}}has-nav-solid has-nav-exposed network-feed network-feed--faq{{/classnames}}

  {{$meta}}
  	<title>Showtime Marketing Feed</title>
    <meta property="og:title" content="Showtime Marketing Feed" />
    <meta name="description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
    <meta property="og:description" content="Authorized developers may use this feed from Showtime Networks Inc. to access official schedule, metadata and promotional assets" />
		<meta name="page-tracking" content="sho:utility:network feed:faq" />
  {{/meta}}
  
  {{$content}}
		<div class="network-feed">
			<div class="network-feed__inner">
				<div class="network-feed__sub-inner">
			  	<section class="section section--large">
						<h1 class="network-feed__header">MARKETING FEEDS FAQ</h1>
						<h4 class="network-feed__sub-header">Find answers to the most common questions about the SHOWTIME Network Marketing Feeds below.</h4>
						<h6 class="network-feed__sub-sub-header">Don't have access yet? Request it <a class="legal__body__link" href="/network-feed/home">here</a>.</h6>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">How do I access the feeds once I have received a password?</h4>
						<p class="legal__body">The Showtime Network (or Marketing) feed and Promotional Video MRSS feed are located at the URL <a class="legal__body__link" href="https://www.sho.com/api/feeds/network">https://www.sho.com/api/feeds/network</a> and are protected by basic authentication. To successfully load the feeds, you will need to provide the requisite headers generated using the email address you registered with and the password provided by Showtime. An example using cURL would be 'curl --user user@domain.com:password https://www.sho.com/api/feeds/network'. Similarly, most browsers will let you authenticate by passing your credentials in the url. e.g. https://user@domain.com:password@www.sho.com/api/feeds/network.</p>
					</section>
			  	<section class="section section--large">
						<h4 class="network-feed__sub-header">What should I do if I am unable to access the feeds?</h4>
						<p class="legal__body">If you are unable to access the feeds and believe that you are using the correct basic authentication mechanism, please contact <a class="legal__body__link" href="mailto:sho_metadata_feed@showtime.net">sho_metadata_feed@showtime.net</a></p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">What is the difference between the Network [Marketing] Feed and the Promotional Video MRSS Feed?</h4>
						<p class="legal__body">The Showtime Network [Marketing] Feed (available in both XML and JSON versions) is a comprehensive, extensively curated suite of all the programming-related content metadata about Showtime titles that are either airing on the linear Showtime network channels or available on Showtime On Demand, Showtime Anytime or the Showtime streaming service. In addition to schedule metadata for all Showtime channels and platforms, this feed includes deep links to titles on Showtime Anytime and the Showtime streaming service, season-level key art (with and without title treatments) for original Series, episodic photography, theatrical key art (with and without title treatments), promotional video links, series, episode and theatrical titles and descriptions, cast lists, cast bios, actor bios, ratings, advisories, keywords, and more. The <a class="legal__body__link" href="https://www.sho.com/api/feeds/short-form-video">Promotional Video MRSS Feed</a> contains promotional short form video links as well as metadata (title, description, keywords, expiration date) for all short form video content.</p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">Will the Network (Marketing) Feed let me deep link into Showtime Anytime and Showtime Over Internet Service?</h4>
						<p class="legal__body">The Network (Marketing) Feed includes everything you need to form deep links into Showtime Anytime on ShowtimeAnytime.com and our mobile apps, including our streaming service: Showtime Over Internet.</p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">Does the Network (Marketing) Feed include TMS and EIDR IDs?</h4>
						<p class="legal__body">Yes. TMS and EIDR IDs are an attribute on each episode node and they are (respectively) identified as tmsId and eidrID . (Note: both TMS IDs and EIDR IDs are not always immediately available once a program enters the schedule. We make our best effort to add these IDs once they become available.)</p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">Can I get cast info for series?</h4>
						<p class="legal__body">There is a node named cast in each season and each episode node. For an episode, you need the season cast info plus the episode cast info.</p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">Why don't all titles in the Network (Marketing) Feed have linear airings?</h4>
						<p class="legal__body">If you check you should see an airing list for items that are airing on our linear channels. The feed also includes programming that is available on Showtime On Demand, Showtime Anytime, and the Showtime streaming service, which are often a larger model than the Showtime linear channels. It is perfectly normal for the feed to include a title that is only available On Demand, on Showtime Anytime or on Showtime Over Internet (streaming) service – for which we include start and end dates - but if it's not also on a linear schedule, there won't be an airing list.</p>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">What are all of the valid audio features?</h4>
						<table class="faq-table faq-table--2-col">
							<thead>
								<tr>
									<td class="faq-table__header">CODE</td>
									<td class="faq-table__header">DESCRIPTION</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Stereo</td>
									<td>Stereo</td>
								</tr>
								<tr>
									<td>Dubbed</td>
									<td>Dubbed</td>
								</tr>
								<tr>
									<td>Surround</td>
									<td>Surround Sound</td>
								</tr>
								<tr>
									<td>DD</td>
									<td>Dolby Digital 5.1</td>
								</tr>
								<tr>
									<td>ES</td>
									<td>English/Spanish</td>
								</tr>
							</tbody>
						</table>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">What are all of the valid video features?</h4>
						<table class="faq-table faq-table--2-col">
							<thead>
								<tr>
									<td class="faq-table__header">CODE</td>
									<td class="faq-table__header">DESCRIPTION</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>BW</td>
									<td>Black & White</td>
								</tr>
								<tr>
									<td>HD</td>
									<td>HDTV</td>
								</tr>
								<tr>
									<td>LTBX</td>
									<td>Letterbox</td>
								</tr>
								<tr>
									<td>CC</td>
									<td>Closed Captioning</td>
								</tr>
								<tr>
									<td>OARUP</td>
									<td>OAR Upconverted</td>
								</tr>
								<tr>
									<td>OAR</td>
									<td>Original Aspect Ratio</td>
								</tr>
								<tr>
									<td>Subtitled</td>
									<td>Subtitled</td>
								</tr>
							</tbody>
						</table>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">What are the valid language codes?</h4>
						<table class="faq-table faq-table--3-col">
							<thead>
								<tr>
									<td class="faq-table__header">ID</td>
									<td class="faq-table__header">CODE</td>
									<td class="faq-table__header">DESCRIPTION</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>100</td>
									<td>ABH</td>
									<td>Arabic and Hebrew</td>
								</tr>
								<tr>
									<td>102</td>
									<td>ARB</td>
									<td>Arabic</td>
								</tr>
								<tr>
									<td>103</td>
									<td>BEN</td>
									<td>Bengali</td>
								</tr>
								<tr>
									<td>104</td>
									<td>CH</td>
									<td>Chinese</td>
								</tr>
								<tr>
									<td>105</td>
									<td>DTH</td>
									<td>Dutch</td>
								</tr>
								<tr>
									<td>106</td>
									<td>ENG</td>
									<td>English</td>
								</tr>
								<tr>
									<td>107</td>
									<td>ES</td>
									<td>English/Spanish</td>
								</tr>
								<tr>
									<td>108</td>
									<td>FAR</td>
									<td>Farsi</td>
								</tr>
								<tr>
									<td>109</td>
									<td>FN</td>
									<td>Finnish</td>
								</tr>
								<tr>
									<td>110</td>
									<td>FOR</td>
									<td>Foreign Language - Non Specific</td>
								</tr>
								<tr>
									<td>111</td>
									<td>FR</td>
									<td>French</td>
								</tr>
								<tr>
									<td>112</td>
									<td>GER</td>
									<td>German</td>
								</tr>
								<tr>
									<td>113</td>
									<td>HEB</td>
									<td>Hebrew</td>
								</tr>
								<tr>
									<td>114</td>
									<td>HND</td>
									<td>Hindi</td>
								</tr>
								<tr>
									<td>115</td>
									<td>ITL</td>
									<td>Italian</td>
								</tr>
								<tr>
									<td>116</td>
									<td>JP</td>
									<td>Japanese</td>
								</tr>
								<tr>
									<td>117</td>
									<td>MAN</td>
									<td>Mandarin</td>
								</tr>
								<tr>
									<td>118</td>
									<td>NA</td>
									<td>NOT AVAILABLE</td>
								</tr>
								<tr>
									<td>119</td>
									<td>NOL</td>
									<td>No Language Spoken</td>
								</tr>
								<tr>
									<td>120</td>
									<td>POL</td>
									<td>Polish</td>
								</tr>
								<tr>
									<td>121</td>
									<td>POR</td>
									<td>Portugeuese</td>
								</tr>
								<tr>
									<td>122</td>
									<td>RUS</td>
									<td>Russian</td>
								</tr>
								<tr>
									<td>123</td>
									<td>SL</td>
									<td>Slavic Languages</td>
								</tr>
								<tr>
									<td>124</td>
									<td>SPN</td>
									<td>Spanish</td>
								</tr>
								<tr>
									<td>125</td>
									<td>SWD</td>
									<td>Swedish</td>
								</tr>
								<tr>
									<td>126</td>
									<td>THA</td>
									<td>Thai</td>
								</tr>
							</tbody>
						</table>
					</section>
					<section class="section section--large">
						<h4 class="network-feed__sub-header">Still have questions?</h4>
						<p class="legal__body"><a class="legal__body__link" href="mailto:marketingfeed@showtime.net">Email</a> us with as much information about your issue as possible.</p>
					</section>
				</div>
			</div>
		</div>
  {{/content}}

	{{$footer}}
		{{> partials/_footer_nav }}
	{{/footer}}
  
{{/layouts/default}}
