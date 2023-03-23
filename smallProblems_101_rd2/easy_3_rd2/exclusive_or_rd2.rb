# write a method that takes two arguments, 
# returns `true` if one argument is truthy
# returns `false` otherwise

# D/A - if/else
# only things that are falsy are false and nil

def xor(param1, param2)
  result = []
  if param1 != false && param1 != nil
    result << true
  else
    result << false
  end
  
  if param2 != false && param2 != nil
    result << true
  else
    result << false
  end

  result = result.select { |el| el == true }
  
  result.size == 1 ? true : false
end

p xor(5.even?, 4.even?) == true
p xor(5.odd?, 4.odd?) == true
p xor(5.odd?, 4.even?) == false
p xor(5.even?, 4.odd?) == false

# REVIEW: my answer worked but if far too complicated
# LS answer below
# def xor(val1, val2)
#   return true if val1 && !val2
#   return true if val2 && !val1
#   false
# end

