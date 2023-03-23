# input: integer n -> number of switches (each switch connceted to one light which is initially off)
# output: array of integers -> which lights are on after iteration
# n is both # of switches and # of iterations


def lights(n)
  arr = (1..n).to_a
  switches = arr.each_with_object ({}) { |el, h| h[el] = 0}
  
  1.upto(n) do |i|
    switches.each do |k, _| 
      if k % i == 0 && switches[k] == 0
        switches[k] += 1
      elsif k % i == 0 && switches[k] == 1
        switches[k] -= 1
      end
    end
  end
  switches.select { |_, v| v == 1 }.map { |k, v| k }
end

p lights(5)
p lights(10)

# review: works!
# LS is not all that dissimilar to my answer, the main difference is
# .. they divided their solution up into multiple submethods
# perhaps reads clearer, dealer choice
# pasting for reference

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
