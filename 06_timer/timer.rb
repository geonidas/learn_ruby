class Timer
  #write your code here
 #code from earlier:
  	attr_accessor :seconds

  	def initialize
  		@seconds = 0
  	end

  	def time_string
  		time_string = "00:00:00"

  		if (@seconds >= 3600)
  			hour = @seconds/3600
  			@seconds = @seconds%3600
  			if(hour<10)
  				time_string[0..1] = "0" + hour.to_s
  			else
  				time_string[0..1] = hour.to_s
  			end
  		end

  		if (@seconds >= 60)
  			min = @seconds/60
  			@seconds = @seconds%60
  			if(min<10)
  				time_string[3..4] = "0" + min.to_s
  			else
  				time_string[3..4] = min.to_s
  			end
  		end
  		if(@seconds<10)
  			time_string[6..7] = "0" + @seconds.to_s
  		else	
  			time_string[6..7] = @seconds.to_s
  		end
  		return time_string
  	
  	end

end
