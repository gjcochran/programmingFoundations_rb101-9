# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements. For example:
# 1  5  8
# 4  7  2
# 3  9  6

# can be described by the Array of Arrays:
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix. For example, the transposition of the array shown above is:

# 1  4  3
# 5  7  9
# 8  2  6

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# Examples
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]] # true
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]] # true



# inner loop is el
# outer loop is index

def transpose_matrix(arr)
  result = []
  index = 0

  loop do
    sub_arr = 0
    sub_result = []

    loop do
      sub_result << arr[sub_arr][index]
      sub_arr += 1
      if sub_arr == arr.size
        result << sub_result
        break
      end
    end
    
    index += 1
    break if index == arr.size
  end

  result
end

matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p transpose_matrix(matrix)
p matrix

# LS solution typed below. their answer was actually very similar to mine, although they used each and map methods nested rather than nested loop methods

def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

