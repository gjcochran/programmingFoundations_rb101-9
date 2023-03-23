# input: string
# output: boolean
# rules: have list of letters
# letters are pairs
# from input string, each pair can only be used once

# A - choice # 1 is how to define the list
# i think will do a hash

def block_word?(word)

  list = { 'B' => 'O', 'G' => 'T', 'V' => 'I', 'X' => 'K', 'R' => 'E', 
          'L' => 'Y', 'D' => 'Q', 'F' => 'S', 'Z' => 'M', 'C' => 'P', 
          'J' => 'W', 'N' => 'A', 'H' => 'U' }

  word.upcase.each_char do |e|
    return false if list[e].nil? && list.key(e).nil?
    
    list[e].nil? ? list.delete(list.key(e)) : list.delete(e)
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# okay, works, but a bit complicated..
# LS answer much more simple, once understand.

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word_LS?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
