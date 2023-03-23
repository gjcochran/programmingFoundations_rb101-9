# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

#   Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# E
# block_word?('BATCH') == true
# block_word?('BUTCH') == false #false because already used U therefore cant use H
# block_word?('jest') == true

# D/A
# could use a hash of arrays ex {1=>[B,0]}
# evaluate each letter in a word, split word using chars method
# if the letter is equal to any values in the hash, then remove that key/value pair from the hash before moving to the next letter

    # available_letters = {
    #   a: ['b', 'o'],
    #   b: ['x', 'k'],
    #   c: ['d', 'q'],
    #   d: ['c', 'p'],
    #   e: ['n', 'a'],
    #   f: ['g', 't']
    # }

    # irb(main):017:0> available_letters
    # => {:a=>["b", "o"], :b=>["x", "k"], :c=>["d", "q"], :d=>["c", "p"], :e=>["n", "a"], :f=>["g", "t"]}
    # irb(main):018:0> available_letters.values.join.include?'x'
    # => true
    # irb(main):019:0> available_letters.delete_if { |k,v| v.include?'x' }
    # => {:a=>["b", "o"], :c=>["d", "q"], :d=>["c", "p"], :e=>["n", "a"], :f=>["g", "t"]}
    # # delete_if is a destructive method


def block_word?(word)
  available_letters = {
    a: ['b', 'o'],
    b: ['x', 'k'],
    c: ['d', 'q'],
    d: ['c', 'p'],
    e: ['n', 'a'],
    f: ['g', 't'],
    g: ['r', 'e'],
    h: ['f', 's'],
    i: ['j', 'w'],
    k: ['h', 'u'],
    l: ['v', 'i'],
    m: ['l', 'y'],
    n: ['z', 'm']
  }
  test_arr = word.downcase.chars
  letters = ''
  test_arr.map do |letter|
    break unless available_letters.values.join.include?(letter)

    letters << letter
    available_letters.delete_if { |k,v| v.include?(letter) }
  end
  letters == word.downcase
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')

# works!
# LS answer below, much prefer their answer as is quite a bit simpler

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

    # irb(main):027:0> BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
    # => ["BO", "XK", "DQ", "CP", "NA", "GT", "RE", "FS", "JW", "HU", "VI", "LY", "ZM"]

    # https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-none-3F

    # irb(main):028:0> string = 'batch'
#     irb(main):029:0> string.count('bo')
#     => 1