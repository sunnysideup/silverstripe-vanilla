<% if $IsCalendarPage %>

<% if $RegionsWithEvents %>
<h3>Region</h3>
<ul class="event-calendar-regions">
<% loop $RegionsWithEvents %>
  <li<% if $Up.IsCurrentRegion($Title) %> class="current"<% end_if %>>
    <a href="$Link">$Title</a>
  </li>
<% end_loop %>
</ul>
<% end_if %>

<div class="event-calendar-controls">
  <% include UncleCheese\EventCalendar\Includes\MonthJumper %>
</div>

<hr />
<p class="event-calendar-feed"><a href="$Link(rss)"><%t UncleCheese\EventCalendar\Pages\Calendar.SUBSCRIBE 'Calendar RSS Feed' %></a></p>
<% end_if %>
