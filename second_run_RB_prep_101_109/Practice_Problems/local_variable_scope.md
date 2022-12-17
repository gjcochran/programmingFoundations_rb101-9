# 1

<!-- What does the following code return? What does it output? Why? What concept does it demonstrate? -->

## PROBLEM

```ruby
a = “Hello”
b = a
a = “Goodbye”
puts a
puts b
```

## ANSWER

On `line 8` the local variable `a` is initialized and assigned to a `String` object with the value `Hello`.
On `line 9` the local variable `b` is initialized and assigned to the `String` object with value `Hello` that local variable `a` is referencing.
On `line 10` the local variable `a` is reassigned to a different `String` object with the value `Goodbye`. 
On `line 11` the `puts` method is invoked with a reference to the object local variable `a` is referencing passed in as an argument. This `puts` method will output `Goodbye` and return `nil`.
On `line 12` the `puts` method is invoked with a reference to the object local variable `b` is referencing passed in as an argument. This `puts` method will output `Hello` and return `nil`.
The problem demonstrates the concept that variables are references to objects in memory. After local variable `a` is reassigned, variables `a` and `b` are pointing to different objects and therefore will output different values. The `puts` method always returns `nil`.


# 2

<!-- What does the following code return? What does it output? Why? What concept does it demonstrate? -->

## PROBLEM
```ruby
a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b
```

## ANSWER

On `line 31` the local variable `a` is initialized and assigned to an `Integer` object with a value of `4`.
On `line 33` the `loop` method is invoked with a `do..end` block passed in as an argument.
Within the inner scope of the `do..end` block:
  On `line 34` the local variable `a` is reassigned to a different `Integer` object with a value of `5`.
  On `line 35` the local variable `b` is initialized and assinged to an `Integer` object with a value of `3`.
  On `line 36` the break statement is executed and the loop is exited.
On `line 39` the `puts` method is invoked with a reference to the object local variable `a` is referencing passed in as an argument. This method will output `5` and return `nil`.
On `line 40` the `puts` method is invoked and a NameError is generated when the refernce to the object local variable `b` is referencing is passed in as an argument because the `puts` method cannot reference local variable `b` as it was initialized within the `do..end` block.
This problem demonstrates variable reassignment and variable scoping rules.

# 3

<!-- What does the following code return? What does it output? Why? What concept does it demonstrate? -->

## PROBLEM
```ruby
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```
## ANSWER

On `line 61` local variable `a` is initialized and assigned to an `Integer` object with value `4`.
On `line 62` local variable `b` is initialized and assigned to an `Integer` object with value `2`.

On `line 64` the `loop` method is invoked with a `do..end` block passed in as an argument.
Within the `do..end` block on `lines 65-67`:
  On `line 65` local variable `c` is initialized and assigned to an `Integer` object with value `3`.
  On `line 66` local variable `a` is reassigned to the object that `c` is referencing.
  On `line 67` a `break` statement is executed and the `loop` is exited.

<!-- On `line 70` the `puts` method is invoked and local variable `a` is passed in as an argument, which returns a NameError because the object that local variable `a` is assigned to was intialized within the `do..end` block inner scope and now cannot be referenced.  -->
<!-- NOTE THAT ABOVE IS WRONG. PUTS A WILL OUTPUT 3! IF PUTS C THEN WILL RETURN A NAMEERROR. REDO BELOW-->
On `line 70` the `puts` method is invoked with a reference to the object local variable `a` is referencing passed in as an argument. This method will output `3` and return `nil`.
On `line 71` the `puts` method is invoked with a reference to the object local variable `b` is referencing passed in as an argument. This method will output `2` and return `nil`.



# 4

<!-- What does the following code return? What does it output? Why? What concept does it demonstrate? -->

```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```



### 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)
```



### 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```

### 7

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```

### 8

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var
```