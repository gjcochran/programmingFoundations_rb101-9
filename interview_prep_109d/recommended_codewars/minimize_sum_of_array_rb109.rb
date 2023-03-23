=begin
Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product .
Array/list will contain positives only .
Array/list will always have even size

Examples:
minSum({5,4,2,3}) ==> return (22) 
  The minimum sum obtained from summing each two integers product ,  5*2 + 3*4 = 22
minSum({12,6,10,26,3,24}) ==> return (342)
  The minimum sum obtained from summing each two integers product ,  26*3 + 24*6 + 12*10 = 342
minSum({9,2,8,7,5,4,0,6}) ==> return (74)
  The minimum sum obtained from summing each two integers product ,  9*0 + 8*2 +7*4 +6*5 = 74
=end

# input - array (of integers)
# return - integer
# goal - minimum sum.. all potential
#   pairs of two multiplied together and then summed
# rules:
#   input array always even size (breaks down into pairs)
#   will only contain positive integer elements

# algorithm
#   return 0 if input array is empty
#   intialize variable assigned empty array to store results
#   use permutation with argument of size of array
#     to find every potential array sort
#     && store all potential options in results array
#   iterate (map) over the results array
#     for each subarray 
#         for even indices... else next
#         slice in 2 element increments at even indices
#         store the product of those slices in a temporary array
#         sum all multiplied values in temp array together and this sum
#         is what is returned at the subarray index as transformed value for each map iteration
#   find min value of map return array and return this value
#

def min_sum(array)
  return 0 if array.empty?
  results = []
  array.permutation(array.size) { |perm| results << perm }
  sums = results.map do |subarray|
    temp_arr = []
    array.size.times do |i|
      if i.even?
        temp_arr << subarray.slice(i, 2).inject(:*)
      else
        next
      end
    end
    temp_arr.sum
  end
  sums.min
end

p min_sum([5,4,2,3])
p min_sum([12,6,10,26,3,24])
p min_sum([9,2,8,7,5,4,0,6])

## solved in 27 mins, much harder than expected!
# passed all basic tests in codewars... timed out on longer random tests. 
#   likely permutation is not best approach here, but not sure of another way to solve!
