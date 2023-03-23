s = "abc"
puts s.public_methods.inspect

#Returns the list of public methods accessible to obj. If the all parameter is set to false, only those methods in the receiver will be listed.

puts s.public_methods(false).inspect
