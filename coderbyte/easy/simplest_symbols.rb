 # Have the function SimpleSymbols(str) take the str parameter being passed and 
 # determine if it is an acceptable sequence by either returning the string true or false. 
 # The str parameter will be composed of + and = symbols with several letters between them
 # (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. 
 # So the string to the left would be false. The string will not be empty and will have at least one letter.

def SimpleSymbols(str)
  str_array = str.split('')
  str_array.each_with_index do |ch, index|
    if !(ch !~ /[a-zA-Z]/)
      return false if index == 0 || index == str_array.length-1
      return false if (str_array[index-1] != '+') || (str_array[index+1] != '+')
    end
  end
  true
end

puts SimpleSymbols(ARGV[0])

#Input = "+d+=3=+s+"Output = "true"
#Input = "f++d+"Output = "false" 
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
#SimpleSymbols(STDIN.gets)  


















  