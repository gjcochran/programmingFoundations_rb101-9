# make work with matrices of any size... mine already should.
# going to retype from memory and test before see if need to adjust
# update: mine only works with nxn matrices... need to adjust to work with different sizes
# could've guessed from name of problem... MxN
# only update to make work: change how set number of hash keys from
# ... `(1..arr.size)` to `(1..arr.first.size)`

def transpose(arr)
  hsh = (1..arr.first.size).each_with_object ({}) { |el, h| h[el] = [] }
  arr.each do |sub|
    sub.each_with_index do |el, i|
      hsh[i+1].push(el)
    end
  end
  hsh.values
end

p transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# good. LS answer for reference:

def transpose_LS(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end
