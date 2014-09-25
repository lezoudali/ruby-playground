# Given a 3 or 4 digit number with distinct digits, 
# return a sorted array of all the unique numbers that can be formed with those digits.
# Example:
# Given: 123
# Return: [123, 132, 213, 231, 312, 321]


def number_shuffle(number)
  # your code here
  if number.to_s.length == 3 
    number_of_comb = 6 
  elsif number.to_s.length == 4
    number_of_comb =  24
  else
    return "number must be 3 or 4 digits"
  end
  
  combs = Array.new
  while combs.length != number_of_comb do 
    combs << number.to_s.split('').shuffle.join.to_i
    combs = combs.uniq
  end
  combs.sort
end
