# given a method and expected outputs, find and fix a bug, explaining what did

def my_method(array)
  if array.empty?
    []
  #elsif
  elsif array.size > 1  
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# expecting
#[]
#[21]
#[9, 16]
#[25, 36, 49]

# answer:
# there is nothing written for elsif..
# i think it is...
# `elsif arr.size > 1`
# inputted into code, tested, and works
# solved without running code
# review: good. correct answer.
