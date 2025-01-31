<ul>
    <% loop $Events %>
        <li class="vevent clearfix" style="clear: both;">
            <h3 class="summary"><% if Announcement %>$Title<% else %><a class="url" href="$Link">$Event.Title</a><% end_if %></h3>
            <% if $Event.EventImage %><img src="$Event.EventImage.ScaleWidth(200).Link" style="float: left; margin: 0px 10px 10px 0" /><% end_if %>
            <p class="dates-and-regions">
              <a href="$ICSLink">
                $DateRange
                <% if AllDay %> <% _t('UncleCheese\EventCalendar\Pages\Calendar.ALLDAY','All Day') %>
                <% else %>
                        <% if $StartTime %> $TimeRange<% end_if %>
                <% end_if %>
              </a>
              <% with $Event %>
                <% if $Regions %>
                  <% loop $Regions %>
                  <a href="$Link">$Title</a>
                  <% end_loop %>
                <% end_if %>
              <% end_with %>

            </p>

            <% if $Announcement %>
                $Content
            <% else %>
              <% if $Content %>
                <% with $Event %>$Content.LimitWordCount(60)<% end_with %> <a href="$Link"><% _t('Calendar.MORE','Read more&hellip;') %></a>
              <% end_if %>
            <% end_if %>

            <% if $OtherDates %>
                <div class="event-other-dates">
                    <h4><% _t('UncleCheese\EventCalendar\Pages\Calendar.ADDITIONALDATES','Additional Dates for this Event') %>:</h4>
                    <ul>
                        <% loop $OtherDates %>
                            <li>
                                <a href="$Link" title="$Event.Title">
                                    $DateRange
                                    <% if AllDay %> <% _t('UncleCheese\EventCalendar\Pages\Calendar.ALLDAY','All Day') %>
                                    <% else %>
                                        <% if StartTime %> $TimeRange<% end_if %>
                                    <% end_if %>
                                </a>
                            </li>
                        <% end_loop %>
                    </ul>
                </div>
            <% end_if %>
        </li>
    <% end_loop %>
</ul>
<% if $MoreEvents %>
    <a href="$MoreLink" class="calendar-view-more"><% _t('UncleCheese\EventCalendar\Pages\Calendar.VIEWMOREEVENTS', 'View more events...') %></a>
<% end_if %>
