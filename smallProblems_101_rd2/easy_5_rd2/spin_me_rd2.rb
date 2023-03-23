# will the returned string be the same object as the one passed in as an argument or a different object?
#
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(' ')
end

spin_me('hello world')

# different object
# split method will produce a new object
#
# although, LS notes...

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id # 47264354160220
puts spin_me(arr).object_id # 47264354160220
# same object if they only methods are each and reverse!
