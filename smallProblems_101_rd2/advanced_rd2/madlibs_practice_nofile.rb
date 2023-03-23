# practicing without File methods to test method

text = "The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around."

def madlibs(file)
  adjs = %w(quick lazy sleepy ugly)
  nouns = %w(fox dog head leg)
  verbs = %w(jumps lifts bites licks)
  advs = %w(easily lazily noisily excitedly)
  
  arr = file.split
  arr.each do |word|
    word.gsub!(word, adjs.sample) if word.split(/\W/).join == 'adjective'
    word.gsub!(word, nouns.sample) if word.split(/\W/).join == 'noun'
    word.gsub!(word, verbs.sample) if word.split(/\W/).join == 'verb'
    word.gsub!(word, advs.sample) if word.split(/\W/).join == 'adverb'
  end
  arr.join(' ')  
end

p madlibs(text)

