#implementation of caesar cipher
#takes a string and the shift factor 
#and outputs the modified string

def caesar_cipher(str, shift=0)
	shift = shift%26
	str_array = str.split(//)
	str_array.each_with_index do |chr, i|
		if chr.match(/[a-z]/)
			str_array[i] = (chr.ord + shift).chr
			if str_array[i].ord > 'z'.ord
				str_array[i] = ((str_array[i].ord % 'z'.ord-1) + 'a'.ord).chr
			end
		elsif chr.match(/[A-Z]/)
			str_array[i] = (chr.ord + shift).chr
			if str_array[i].ord > 'Z'.ord
				str_array[i] = ((str_array[i].ord % 'Z'.ord-1)+ 'A'.ord).chr
			end	
		end
	end
	str_array.join
end

puts caesar_cipher(ARGV[0], ARGV[1].to_i)