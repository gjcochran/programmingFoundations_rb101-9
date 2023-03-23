# String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU? Modify the code so that it produces the expected output.

# original

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# debugged
# the reason is that the each method does not modify the array. there are multiple options to fix this, one below

def shout_out_to_v2(name)
  new_name = name.chars.each { |c| c.upcase! }

  puts 'HEY ' + new_name.join
end

shout_out_to_v2('you') # expected: 'HEY YOU'

# LS answer below
# The String#chars method returns an array of the characters in a string, so name.chars in our example returns ['y', 'o', 'u']. Note that these character strings are new String objects, different from the name string, and it's those objects that we mutate on line 2. On line 4, name is therefore still 'you'.

# The solution is to upcase name directly, either as shown in the solution above or using the non-destructive String#upcase method as follows:

def shout_out_to_LS1(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to_LS1('you')

def shout_out_to_LS2(name)
  puts 'HEY ' + name.upcase
end

shout_out_to_LS2('you')