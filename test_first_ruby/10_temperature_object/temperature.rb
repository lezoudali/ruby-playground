class Temperature
	attr_accessor :in_fahrenheit, :in_celsius

	def initialize(hash)
		if hash[:f].nil? 
			@in_fahrenheit = ctof(hash[:c])
		else
			@in_fahrenheit = hash[:f]
		end
		if hash[:c].nil? 
			@in_celsius = ftoc(hash[:f])
		else
			@in_celsius = hash[:c]
		end
	end

	def self.from_celsius(temp)
		self.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		self.new(:f => temp)
	end

	def ftoc(temp)
		(temp.to_f - 32.0)* 5.0/9.0
	end

	def ctof(temp)
		(temp.to_f * (9.0/5.0)) + 32
	end
end

class Celsius < Temperature
	def initialize(temp)
		@in_celsius = temp
		@in_fahrenheit = ctof(temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@in_fahrenheit = temp
		@in_celsius = ftoc(temp) 
	end
end
