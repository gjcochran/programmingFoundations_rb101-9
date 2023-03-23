# reverse an array without using reverse

# algo
#   each with index
#   push to start of result array using unshift
#   return that result array

def reverse(arr)
  result = []
  arr.each { |e| result.unshift(e) }
  result
end

p reverse(%w(a b c d e))
