# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# E
cleanup("---what's my +*& line?") == " what s my line "

# gsub?
# irb(main):002:0> "---what's my +*& line?".gsub(/\W/, ' ')
# => "   what s my     line "
# "   what s my     line ".gsub(/[[:space:]]+/, ' ')
# => " what s my line "

def cleanup(str)
  str.gsub(/\W/, " ").gsub(/[[:space:]]+/, " ")
end

# irb(main):012:0> "---what's my +*& line?".gsub(/\W/, ' ').gsub(/[[:space:]]+/, ' ')
# => " what s my line "

# LS solution was similar, pasted below
def cleanup(text)
  text.gsub(/[^a-z]/, " ").squeeze(" ")
end
