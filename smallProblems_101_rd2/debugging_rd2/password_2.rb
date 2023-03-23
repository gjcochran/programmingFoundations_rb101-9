password = ''

def set_password(pass)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  pass.gsub!('', new_password)
end

def verify_password(pass)
  p pass
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == pass
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if password.empty?
  set_password(password)
end

verify_password(password)

# password_2.rb:14:in `verify_password': undefined local variable or method `password' for main:Object (NameError)
# issues that i see
#   1 => nil is immutable so will never be able to alter the password variable as reassignment
#   is non_mutating and need to mutate the variable 
#     doesnt seem like a great idea to set password to something like '' though either.. but think will take this approac
#   2 => methods have self contained scope so cant access password variable without parameters/arguments
#

# my solution worked, LS solution is clever and prefer. they returned new_password from set_password method (no params/args)
# they added param/arg to verify_password
# and most critically, they adjusted if clause to password = set_password before the method call
