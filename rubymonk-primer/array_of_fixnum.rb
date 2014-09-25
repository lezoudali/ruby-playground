#Given an array, return true if all the elements are Fixnums. 

def array_of_fixnums?(array)
  #array.all? { |x| x.class == Fixnum } or   
  array.each do |x| 
    if !(x.is_a? Fixnum)
      return false
    end
  end
  true
  
end