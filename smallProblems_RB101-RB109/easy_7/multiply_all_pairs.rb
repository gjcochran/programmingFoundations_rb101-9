# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# E
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# arr1[0] * arr2(at all indices), then repeat for all arr1 elements
# push all to a new array
# sort new array and return
# i think can chain multiple map or each_ind methods in order to achieve this

def multiply_all_pairs(a1, a2)
  result = []
  a1.each_with_index do |el, ind|
    result << el * a2[ind] # not sure how to nest another each method!!
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

# attempt 2 with loop method

def multiply_all_pairs_v2(a1, a2)
  result = []
  counter_a = 0
  counter_b = 0
  loop do
    loop do
      result << a1[counter_a] * a2[counter_b]
      counter_b += 1
      break if counter_b == a2.size
    end
    counter_b = 0
    counter_a += 1
    break if counter_a == a1.size
  end
  result.sort
end

p multiply_all_pairs_v2([2, 4], [4, 3, 1, 2])
p multiply_all_pairs_v2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# LS did use the each method! below...

# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

# # OR

# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
# end