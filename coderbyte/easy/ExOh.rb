 # Have the function ExOh(str) take the str parameter being passed 
 # and return the string true if there is an equal number of x's and o's, otherwise 
 # return the string false. Only these two letters will be entered in the string, 
 # no punctuation or numbers. For example: if str is "xooxxxxooxo" then the output should r
 # eturn false because there are 6 x's and 5 o's.

def ExOh(str)
  return str.downcase.scan(/o/).length == str.downcase.scan(/x/).length      
end

puts ExOh(ARGV[0])