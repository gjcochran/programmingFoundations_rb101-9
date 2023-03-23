# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on # toggle every 1
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on # starting at 2, toggle every 2
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on # starting at light 3, toggle every 3
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on # starting at light 4, toggle every 4
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# understand the problem

# x = on; 0 = off

# input = 5
# start: 1 2 3 4 5
# 1:     x x x x x
# 2:     x 0 x 0 x
# 3:     x 0 0 0 x
# 4:     x 0 0 x x
# 5:     x 0 0 x 0
# result: [1, 4]

# input = 10
# start: 1 2 3 4 5 6 7 8 9 10
# 1:     x x x x x x x x x x
# 2:     x 0 x 0 x 0 x 0 x 0
# 3:     x 0 0 0 x x x 0 0 0
# 4:     x 0 0 x x x x x 0 0
# 5:     x 0 0 x 0 x x x 0 x
# 6:     x 0 0 x 0 0 x x 0 x
# 7:     x 0 0 x 0 0 0 x 0 x
# 8:     x 0 0 x 0 0 0 0 0 x
# 9:     x 0 0 x 0 0 0 0 x x
# 10:    x 0 0 x 0 0 0 0 x 0
# result: [1, 4, 9]

# D/A
# step 1: create a hash with input number of keys and have all values be initially assinged to off
# irb(main):001:0> input = 5

# irb(main):002:0> hash = {}

# irb(main):003:1* input.times do |n|
# irb(main):004:1*   hash[n] = 'off'
# irb(main):005:0> end

# irb(main):006:0> hash
# => {0=>"off", 1=>"off", 2=>"off", 3=>"off", 4=>"off"}

# step 2: iterate through this hash with each_with_object method
# ex
# irb(main):013:1* hash.each_with_object({}) do |element, hash|
#   irb(main):014:1*   k, v = *element;
#   irb(main):015:1*   k >=1 && k % 2 == 1 ? hash[k] = 'on' : hash[k] = v
#   irb(main):016:0> end
#   => {0=>"off", 1=>"on", 2=>"off", 3=>"on", 4=>"off"}

# step 3: the return of each_with_object should be a value that is iterated (ie each_with_object is inside a loop)

def lights(switches)
  hash = {}
  (switches + 1).times { |n| hash[n] = 'off' }
  hash.shift
 
  counter = 1
  loop do 
    hash.each_with_object({}) do |el, _|
      k, v = *el;
      if k >= counter && k % counter == 0 
        if hash[k] == 'on'
          hash[k] = 'off'
        else
          hash[k] = 'on'
        end
      else
        hash[k] = v
      end
    end
    counter += 1
    break if counter > switches
  end
  result = hash.delete_if { |k, v| v == "off" }
  result.keys
end

p lights(5)
p lights(10)
p lights(1000)

# worked! LS solution was different so pasting below for analysis/reference

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)
