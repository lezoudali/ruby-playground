# Using the Ruby language, have the function PrimeTime(num) take the num parameter being passed 
# and return the string true if the parameter is a prime number, otherwise return the string false. 
# The range will be between 1 and 2^16. 

def PrimeTime(num)
  2.upto(num-1).each do |i|
   return false if num%i==0 end
  true
end

puts PrimeTime(ARGV[0].to_i)