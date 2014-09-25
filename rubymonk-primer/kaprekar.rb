# 9 is a Kaprekar number since
# 9 ^ 2 = 81 and 8 + 1 = 9
# 297 is also Kaprekar number since
# 297 ^ 2 = 88209 and 88 + 209 = 297.
# In short, for a Kaprekar number k with n-digits, 
# if you square it and add the right n digits to the 
# left n or n-1 digits, the resultant sum is k. 

def kaprekar?(k)
  square = k**2
  n = k.to_s.length
  ((square.to_s.split('')[0..n-1].join.to_i + square.to_s.split('')[n..-1].join.to_i) == k) || 
  ((square.to_s.split('')[0..n-2].join.to_i + square.to_s.split('')[n-1..-1].join.to_i) == k)
   
end

puts kaprekar?(297)