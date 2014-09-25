 # Have the function LongestWord(sen) take the sen parameter being passed
 # and return the largest word in the string. If there are two or more words 
 # that are the same length, return the first word from the string with that 
 # length. Ignore punctuation and assume sen will not be empty.

Use the Parameter Testing

def LongestWord(sen)
  longest = ''
  sen.scan(/\w+/).each {|word| longest = word if longest.length < word.length }
  return longest     
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
puts LongestWord(ARGV[0])           
