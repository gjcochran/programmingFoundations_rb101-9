# what will following code print

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# the key question here is are the objects in array2 the same as the OG array1 objects
# i believe yes b/c shovel is a mutating method
# therefore puts array2 will print
# %w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)

# review: correct.
