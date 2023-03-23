# answer. failed to solve myself

#def merge(a1, a2)
 # arr = a1 + a2
  #result = []
  #(arr.min).upto(arr.max) do |i|
   # arr.each { |el| result << el if el == i }
  #end
  #result
#end
#==> note that my original answer above is WAY TOO SLOW to work for recursion 
def merge(a1, a2)
  i2 = 0
  result = []

  a1.each do |v|
    while i2 < a2.size && a2[i2] <= v
      result << a2[i2]
      i2 += 1
    end
    result << v
  end
  result.concat(a2[i2..-1])
end

def merge_sort(arr)
  return arr if arr.size == 1

  sub_arr_1 = arr[0...arr.size/2]
  sub_arr_2 = arr[arr.size/2...arr.size]

  sub_arr_1 = merge_sort(sub_arr_1)
  sub_arr_2 = merge_sort(sub_arr_2)

  merge(sub_arr_1, sub_arr_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
