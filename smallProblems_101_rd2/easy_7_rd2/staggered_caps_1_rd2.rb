# input: string
# output: string with every other char capitalized
# rules: non-alphas dont change but still count in updownupdown.. sequence

def staggered_case(str)
  str.chars.map.with_index do |el, idx|
    if idx.even? && el.match?(/[[:alpha:]]/)
      el.upcase
    elsif idx.odd? && el.match?(/[[:alpha:]]/)
      el.downcase
    else
      el 
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# good
# note that didnt need to actually figure out if was /alpha/ 
# LS below:

def staggered_case_LS(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
