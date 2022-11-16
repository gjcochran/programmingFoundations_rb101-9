require "pry"

# puts "Please pick and option: 1 or 2"
# user_input = gets.chomp
# binding.pry
# if user_input == 1
#   puts "11111"
# elsif user_input == 2
#   puts "222"
# else
#   puts "invalid"
# end

# def my_method(num)
#   a = 1
#   binding.pry
#   b = 2
# end

# c = 3

# my_method(c)

def select_nums(arr)
  new_arr = []
  arr.each do |num|
    binding.pry
    new_arr << num if num.odd? && num <= 15 || num % 3 == 0
  end
  new_arr
end

select_nums([1, 2, 3, 4])
