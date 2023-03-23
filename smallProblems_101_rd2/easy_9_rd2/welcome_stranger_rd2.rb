# input: array && hash
#   array.size >= 2 (arr.join(' ') = a human name)
#   hash.size == 2 (keys are :title and :occupation)
# output: return a string greeting human and mention their job / title 

def greetings(arr, hsh)
  "Hello #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# good.
