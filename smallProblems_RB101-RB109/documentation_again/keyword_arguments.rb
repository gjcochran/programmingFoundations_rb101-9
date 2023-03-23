5.step(to: 10, by: 3) { |value| puts value }
#==>
# 5
# 8

# Numeric#step docs info below...
# Invokes the given block with the sequence of numbers starting at num, incremented by step (defaulted to 1) on each call.

# The loop finishes when the value to be passed to the block is greater than limit (if step is positive) or less than limit (if step is negative), where limit is defaulted to infinity.

# In the recommended keyword argument style, either or both of step and limit (default infinity) can be omitted. In the fixed position argument style, zero as a step (i.e. num.step(limit, 0)) is not allowed for historical compatibility reasons.

# If all the arguments are integers, the loop operates using an integer counter.

# If any of the arguments are floating point numbers, all are converted to floats, and the loop is executed the following expression:

# floor(n + n*epsilon)+ 1

# Where the n is the following:

# n = (limit - num)/step

# Otherwise, the loop starts at num, uses either the less-than (<) or greater-than (>) operator to compare the counter against limit, and increments itself using the + operator.

# If no block is given, an Enumerator is returned instead.

# For example:

# p 1.step.take(4)
# p 10.step(by: -1).take(4)
# 3.step(to: 5) { |i| print i, " " }
# 1.step(10, 2) { |i| print i, " " }
# Math::E.step(to: Math::PI, by: 0.2) { |f| print f, " " }

# Will produce:

# [1, 2, 3, 4]
# [10, 9, 8, 7]
# 3 4 5
# 1 3 5 7 9
# 2.71828182845905 2.91828182845905 3.11828182845905
