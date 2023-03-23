# input: two arrays of integers
# output: one array -> product of every pair of ints between arg arrays

# D/A -- i think will use either permutation or combination to get all the pairs
# after reviewing docs, neither zip nor
# permutation nor combination methods were correct
# product method makes the most sense
# therefore, steps:
# product
# map (inject *)

def multiply_all_pairs(arr1, arr2)
arr1.product(arr2).map { |el| el.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# good, LS answer was very similar to mine

def multiply_LS(a1, a2)
  a1.product(a2).map { |n1, n2| n1 * n2 }.sort
end
