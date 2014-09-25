#Given an Array, return the elements that are present exactly once in the array.

def non_duplicated_values(values)
  # Write your code here
  values.select{|a| values.count(a) == 1}
end