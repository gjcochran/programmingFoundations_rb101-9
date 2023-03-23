flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

p flintstones.each_with_object({}).with_index { |(el, h), i| h[el] = i }

# works
# LS answer was to create an empty hash then fill it using each_with_index
