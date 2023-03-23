# input: string
# output: hash { lowercase: x, uppercase: y, neither: z }
# x = number of lowercase letters in string
# etc...

def letter_case_count(str)
  arr = str.chars
  result = Hash[:lowercase, 0, :uppercase, 0, :neither, 0]

  arr.each do |el|
    if el.match?(/[[:alpha:]]/)
      (el == el.upcase) ? (result[:uppercase] += 1) : (result[:lowercase] += 1)
    else
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123')
p letter_case_count('123')
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# my solution works, but actually prefer LS solution, typed out below:

def letter_case_LS(str)
  counts = {}
  chars = str.chars
  
  counts[:lowercase] = chars.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = chars.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = chars.count { |char| char =~ /[^A-Za-z]/ }  

  counts 
end
