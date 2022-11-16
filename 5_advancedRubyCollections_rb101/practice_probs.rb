# How would you order this array of number strings by descending numeric value?
arr = %w[10 11 9 7 8]
p arr
# arr = arr.map { |st| st.to_i }.sort.reverse.map { |num| num.to_s }
arr = arr.map(&:to_i).sort.reverse.map(&:to_s)
p arr
# mine worked, LS answer below
# arr.sort { |a, b| b.to_i <=> a.to_i }
# => ["11", "10", "9", "8", "7"]
# https://ruby-doc.org/core-3.1.2/String.html#method-i-3C-3D-3E

# ------- #2 -------
# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?
books = [
  {
    title: "One Hundred Years of Solitude",
    author: "Gabriel Garcia Marquez",
    published: "1967",
  },
  {
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    published: "1925",
  },
  { title: "War and Peace", author: "Leo Tolstoy", published: "1869" },
  { title: "Ulysses", author: "James Joyce", published: "1922" },
]
p books.sort_by { |el| el[:published].to_i }
# this was correct but note that actually didn't have to convert to integers, in this case

# ------- #3-------
# For each of these collection objects demonstrate how you would reference the letter 'g'.
# 3.1
arr1 = ["a", "b", ["c", %w[d e f g]]]
p arr1[2][1][3]

# 3.2
arr2 = [{ first: %w[a b c], second: %w[d e f] }, { third: %w[g h i] }]
p arr2[1][:third][0]

# 3.3
arr3 = [["abc"], ["def"], { third: ["ghi"] }]
p arr3[2][:third][0].chars[0] #works but could write arr3[2][:third][0][0]

# 3.4
hsh1 = { "a" => %w[d e], "b" => %w[f g], "c" => %w[h i] }
p hsh1["b"][1]

# 3.5
hsh2 = {
  first: {
    "d" => 3,
  },
  second: {
    "e" => 2,
    "f" => 1,
  },
  third: {
    "g" => 0,
  },
}
p hsh2[:third].keys[0] # could also write hsh2[:third].key(0)

# ------- #4-------
# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.
arr1 = [1, [2, 3], 4]
p arr1
arr1[1][1] = 4
p arr1

arr2 = [{ a: 1 }, { b: 2, c: [7, 6, 5], d: 4 }, 3]
p arr2
arr2[2] = 4
p arr2

hsh1 = { first: [1, 2, [3]] }
p hsh1
hsh1[:first][2][0] = 4
p hsh1

hsh2 = { ["a"] => { a: ["1", :two, 3], b: 4 }, "b" => 5 }
p hsh2
hsh2[["a"]][:a][2] = 4
p hsh2

# ------- #5-------
# figure out the total age of just the male members of the family.
munsters = {
  "Herman" => {
    "age" => 32,
    "gender" => "male",
  },
  "Lily" => {
    "age" => 30,
    "gender" => "female",
  },
  "Grandpa" => {
    "age" => 402,
    "gender" => "male",
  },
  "Eddie" => {
    "age" => 10,
    "gender" => "male",
  },
  "Marilyn" => {
    "age" => 23,
    "gender" => "female",
  },
}

p munsters["Herman"]["age"]

def total_age(hash)
  total_age = 0
  counter = 0
  arr = hash.to_a
  loop do
    total_age += arr[counter][1]["age"] if arr[counter][1]["gender"] == "male"
    counter += 1
    break if counter == arr.size
  end
  total_age
end

p total_age(munsters)

# mine worked, tried with each first and couldnt figure out... turns out should have used each_value looking at the LS answer, pasted below
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age # => 444

# ------- #6-------
# Given this previously seen family hash, print out the name, age and gender of each family member, ...like this:
# (Name) is a (age)-year-old (male or female).
munsters = {
  "Herman" => {
    "age" => 32,
    "gender" => "male",
  },
  "Lily" => {
    "age" => 30,
    "gender" => "female",
  },
  "Grandpa" => {
    "age" => 402,
    "gender" => "male",
  },
  "Eddie" => {
    "age" => 10,
    "gender" => "male",
  },
  "Marilyn" => {
    "age" => 23,
    "gender" => "female",
  },
}
munsters.each_pair do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
end

# could also use Hash#each with two block parameters.

# ------- #7 -------
# Given this code, what would be the final values of a and b? Try to work this out without running the code.
a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8]]

arr[0] += 2
# arr[0] = 2 ... 4
arr[1][0] -= a
# arr[1][0] = 5 ... 5 - 2 = 3
# arr = [4, [3, 8]]
# a = 2 # correct
# b = [5, 8] # wrong [3, 8]! "The value of b did change because b is an array and we are modifying that array by assigning a new value at index 0 of that array."

# ------- #8 -------
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {
  first: %w[the quick],
  second: %w[brown fox],
  third: ["jumped"],
  fourth: %w[over the lazy dog],
}
hsh.each_value { |val| val.each { |str| puts str.scan(/a|e|i|o|u/) } }
#==>
# e
# u
# i
# o
# o
# u
# e
# o
# e
# e
# a
# o

# my solution worked, although required me to research regex to figure out how to search for a or e or i ...
# couldn't figure out how to compare to a variable vowels include include? method, LS did exactly this, pasted below
vowels = "aeiou"

hsh.each do |_, value|
  value.each do |str|
    str.chars.each { |char| puts char if vowels.include?(char) }
  end
end
# e
# u
# i
# o
# o
# u
# e
# o
# e
# e
# a
# o

# ------- #9 -------
# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.
arr = [%w[b c a], [2, 1, 3], %w[blue black green]]
p arr.map { |sub| sub.sort.reverse }
#=> [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

# mine worked using the reverse method, could also use the b <=> a tactic, as seen in LS answer pasted below
arr.map { |sub_arr| sub_arr.sort { |a, b| b <=> a } }
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

# ------- #10 -------
# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
array = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]
# irb(main):157:0> array.map { |el| el.map { |k,v| v + 1 }}
# => [[2], [3, 4], [5, 6, 7]] # works but isn't the same structure as map method returns an array or arrays rather than an array of hashes..
# figured it out!
# array.map { |el|  el.map { |k,v| [k, v + 1] }.to_h}
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]
# irb(main):166:0>
p array.map { |el| el.map { |k, v| [k, v + 1] }.to_h }
#=> [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# LS answer below as its a bit different
[{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }].map do |hsh|
  incremented_hash = {}
  hsh.each { |key, value| incremented_hash[key] = value + 1 }
  incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# ------- #11 -------
# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.
arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]
# irb(main):167:0> arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]
# => [[2], [3, 5, 7, 12], [9], [11, 13, 15]]
# irb(main):168:0>     arr.map { |arr| arr.select { |int| int % 3 == 0 }}
# => [[], [3, 12], [9], [15]]
arr.map { |arr| arr.select { |int| int % 3 == 0 } }
# my answer was the same as LS

# ------- #12 -------
# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], %w[b two], ["sea", { c: 3 }], [{ a: 1, b: 2, c: 3, d: 4 }, "D"]]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
hsh = {}
arr.each { |k, v| hsh[k] = v }
p hsh
#=> {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
# mine worked and was similar to LS, although they only used one argument in their each method
# hsh = {}
# arr.each { |item| hsh[item[0]] = item[1] }
# hsh # => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# ------- #13 -------
# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# irb(main):182:0> arr = [[1, 9], [1,7], [1, 3], [1, 5, 9]]
# => [[1, 9], [1, 7], [1, 3], [1, 5, 9]]
# irb(main):183:0> arr.sort
# => [[1, 3], [1, 5, 9], [1, 7], [1, 9]]
# why does sort not take into consideration the 3rd element of 9 in the second subarray?? # compares elements in order first and since 5 is less than 7 does not move to 3rd..
# irb(main):190:0>                 arr.each { |sub| sub.delete_if { |int| int.even? }}
# => [[1, 9], [1, 7], [1, 3], [1, 5, 9]]
# irb(main):191:0>                 arr.each { |sub| sub.delete_if { |int| int.even? }}.sort
# => [[1, 3], [1, 5, 9], [1, 7], [1, 9]]
# p arr.each { |sub| sub.delete_if { |int| int.even? } }.sort
# ^^ this is close but does not fulfill reqs as does not return the subarrays containing the even elements.
# dont want to delete them.. want to ignore them while sorting

# couldn't figure out! looked at answer
arr.sort_by { |sub_arr| sub_arr.select { |num| num.odd? } }
# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# ------- #14 -------
# Given this data structure write some code to return an array containing the colors of the fruits, and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.
hsh = {
  "grape" => {
    type: "fruit",
    colors: %w[red green],
    size: "small",
  },
  "carrot" => {
    type: "vegetable",
    colors: ["orange"],
    size: "medium",
  },
  "apple" => {
    type: "fruit",
    colors: %w[red green],
    size: "medium",
  },
  "apricot" => {
    type: "fruit",
    colors: ["orange"],
    size: "medium",
  },
  "marrow" => {
    type: "vegetable",
    colors: ["green"],
    size: "large",
  },
}

# irb(main):236:0> hsh.select { |_, plant| plant if plant[:type] == "vegetable" }
# => {"carrot"=>{:type=>"vegetable", :colors=>["orange"], :size=>"medium"}, "marrow"=>{:type=>"vegetable", :colors=>["green"], :size=>"large"}}

# irb(main):239:0> hsh.map { |_, plant| plant[:size].upcase if plant[:type] == "vegetable" }
# => [nil, "MEDIUM", nil, nil, "LARGE"]

hsh.map do |_, plant|
  if plant[:type] == "vegetable"
    plant[:size].upcase
  else
    plant[:colors].map { |str| str.capitalize }
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# answer was exactly the same as LS

# ------- #15 -------
# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.
arr = [
  { a: [1, 2, 3] },
  { b: [2, 4, 6], c: [3, 6], d: [4] },
  { e: [8], f: [6, 10] },
]

arr.map do |hsh|
  ret = {}
  hsh.map { |k, v| ret[k] = v if v.all? { |int| int.even? } }
  ret
end
# => [{}, {:b=>[2, 4, 6], :d=>[4]}, {:e=>[8], :f=>[6, 10]}]

# was pretty close but not quite! LS answer below
# arr.select { |hsh| hsh.all? { |_, value| value.all? { |num| num.even? } } }
# => [{:e=>[8], :f=>[6, 10]}]
# explanation: If all of the integers in an inner array are even then the inner block returns true to the innermost call to all?. If all of the inner blocks for a particular hash return true then the middle block returns true to the outer call to all? which in turn causes the outer block to return true to the select method for that iteration.

# ------- #16 -------
# A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# https://ruby-doc.org/stdlib-2.5.1/libdoc/securerandom/rdoc/SecureRandom.html
# the SecureRandom library will work but i doubt that is what LS wants for this challenge

require "securerandom"
p SecureRandom.uuid

# not sure how to use regex ex. /[a-z0-9]/ with the Kernel#rand method

# LS solution below
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ("a".."f").each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += "-" unless index >= sections.size - 1
  end

  uuid
end
