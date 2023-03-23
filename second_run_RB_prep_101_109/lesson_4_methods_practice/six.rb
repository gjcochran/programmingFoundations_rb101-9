flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Write code that changes the array below so that all of the names are shortened to just the first three characters. Do not create a new array.

flintstones.each { |n| n.slice!(3..-1) }
p flintstones

# this one took me awhile to figure out how to do without creating a new array..

# LS answer used map! which I didn't realize existed... `flintstones.map! { |n| n[0, 3] }
