# input: array of arrays (w sub els)
# output: array of arrays transposed
# cannot use transpose method or Matrix class
#

# example
# matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# going to attempt to write this as if the matrix could be any size, not just 3x3
# for example: could just make 3 local variables and select by index

# A
# arr.map_with_index
# a little contrived, but will make hash with keys are total sub arrays
# push sub els at given index to associated hash key
# hash.values will return an array of arrays 

def transpose(arr)
  hsh = (1..arr.size).each_with_object ({}) { |el, h| h[el] = [] }
  arr.each do |sub|
    sub.each_with_index do |el, i|
      hsh[i+1].push(el)
    end
  end
  hsh.values
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# mine works well, but actually prefer LS solution as is a bit simpler

def transpose_LS(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end
