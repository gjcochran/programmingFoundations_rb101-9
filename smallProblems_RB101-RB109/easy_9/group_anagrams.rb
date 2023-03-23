# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#   'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#   'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

# D/A
# feel like should use match? or scan method
# not sure how to use regex to compare ... 
# could use word.chars.sort == word2.chars.sort
#^ with select method ???

# def anagrams(words)
#   arr = words.map { |el| [el] }
#   arr.each do |sub|
#     sub.select.with_index { |word, index| word[index].chars.sort == }
#   end
# end

def anagrams(words)
  counter_a = 0
  result = []
  loop do
    counter_b = 1
    sub_result = []
    loop do
      if words[counter_a].chars.sort == words[counter_b].chars.sort
        sub_result << words[counter_a] 
        sub_result << words[counter_b] 
      end
      counter_b += 1
      break if counter_b == words.size 
    end
    counter_a += 1
    counter_b += 1
    result << sub_result.sort.uniq
    break if counter_a == words.size
  end
  result.uniq
end

array =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

p anagrams(array)
#==> 
# [
#   ["demo", "dome", "mode"], 
#   ["neon", "none"], 
#   ["diet", "edit", "tide", "tied"], 
#   ["evil", "live", "veil", "vile"], 
#   ["dome", "mode"], 
#   ["flow", "fowl", "wolf"]
# ]

# answer is clunky but works, nearly perfectly. only issue is that [dome, mode] line got tracked 2x...
# not sure how to correct

# LS answer is below and is clever. used hashes so that didn't have to use #uniq because can only have one key of each word. 

def anagrams_v2(words)
  result = {}

  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end

  result.each_value do |v|
    puts "------"
    p v
  end
end

array =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

p anagrams_v2(array)

#=>
# ------
# ["demo", "dome", "mode"]
# ------
# ["none", "neon"]
# ------
# ["tied", "diet", "edit", "tide"]
# ------
# ["evil", "live", "veil", "vile"]
# ------
# ["fowl", "wolf", "flow"]
# {"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf", "flow"]}