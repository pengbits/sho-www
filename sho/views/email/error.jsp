{{< layouts/default }}
    {{$classnames}}email-preferences has-nav-solid{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>Email Preferences | SHOWTIME</title>
        <meta property="og:title" content="Email Preferences | SHOWTIME" />
        <meta name="page-tracking" content="sho:email:preferences:error" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}
        <section class="section section--inner">
            {{#errorMsg}}
                <h4>{{.}}</h4>
            {{/errorMsg}}
        </section>
	{{/content}}
{{/ layouts/default}}
