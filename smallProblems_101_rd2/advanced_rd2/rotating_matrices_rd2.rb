# rotate a matrix 90 degrees clockwise
# input: array of arrays
# output: array of arrays
# ex...
#   matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
#   rotated = [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# note: the difference between this problem and the last one is that each subarray is reversed...
# at least thats the on the surface difference
# can either:
#   reverse once is in hash
#   use reverse_each rather than each
#   push to hash using unshift rather than push method
# going to use the 3rd of the above 3 options

def rotate90(arr)
  hsh = (1..arr.first.size).each_with_object ({}) { |el, h| h[el] = [] }
  arr.each do |sub|
    sub.each_with_index do |el, i|
      hsh[i+1].unshift(el)
    end
  end
  hsh.values
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# good. LS answer for reference typed out below: they went for the reverse each subarray option (of 3 options i listed above)

def rotate90_LS(arr)
  result = []
  num_rows = arr.size
  num_cols = arr.first.size
  (0...num_cols).each do |col_idx|
    new_row = (0...num_rows).map do |row_idx|
      arr[row_idx][col_idx]
    end
    result << new_row.reverse
  end
  result
end
