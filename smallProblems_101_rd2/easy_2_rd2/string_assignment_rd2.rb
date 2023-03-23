name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# will print
# BOB
# BOB
#
# on line 2 save_name and name variables are both pointing to the same object
# as String#upcase! is a mutating method, the object that both variables are pointing to
# will be mutated and both variable values will change from 'Bob' to 'BOB'
#
# REVIEW: I confused upcase and captizalize (have since adjusted). answer was okay tho, 50%
# LS explanation for ref: Because assignment in ruby just assigns a reference to a variable, 
# both name and save_name refer to the same string, Bob. When you apply name.upcase!, 
# which mutates name in place, the value that save_name references also changes. 
# Thus, both name and save_name are set equal to 'BOB'.

