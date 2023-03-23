# input: array
# output: printed hash ex `hash.each { |k, v| puts "#{k} => #{v}" }`
# -> count number of items in array
# each discrete item is a key (symbol)
# count of each are the values (integer)

def count_occurrences(arr)
  hash = arr.each_with_object ({}) { |el, h| h[el] = arr.count(el) }
  hash.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)

# review: great. my solution is a simpler version of the LS answer

# FURTHER EXPLORATION: make case-insensitive
# not sure exactly what they're looking for, simplest way to solve..
# make entire input array the same case 
# otherwise... how would i determine is 'CAR' or 'car' is correct nomenclature??

def count_occurrences_casei(arr)
  new = arr.map(&:downcase)
  hash = new.each_with_object ({}) { |el, h| h[el] = new.count(el) }
  hash.each { |k, v| puts "#{k} => #{v}" }
end

vehicles2 = [
  'car', 'CAR', 'suv', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences_casei(vehicles2)
