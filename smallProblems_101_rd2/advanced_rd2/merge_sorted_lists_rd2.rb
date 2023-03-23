# input: 2 sorted arrays
# output: array -> all elements from input arrays, sorted (including duplicates)
# rules: cannot provide solution that requires sorting a result array
#         cannot mutate input arrays

# A -- arr + arr2 .sort would work but breaks rules.
# thinking:
# concat
# loop 
#   add to result array if x
#   x += 1
#   break if result is same size as concat array

def merge(a1, a2)
  arr = a1 + a2
  result = []
  (arr.min).upto(arr.max) do |i|
    arr.each { |el| result << el if el == i }  
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

# works. much prefer my answer to LS answer. typing theirs out below for reference:

def merge_LS(a1, a2)
  idx2 = 0
  result = []
  
  a1.each do |v|
    while idx2 < a2.size && a2[idx2] <= v
      result << a2[idx2]
      idx2 += 1
    end
    result << v
  end

  result.concat(a2[idx2..-1])
end
