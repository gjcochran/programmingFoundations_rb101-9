# input: text data from an external file
# output: rewrite text file and plug in random adjectives, nouns, verbs, and adverbs where marked

# ex. text_file:
#The %{adjective} brown %{noun} %{adverb}
#%{verb} the %{adjective} yellow
#%{noun}, who %{adverb} %{verb} his
#%{noun} and looks around.

# ex. replacement words (stored in a manner of my choosing):
# adjectives: quick lazy sleepy ugly
# nouns: fox dog head leg
# verbs: jumps lifts bites licks
# adverbs: easily lazily noisily excitedly

#=> example output:
# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

# brainstorm
# File object method... not sure
# i think... variable = File.read(path)
# to write to...
# variable = open(path, 'w')
# variable.write(content)
# variable.close

#path = '~/programming2022/launchSchool/ruby-ls/smallProblems_101_rd2/advanced_rd2/madlibs_file.txt'
# NOTE ABOUT PATH...
# irb(main):001:0> File.expand_path('madlibs_file.txt')
# => "/Users/gcochran/programming2022/launchSchool/ruby-ls/smallProblems_101_rd2/advanced_rd2/madlibs_file.txt"
# CAN USE EXPAND_PATH TO FIGURE OUT A FILE PATH, BRILLIANT!


#path = "/Users/gcochran/programming2022/launchSchool/ruby-ls/smallProblems_101_rd2/advanced_rd2/madlibs_file.txt"
#txt = File.open(path, 'w')

# D/A 
# first can find the path a file (input is file name as string) using expand_path method
# [HARDEST PART... how to write to a file without replacing each line]..
#   ?? 
# set potential random types as arrays so that can use sample method
# ex adjectives = %w(...)
# if 'type' then substitute using gsub!('type', type.sample)
# close file 
# read file and print without newline characters when run the program



def madlibs(file_name)
  adjs = %w(quick lazy sleepy ugly)
  nouns = %w(fox dog head leg)
  verbs = %w(jumps lifts bites licks)
  advs = %w(easily lazily noisily excitedly)

  path = File.expand_path(file_name)
  text = File.open(path, 'r+')
  file_data = text.readlines.map(&:chomp).map(&:split)
  
  file_data.each do |line|
    line.each do |word|
      word.gsub!(word, adjs.sample) if word.split(/\W/).join == 'adjective'
      word.gsub!(word, nouns.sample) if word.split(/\W/).join == 'noun'
      word.gsub!(word, verbs.sample) if word.split(/\W/).join == 'verb'
      word.gsub!(word, advs.sample) if word.split(/\W/).join == 'adverb'
    end
  end
  p file_data
  change_to = file_data.map { |sub| sub.join(' ') }.join(' ')
  
  File.write(path, change_to)

  text.close
end

madlibs('madlibs_file.txt')

# works. learned a lot about File class.
# LS answer below for reference...

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
