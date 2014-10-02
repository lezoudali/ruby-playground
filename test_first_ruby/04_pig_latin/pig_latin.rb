def translate(words)
	output = []
	words.split(' ').each do |word|
		if %w(a e i o u).include? word[0] 	
			output << word+'ay'
		elsif %w(a e i o u).include? word[1] and word[0..1] != 'qu'
			 output << word[1..word.length]+word[0]+'ay'
		elsif (%w(a e i o u).include? word[2] or word[0..1] == 'qu') and word[1..2] != 'qu'
			output << word[2..word.length]+word[0..1]+'ay'
		else
			output << word[3..word.length]+word[0..2]+'ay'
		end
	end
	output.join(' ')
end

