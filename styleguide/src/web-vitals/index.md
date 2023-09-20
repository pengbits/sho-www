---
name: Web Vitals
collection: vendor
---

# NOT IN USE

<h3 div style="background-color:#FF0000; padding:15px; color:#FFFFFF">The core web vitals implementation was removed as of 8.20.0 when we introduced New Relic Browser Monitoring</h3>

### Web Vitals

[Core Web Vitals](https://github.com/GoogleChrome/web-vitals) are a set of metrics for measuring speed and usability from Google. We are loading the web vitals library in order to log the metrics against our codebase on every page load.


from [https://github.com/GoogleChrome/web-vitals](https://github.com/GoogleChrome/web-vitals):

> To load the "standard" version, import modules from the web-vitals package in your application code (as you would with any npm package and node-based build tool):

> ```
> import {getLCP, getFID, getCLS} from 'web-vitals';
> 
> getCLS(console.log);
> getFID(console.log);
> getLCP(console.log);
> ```


### In our codebase
We could reference the web vitals lib directly, as described above, but for convenience's sake the three calls are bundled and aliased as `initWebVitals`:

```
// in sho/javascripts/index.js, stream-showtime.index.js
// the only config option is `debug` - to trigger an extra console log independent of analytics' output

import `initWebVitals` from /path/to/styleguide
initWebVitals({debug:true})
```

click anywhere on the page to see the callback fire - it seems that the metrics are not available until the user interacts with the page.