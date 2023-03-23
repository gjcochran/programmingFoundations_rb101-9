# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

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
    break if index == arr[0].size
  end

  result
end
# Examples:

p transpose_matrix([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose_matrix([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose_matrix([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose_matrix([[1]]) == [[1]]
p transpose_matrix([[1, 2, 3, 4]])
p transpose_matrix([[1], [2], [3], [4]]) 
p transpose_matrix([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) 
p transpose_matrix([[1]])

# atttempt to adjust the LS version, from memory
def transpose(arr)
  result = []
  (0..arr[0].size-1).each do |outer|
    sub_arr = (0..arr.size-1).map { |inner| arr[inner][outer] }
    result << sub_arr
  end
  result
end
p transpose([[1, 2, 3, 4]])

# note that they used range with 3 dots rather than 2 dots to avoid (doing what i did and writing arr[0].size - 1 ie num_cols - 1)
#typing out LS solution below for reference

def transpose_v2(arr)
  result = []
  num_rows = arr.size
  num_cols = arr.first.size
  (0...num_cols).each do |col_idx|
    new_row = (0...num_rows).map { |row_idx| arr[row_idx][col_idx] }
    result << new_row
  end
  result
end

p transpose_v2([[1, 2, 3, 4]])