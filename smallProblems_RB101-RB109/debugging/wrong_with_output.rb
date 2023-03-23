# print an array of numeric strings in reverse numerical order.

# original
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# debugged
# easy answer but not one that they likely are looking for as removed some code...
p arr.map(&:to_i).sort.reverse.map(&:to_s)

# second answer still removed some code, but is closer
arr2 = ["9", "8", "7", "10", "11"]
p arr2.map(&:to_i).sort { |x, y| y <=> x }.map(&:to_s)


# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# LS answer (simpler than expected...)

p arr.sort { |x, y| y.to_i <=> x.to_i }