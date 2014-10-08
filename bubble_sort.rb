# Build a method #bubble_sort that takes an array and returns a sorted array.
# It uses the bubble sort methodology
def sorted? arr
	0.upto(arr.length-2) do |i|
		return false if arr[i] > arr[i+1]
	end
	true
end

def bubble_sort arr
	while sorted?(arr)  == false
		0.upto(arr.length-2) do |i|
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
			end
		end
	end
	arr
end

# create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
# The block should take two arguments which represent the two elements currently being compared. 
# Expect that the block's return will be similar to the spaceship operator 
# if the result of the block is negative, the element on the left is "smaller" than the element on the right. 
# 0 means they are equal. A positive result means the right element is greater. 
# Example:
#     > bubble_sort_by(["hi","hello","hey"]) do |left,right|
#     >   right.length - left.length
#     > end
#     => ["hi", "hey", "hello"]

def bubble_sort_by arr
	arr.length.times do 
		(arr.length-1).times do |i|
			if yield(arr[i], arr[i+1]) < 0
				arr[i], arr[i+1] = arr[i+1], arr[i]
			end
		end
	end
	arr
end

p bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length } 	#=> ["hi", "hey", "hello"]
p  bubble_sort [4, 2, 5, 5, 7, 9, 8, 3, 6, 1, 3]								 	#=> [1, 2, 3, 3, 4, 5, 5, 6, 7, 8, 9]


