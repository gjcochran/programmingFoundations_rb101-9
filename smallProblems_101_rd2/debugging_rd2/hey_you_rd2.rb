# modify code to print HEY YOU

def shout_out_to(name)
  name = name.chars.map { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you')

# works but is simpler to just not use the chars method at all!
# ie. line 2 of method just write `name.upcase!`
