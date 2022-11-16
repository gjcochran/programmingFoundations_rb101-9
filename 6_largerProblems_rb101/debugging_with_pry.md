bugs are human errors in code
debugging is the process of identifying and fixing those errors

## how to debug:
1. identify the problem
2. understand the problem
3. implement a solution

## types of errors (broad):
- syntax errors
  - error in the actual writing of the code .. the code does not conform to the grammar of the programming language
  - generally stops your code from functioning
- logical errors
  - errors in the logic of your code 
  - the code generally runs, but produces unexpected rules

# pry
to use pry.. type require 'pry' at the top of the program
then can type binding.pry within code to test
- then run the program in terminal
- pry will stop the program mid-execution
- can access variables by typing them
- can run methods on them 

## example using pry (pasted terminal)
 ~/programming2022/launchSchool/ruby-ls/programmingFoundations_rb101/6_largerProblems_rb101   main ±  ruby pry_examples.rb
Please pick and option: 1 or 2
1

From: /Users/gcochran/programming2022/launchSchool/ruby-ls/programmingFoundations_rb101/6_largerProblems_rb101/pry_examples.rb:5 :

     1: require "pry"
     2:
     3: puts "Please pick and option: 1 or 2"
     4: user_input = gets.chomp
 =>  5: binding.pry
     6: if user_input == 1
     7:   puts "11111"
     8: elsif user_input == 2
     9:   puts "222"
    10: else

[1] pry(main)> user_input
=> "1"
[2] pry(main)> user_input == 1
=> false

## what is pry
- pry is a Rubygem
- pry is a REPL: 
  - Read-Evaluate-Print-Loop
    - an environment that:
      - takes user input
      - evaluates the input
      - returns the results to the user
      - loops back to the start

- can also use pry the exact same as irb in a terminal.. just type pry and will open up a REPL to test code
  - ex. 
 ~/programming2022/launchSchool/ruby-ls/programmingFoundations_rb101/6_largerProblems_rb101   main ±  irb
irb(main):001:0> 2 + 2
=> 4
irb(main):002:0>
 ~/programming2022/launchSchool/ruby-ls/programmingFoundations_rb101/6_largerProblems_rb101   main ±  pry
[1] pry(main)> 2 + 2
=> 4
[2] pry(main)>

- can use pry to find out what methods can call on an object and test those methods 
  - Pry Doc extends two core Pry commands: show-doc and show-source (aliased as ? and $ respectively)

note: type 'help' in pry to see list of commands

## invoking pry at runtime, explained
- using binding.pry
  - a binding is something that contains references to any variables that were in scope at the point it was created
    - ie the state of the program at that point in the execution
  - pry interrupts the program execution and pries open the binding so that we have a look around

<!-- note that i added pry-doc and pry-byebug to a .pryrc file so that they will always be active for my pry sessions -->

- pry is very useful for iterating thru loops. can type 'exit' to go to the next iteration (if using byebug, can type 'continue')

... byebug extends pry with additional commands such as next, step, and continue

'exit!' will get out of the pry loop




