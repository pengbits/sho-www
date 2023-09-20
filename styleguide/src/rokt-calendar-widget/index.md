---
name: Calreply x Rokt Calendar
collection: vendor
---

# Calreply x Rokt Add to Calendar Widget

The Calreply Add to Calendar widget is used in sports event pages and a few other locations around the site where we need to make use of the vendor-powered 'Add to Calendar' functionality. The widget takes the form of a large Call to Action  that when clicked, will render a lightbox/modal style ui with the upcoming event's schedule data (this content is stored on the vendor side). Calreply has been bought by [Rokt](https://docs.rokt.com/docs/user-guide/rokt-calendar/integration-guide.html) so names and usage may be subject to change.

https://docs.rokt.com/docs/user-guide/rokt-calendar/integration-guide.html

update: naively adding the widget configuration option per vendor instructions has the unfortunate side effect of breaking our own analytics impelmentation, as calreply's click handler cancels event propagation. As a workaround, we have added a custom javascript behavior to the cta, and moved the calreply data-attributes onto a smaller 1x1 shim element immediately adjacent. When a user clicks on the cta, our js invokes a synthetic click on the shim element, causing the schedule modal to open, but allowing analytics to function normally.

update to the update: the shim technique outlined above resulted in a recursive loop, crashing chrome. this was first discovered in 8.11.0, so we're dropping this component and reverting to the stock vendor implmentation with 8.13.0. this means we lose analytics but it's well worth it under the circumstances

<div class="button--outline-white rokt-calendar-widget js-rokt-calendar-widget">
  <a 
    class="rokt-calendar-widget__link" 
    href="https://showtime.roktcalendar.com/showtime-championship-boxing" 
    data-no-redirect 
    data-type="custombutton" 
    data-popup="lightbox" 
    data-calreply-binding="true">Add to Calendar
  </a>
</div>
<script>
!function (d, s, id) { 
    var js, fjs = d.getElementsByTagName(s)[0]; 
    if (d.getElementById(id)) return; 
    js = d.createElement(s); 
    js.id = id; 
    js.src = 'https://assets.roktcalendar.com/scripts/widget-loader.min.js'; 
    fjs.parentNode.insertBefore(js, fjs); 
}(document, 'script', 'calreply-wjs');
</script>


```
<div class="button--outline-white rokt-calendar-widget js-rokt-calendar-widget">
  <a 
    class="rokt-calendar-widget__link" 
    href="https://showtime.roktcalendar.com/showtime-championship-boxing" 
    data-no-redirect 
    data-type="custombutton" 
    data-popup="lightbox" 
    data-calreply-binding="true">Add to Calendar
  </a>
</div>
<script>
!function (d, s, id) { 
    var js, fjs = d.getElementsByTagName(s)[0]; 
    if (d.getElementById(id)) return; 
    js = d.createElement(s); 
    js.id = id; 
    js.src = 'https://assets.roktcalendar.com/scripts/widget-loader.min.js'; 
    fjs.parentNode.insertBefore(js, fjs); 
}(document, 'script', 'calreply-wjs');
</script>
```

<style type="text/css">
  .site-content > p > a {
    text-decoration:underline;
    background-color:#000
  }
  .site-content > p > a:hover {
    text-decoration:none;
  }
</style>
