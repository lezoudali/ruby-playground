#built my own version of some of the methods from the Enumerable module 

module Enumerable
	def my_each
		return self.to_enum unless block_given?
		for i in self
			yield(i)
		end
		self
	end

	def my_each_with_index(i=0)
		return self.to_enum unless block_given?
		(i+self.length).times do |i|
			yield(self[i], i)
		end
		self
	end

	def my_select
		return self.to_enum unless block_given?
		selected = []
		self.my_each do |i|
			selected << i if yield(i) 
		end
		selected
	end

	def my_all?
		if block_given?
			self.my_each do |i|
				return false if !yield(i) 
			end
		else
			self.my_each do |i|
				return false if !i
			end
		end
		return true
	end

	def my_any?
		if block_given?
			self.my_each do |i|
				return true if yield(i)
			end
		else
			self.my_each do |i|
				return true if i 
			end
		end
		return false
	end


	def my_none?
		return !(self.my_any?) unless block_given?
		return !(self.my_any? {|i| yield(i)})
	end

	def my_count(n=nil)
		return self.size unless block_given? or n != nil
		if n != nil
			return self.my_select{|i| i == n}.size
		else
			arr = self.my_select {|i| yield(i)}
			arr.size
		end
	end

	#takes either a block or a proc
	def my_map(&my_proc)
		return self.to_enum unless block_given?
		arr = []
		for i in self
			arr << my_proc.call(i)
		end
		arr
	end

	def my_inject(n=0)
		result = n
		for i in self 
			result = yield(result, i)
		end
		result
	end

end

#a few test 
def multiply_els(list)
  list.my_inject(1) { |product, n| product * n }
end

puts multiply_els((5..10).to_a) #=> 151200

longest = %w{ cat sheep bear }.my_inject('') do |memo, word|
   memo.length > word.length ? memo : word
end
p longest                                        #=> "sheep"

#testing my_map

p %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
p %w{ant bear cat}.none? { |word| word.length >= 4 } #=> false
p [].none?                                           #=> true
p [nil].none?                                        #=> true
p [nil, false].none?                                 #=> true




















