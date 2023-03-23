# input: string
# output: swapcased input string (w/o using swapcase method). all other chars unchanged

# A
# str.chars
# if /alpha/ & lower, then upper
# etc
# join

def swapcase(str)
  str.chars.map do |el|
    if el.match?(/[[:alpha:]]/) && el == el.downcase
      el.upcase
    elsif el.match?(/[[:alpha:]]/) && el == el.upcase
      el.downcase
    else
      el
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')

# review: good. 
# LS solution very similar, although for if/else
# they wrote: `if el =~ /[a-z]/`
# which i prefer as is easier to read
