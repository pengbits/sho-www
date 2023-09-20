{{!--
  # shoplace home
--}}

{{< layouts/shoplace }}
{{$classnames}}shoplace-channels{{/classnames}}  
{{$pagename}}Channels{{/pagename}}
{{$pageurl}}channels{{/pageurl}} 
  {{$content}}
    {{#data}}
    <section class="container__inner">
      <table border="0" class="channels-table">
        <tr>
          <th>
            <h3 class="channels-table__header">Showtime Networks Portfolio</h3>
          </th >
          <th class="availability-at-large">
            <span>Availability:</span>
          </th>
        </tr>  
        {{#channelList}}
        <tr>
          <td><img src="{{imageUrl}}" />
            <p class="availablity-at-small">Availability: {{#streamingList}}{{.}}{{#iter.hasNext}}, {{/iter.hasNext}}{{/streamingList}}</p><br/>
            <p>{{{description}}}</p>
          </td>
          <td class="channel-meta">
            <span class="channel-meta__channels">
              {{#streamingList}}
              <p>{{.}}</p>
              {{/streamingList}}
            </span>
          </td>
        </tr>
        {{/channelList}}
      </table>
    </section>
    {{/data}}
  {{/content}}
{{/ layouts/shoplace }}