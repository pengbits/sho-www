---
name: Read Me for Shoplace
collection: articles
---

# Shoplace

The jsps for Shoplace are located here: www/sho/views/promotions/special-markets/shoplace. This directory serves primarily to house the javascript and sass sources files used to for the shoplace site's build. Note though, that with the refresh of sho.com underway, even these files are deprecated, as we are dropping support for local builds of shoplace, moving the project to a 'frozen' state where the last stable css build is served from AWS. (See SITE-23048) This is because the styleguide has undergone dramatic changes that we don't want to see in the shoplace context. It's quite likely that shoplace will get it's own refresh treatment, but if there is any need to make changes to the css layer before that point, we'll likely just resort to writing overrides in a separate stylesheet.

## Folder structure

| Folder | Where | Description | 
| ------ | ------| ----------- |
| /www/sho/views/promotions/special-markets/shoplace | github| jsp templates for html layer |
| /www/shoplace/stylesheets,javascripts | github | vintage sass and javascript source files, reference only |
| /www/shoplace/styleguide | github | integration point with styleguide, a symolic link that points to source files, deprecated |
| s3://com.sho.prod.www.webroot/assets/special-markets/shoplace/ | aws | frozen, minified, production-ready css+js files served to shoplace.com | 

### Partner Sites
A list of all the partner sites can be located at https://work.sho.com/confluence/pages/viewpage.action?spaceKey=PROJ&title=Shoplace+URL%27s+of+Partner+sites