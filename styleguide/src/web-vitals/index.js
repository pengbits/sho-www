// https://github.com/GoogleChrome/web-vitals
// this is a somewhat arbitrary entrypoint for the web vitals library,
// to be called from either the sho/javascripts/index.js or stream-showime.index.js, respectively
// bundling the three calls together into a single function below allows us to invoke all 3 at startup:
// 
// // elsewhere
// import initWebVitals from ../styleguide/src/web-vitals
// initWebVitals()
//
// TODo embed a simple grade x or √ in output?
// const value_to_score = {
//   'LCP' : {'good':{'$lte':2.5 }, 'bad':{'$gte':4   }},
//   'FID' : {'good':{'$lte':100 }, 'bad':{'$gte':300 }},
//   'CLS' : {'good':{'$lte':0.15}, 'bad':{'$gte':0.25}}
// }

import $ from 'jquery'
import { getLCP, getFID, getCLS } from 'web-vitals';

export default ({debug} = {}) => {
  var cb = ({ name, value, delta}) => {
    if(debug) {
      console.log(`|core-web-vitals| ${name}: ${value}`);
    }

    // fire a public events with the metric payload so analytics layer can pick it up
    $(document).trigger({
      type:'core-web-vitals:metricReady',
      name, 
      value
    })
  }
  getCLS(cb);
  getFID(cb);
  getLCP(cb);
}