# Given an array containing 
# some strings,return an array 
# containing the length of those strings. 

def length_finder(input_array)
  output_array = []
  input_array.each { |elt| output_array << elt.length }
  output_array
end