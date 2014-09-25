# Have the function LetterChanges(str) take the str parameter being passed
# and modify it using the following algorithm. Replace every letter in 
# the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
# Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
# Use the Parameter Testing feature in the box below to test your code with different arguments.

def LetterChanges(str)
	str_array = str.split('')
	0.upto(str_array.length - 1) do |i|

		if str_array[i] == 'z'
			str_array[i] = 'A'
		elsif str_array[i] == 'Z'
			str_array[i] = 'A'
		elsif !(str_array[i] !~ /[A-Za-z]/)
			str_array[i] = str_array[i].next
            if !(str_array[i] !~ /[aeiou]/)
              str_array[i] = str_array[i].upcase
            end
		end
	end
	str_array.join   
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
puts LetterChanges(ARGV[0])           
