def echo(arg="hello")
	arg
end

def shout(arg="hello")
	arg.upcase
end

def repeat(arg="hello", n = 2)
	output = []
	n.times{output << arg}
	output.join(' ')
end

def start_of_word(word, num=1)
	word[0..num-1]
end

def first_word(str, n = 1)
	str.split(' ').first(n).join
end

def titleize(str)
	str.capitalize!
	output = Array.new
	str.split(' ').each do |x|
		x.capitalize! if !["the", "and", "over"].include? x
		output << x
	end
	output.join(' ')
end


puts first_word("Hello Word")