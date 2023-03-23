# input: Array of numbers
# output: Array with running total (same # of els)

def running_total(arr)
  result = [0]
  arr.each_with_index { |el, i| result << (el + result[i]) }
  result.shift
  result
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
p running_total([2, 5, 13]) 
p running_total([14, 11, 7, 15, 20])
p running_total([3])

# review: mine works but was a bit too complicated, prefer LS answer (below)

def running_total_LS(arr)
  sum = 0
  arr.map { |v| sum += v }
end
