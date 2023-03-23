# PROMPT:
# input: string of lowercased words including some non-alph chars
# output: replace all non_alph chars with spaces

# D/A
# regex
# gsub(/\W+/) ie one or more alpha num chars

def cleanup(str)
  str.gsub(/\W+/, ' ')
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '

# works, less solution similar
# def cleanup_LS(text)
#  text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

