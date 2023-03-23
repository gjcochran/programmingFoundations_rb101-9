flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

p flintstones.index(flintstones.select { |s| s.start_with?('Be') }.first)

# worked but made it too complicated... could have just done...
p flintstones.index { |s| s.start_with?('Be') }
