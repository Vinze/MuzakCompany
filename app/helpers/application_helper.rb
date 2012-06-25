module ApplicationHelper
	def sec_to_time(seconds)
	   total_minutes = seconds / 1.minutes
	   seconds_in_last_minute = seconds - total_minutes.minutes.seconds
	   if (seconds_in_last_minute < 10)
	   	seconds_in_last_minute = '0' + seconds_in_last_minute.to_s
	   end
	   "#{total_minutes}:#{seconds_in_last_minute}"
	end
end
