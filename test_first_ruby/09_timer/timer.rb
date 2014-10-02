class Timer 
	
	attr_accessor :seconds 
	def initialize
		@seconds = 0
	end
	def seconds=(time=0)
		@seconds = time
	end

	def time_string
		hour = (@seconds / 3600)
		min = (@seconds - hour*3600) / 60
		seconds = (@seconds - hour*3600 - min*60)
		"#{hour.to_s.rjust(2, '0')}:#{min.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
	end

end