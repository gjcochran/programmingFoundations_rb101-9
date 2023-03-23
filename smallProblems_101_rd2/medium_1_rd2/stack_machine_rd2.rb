# case statement is ideal for this silly problem

# register == current value
# register seperate from the stack

# ex.
# register = 7
# stack = [3, 6, 4]
# ^ view rightmost value as the 'top of stack'
# MULT operation requested...
# therefore register = stack.pop * register
# now..
# register = 28
# stack = [3, 6]

# goal of this method is to have case statement with list of operations that user can perform
# ex MULT from above for ref

# therefore:
# input: string -> valid operations/commands, to be executed in order
# output: integer, current register value when PRINT command issued 
# rules: inital register = 0

def minilang(str)
  commands = str.split
  
  register = 0
  stack = []

  commands.each do |el|
    case el
    when 'PUSH'
      stack.push(register)
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'MULT'
      register *= stack.pop
    when 'DIV'
      register /= stack.pop
    when 'MOD'
      register = register.divmod(stack.pop).last
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    else
    register = el.to_i
    end  
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# REVIEW: GREAT. same as LS with two exceptions
# 1 - they just did str.split.each rather than setting a local variable
# 2 - % is an easier method than divmod as auto returns the remainder.
