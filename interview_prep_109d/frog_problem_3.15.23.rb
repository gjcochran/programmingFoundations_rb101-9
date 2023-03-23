=begin
https://www.codewars.com/kata/536950ffc8a5ca9982001371/train/ruby
Help the frog to find a way to freedom

You have an array of integers and have a frog at the first position

[Frog, int, int, int, ..., int]

The integer itself may tell you the length and the direction of the jump

For instance:
 2 = jump two indices to the right
-3 = jump three indices to the left
 0 = stay at the same position
Your objective is to find how many jumps are needed to jump out of the array.

Return -1 if Frog can't jump out of the array

Example:
array = [1, 2, 1, 5]; 
jumps = 3  (1 -> 2 -> 5 -> <jump out>)
All tests for this Kata are randomly generated.

=end

# input - array (of integers)
# return - integer
# rules:
  # frog always starts at index 0
  # value of elemenet at current frog index indicates next frog move
    # positive integers - move right 
    # negative integers - move left 
    # 0 integer - stay in same position 
    # if move to index > last index in array then iteration ends
      # return number of moves the frog made to jump out
    # if frog cant exit, return -1
# questions - what about reversing back into array with negative jumps?

# algorithm
  # initialize variable that represents current index of frog
  # initialize jump variable
  # reassign this current index variable by adding/subtracting the value
  #    of element at next index
      # add 1 to jump variabe
  # break out of iteration loop if..
    # if index > largest potential array index -- return jump current value
    # else if index is ever zero (again) then return -1 as is infinite loop

def solution(array)
  current_index = 0
  num_jumps = 0
  loop do
    current_index += array[current_index]
    if current_index == 0
      return -1
      break
    end 
    num_jumps += 1
    break if current_index > array.size - 1
  end
  num_jumps
end

p solution([1, 2, 2, -1]) == 4
p solution([1, 2, 1, 5]) == 3
p solution([1, -1]) == -1

# took 19.5 mins
