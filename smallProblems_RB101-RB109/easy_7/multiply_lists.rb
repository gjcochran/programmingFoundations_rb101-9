# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# E
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# arr3[0] = arr1[0] * arr2[0]
# etc

# D/A
# can definitely do with a loop which will do first 
# each_index or each_with_index may be simpler

def multiply_list_v1(a1, a2)
  counter = 0
  a3 = []
  loop do
    a3[counter] = a1[counter] * a2[counter]
    counter +=1
    break if counter == a1.size
  end
  a3
end

p multiply_list_v1([3, 5, 7], [9, 10, 11])


def multiply_list_v2(a1, a2)
  a3 = []
  a2.each_index do |ind|
    a3[ind] = a1[ind] * a2[ind]
  end
  a3
end

p multiply_list_v2([3, 5, 7], [9, 10, 11])

# LS answer used each_with_index

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11])

