 # Have the function FirstFactorial(num) take the num parameter being passed 
 # and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). 
 # For the test cases, the range will be between 1 and 18.

def FirstFactorial(num, a = 1)
  if (num == 1)
    return a
  end

  return FirstFactorial(num-1, a*num)
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
puts FirstFactorial(ARGV[0].to_i)