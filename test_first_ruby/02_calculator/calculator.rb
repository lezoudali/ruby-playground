def add(*array)
	array.inject(:+)
end

def subtract(*array)
	array.inject(:-)
end

def sum(array)
	array.empty? ? 0 : array.inject(:+)
end

def multiply(*array)
	array.inject(:*)
end

def power(x, y)
	x**y
end

def factorial(num, tail = 1)
	return tail if num <=1
	factorial(num-1, tail*num)
end


