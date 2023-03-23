# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# E
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
# irb(main):011:1" ["zero,", "one,", "two,", "three,", "four,", "five,", "six,", "seven,", "eight,", "nine,", "ten,", "eleven,", "twelve,", "thirteen,", "fourteen,", "fifteen,", "sixteen,", "seventeen,", "eighteen,", "nineteen"].sort
# => ["eight,", "eighteen,", "eleven,", "fifteen,", "five,", "four,", "fourteen,", "nine,", "nineteen", "one,", "seven,", "seventeen,", "six,", "sixteen,", "t\n  welve,", "ten,", "thirteen,", "three,", "two,", "zero,"]

CONVERSION = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
}

# arr = (0..19).to_a
# arr2 = arr.map { |k| CONVERSION.values_at(k) if CONVERSION.keys.include?(k) }
# => [["zero"], ["one"], ["two"], ["three"], ["four"], ["five"], ["six"], ["seven"], ["eight"], ["nine"], ["ten"], ["eleven"], ["twelve"], ["thirteen"], ["fourteen"], ["fifteen"], ["sixteen"], ["seventeen"], ["eighteen"], ["nineteen"]]
# irb(main):030:0> arr2.sort
# => [["eight"], ["eighteen"], ["eleven"], ["fifteen"], ["five"], ["four"], ["fourteen"], ["nine"], ["nineteen"], ["one"], ["seven"], ["seventeen"], ["six"], ["sixteen"], ["ten"], ["thirteen"], ["three"], ["twelve"], ["two"], ["zero"]]
# irb(main):031:0>
# this is almost what want, but don't want to have each value be its own subarray!

# answer which returns the correct answer but with every element in its own subarray...
# def alphabetic_number_sort(arr)
#   arr2 =
#     arr.map { |k| CONVERSION.values_at(k) if CONVERSION.keys.include?(k) }.sort

#   arr2.map do |k|
#     k.map { |k| CONVERSION.key(k) if CONVERSION.values.include?(k) }
#   end
# end

# p alphabetic_number_sort((0..19))
#==> [[8], [18], [11], [15], [5], [4], [14], [9], [19], [1], [7], [17], [6], [16], [10], [13], [3], [12], [2], [0]]

def alphabetic_number_sort(arr)
  arr2 =
    arr.map { |k| CONVERSION.values_at(k) if CONVERSION.keys.include?(k) }.sort

  arr3 = []
  arr2.each do |k|
    k.each { |k| arr3 << CONVERSION.key(k) if CONVERSION.values.include?(k) }
  end
  arr3
end

p alphabetic_number_sort((0..19).to_a)
#==> [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
# works!

# woah, LS answer was much simpler than mine..
# very clever, the number is equal to the array index so didnt need to use hash keys/values

NUMBER_WORDS = %w[
  zero
  one
  two
  three
  four
  five
  six
  seven
  eight
  nine
  ten
  eleven
  twelve
  thirteen
  fourteen
  fifteen
  sixteen
  seventeen
  eighteen
  nineteen
]

def alphabetic_number_sort2(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort2((0..19).to_a)
