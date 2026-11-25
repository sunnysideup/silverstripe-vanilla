<% if $MonthJumpForm %>
<h3><%t UncleCheese\EventCalendar\Pages\Calendar.JUMPTOMONTH 'Month' %></h3>
<div class="event-calendar-month-jumper">
	$MonthJumpForm
	<p class="event-calendar-month-jumper-reset">
		<a href="$Link" class="btn btn-secondary btn-sm" role="button">Reset</a>
	</p>
</div>
<% end_if %>
