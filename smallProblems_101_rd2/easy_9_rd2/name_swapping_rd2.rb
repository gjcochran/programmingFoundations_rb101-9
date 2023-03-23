# input: string -> "first_name last_name"
# ouptut: string -> "last_name, first_name"

def swap_name(str)
  arr = str.split
  "#{arr[1]}, #{arr[0]}"
end

p swap_name('Joe Roberts')

# review: good.
# LS solution even simpler ... `str.split.reverse.join(', ')`
#
#
