class Book
	attr_accessor :title
	def title=(title)
		title.capitalize!
		book_title = title.split(' ').map do |word| 
		              	if ["and","in","the","of", "a", "an"].include? word 
		              		word
	              		else
		              		 word.capitalize 
	              		end
		              end
		@title = book_title.join(' ')
	end

	
end