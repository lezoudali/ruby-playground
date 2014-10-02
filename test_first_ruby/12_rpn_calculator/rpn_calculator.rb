class RPNCalculator

	def initialize
		@nums = Array.new
	end

	def value
		@nums.last
	end

	def push(num)
		@nums << num
	end

	def plus
		if @nums.length >=2
			@nums << @nums.pop + @nums.pop
		else
			raise "calculator is empty"
		end
	end

	def minus
		if @nums.length >=2
			@nums << 0 - @nums.pop + @nums.pop
		else
			raise "calculator is empty"
		end
	end

	def divide 
		if @nums.length >= 2
			@nums << (1/@nums.pop.to_f)*(@nums.pop.to_f)
		else
			raise "calculator is empty"
		end
	end

	def times
		if @nums.length >= 2
			@nums << @nums.pop * @nums.pop
		else
			raise "calculator is empty"
		end
	end

	def tokens(str)
		str.split(/\s+/).map do |elt|
			if ['+', '-', '*', '/'].include? elt
				elt.to_sym
			else
				elt.to_i
			end
		end
	end

	def evaluate(str)
		tokens(str).each do |elt|
			if elt == :+
				plus()
			elsif elt == :-
				minus()
			elsif elt == :*
				times()
			elsif elt == :/
				divide()
			else
				push(elt)
			end
		end
		value()
	end

end



