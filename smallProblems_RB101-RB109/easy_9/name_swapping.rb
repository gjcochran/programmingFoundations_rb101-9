# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# E
# swap_name('Joe Roberts') == 'Roberts, Joe'

# D/A -- will convert to array and use reverse then join with specified output

# test

# irb(main):003:0> arr = 'Joe Roberts'.split
# => ["Joe", "Roberts"]
# irb(main):005:0> arr.reverse.join(', ')
# => "Roberts, Joe"

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

# correct

