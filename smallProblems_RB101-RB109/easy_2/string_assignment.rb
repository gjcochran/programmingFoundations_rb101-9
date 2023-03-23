# Take a look at the following code:
# What does this code print out? Think about it for a moment before continuing.

# name = "Bob"
# save_name = name
# name = "Alice"
# puts name, save_name
# # Alice, Bob
# # correct

name = "Bob"
save_name = name
name.upcase!
puts name, save_name
# BOB, BOB
# explanation: when change a variable destructively, it remains the same object (can verify this with name.object_id in irb)
