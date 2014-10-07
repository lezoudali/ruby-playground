=begin
Implement a method #substrings that takes a word as the first argument
and then an array of valid substrings (your dictionary) as the second argument. 
It should return a hash listing each substring (case insensitive) that was found
in the original string and how many times it was found.
=end

def substrings(string, dictionary=0)
	result = Hash.new(0)

	str_array = string.downcase.gsub(/\W/, ' ').split(' ')
	str_array.each do |word|
		dictionary.each do |substring|
			result[substring] += 1 if word.include? substring
		end
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)