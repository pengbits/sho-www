<div class="button--outline-white rokt-calendar-widget js-rokt-calendar-widget">
  <a class="rokt-calendar-widget__link" href="{{$calendarUrl}}{{.}}{{/calendarUrl}}" 
    data-no-redirect data-type="custombutton" data-popup="lightbox" data-calreply-binding="true">Add to Calendar</a>
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