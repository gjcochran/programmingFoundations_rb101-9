# input: string
# ouput: boolean
#   returns true if parens in input are balanced
#   ex (()) not (()

# A 
# variable that +=1 with ( and -=1 with )

def balanced?(str)
  counter = 0
  
  str.each_char do |el| 
    return false if counter < 0
    if el == '('
      counter += 1
    elsif el == ')'
      counter -= 1
    else
      next
    end
  end
  
  counter.zero? ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# great! same as LS, with a couple minor minor differences
# they're each_char looked like...
# counter += 1 if el == '('
# counter -= 1 if el == ')'
# break if counter < 0

# in addition they did not use ternary in last line
# instead only wrote `counter.zero?` as the zero? method returns a boolean

# review: i had some extraneous code, but program still operated the exact same way as LS method
