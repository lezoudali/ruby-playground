class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def entries
		@entries
	end

	def add(input)
		if input.is_a? Hash
			input.each{|key, value| @entries[key] = value}
		elsif input.is_a? String
			@entries[input] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end


	def include?(x)
		if @entries.keys.include?(x)
			true
		else
			false
		end
	end

	def find(key)
		@entries.select { |k| k =~ /(#{key})/ }
	end

	def printable
		keywords.map { |key| "[#{key}]" + " " + '\"#{entries[key]}\"'}.join("\n")
	end
end