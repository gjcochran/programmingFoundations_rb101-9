# ignore non-alpha chars
# ie cant use index.even? solution from first method anymore
# += 1 if is /alpha/

def staggered_case(str)
  idx = 0
  str.chars.map do |el|
    idx += 1 if el.match?(/[[:alpha:]]/)
    idx.odd? ? el.upcase : el.downcase
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS')
p staggered_case('ignore 77 the 444 numbers')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# good.
# LS answer actually fairly similar, though no ternarys and switch boolean rather than increment num

def staggered_case_LS(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end
