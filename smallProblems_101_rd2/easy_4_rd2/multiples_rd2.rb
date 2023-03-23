# PROMPT:
# all multiples of 3 and 5, summed
# dont count them twice

# D/A
# shovel to an array
# array.uniq
# array.reduce(:+)

def multisum(int)
  arr = []
  (1..int).each { |n| arr << n if n % 3 == 0 }
  (1..int).each { |n| arr << n if n % 5 == 0 }
   
  arr.uniq.reduce(:+)
end

p multisum(3) 
p multisum(5) 
p multisum(10) 
p multisum(1000) == 234168

# review: my solution works, LS is quite different so am typing out below for practice...

def multiple?(num, div)
  num % div == 0
end

def multisum_LS(max_value)
  sum = 0
  1.upto(max_value) do |n|
    if multiple?(n, 3) || multiple?(n, 5)
      sum += n
    end
  end
  sum
end


