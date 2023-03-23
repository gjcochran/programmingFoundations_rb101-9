# input: 3 integers (test scores)
# output: string (letter grade) -> mean of input (ie. input.to_a.sum / input.size)
# rules of score predefined in problem
# A - case statement
# rules: all inputs between 0-100

def letter_grades(score)
  case 
  when 90 <= score && score <= 100 then 'A'
  when 80 <= score && score < 90 then 'B'
  when 70 <= score && score < 80 then 'C'
  when 60 <= score && score < 70 then 'D'
  when 0 <= score && score < 60 then 'F'
  end
end

def get_grade(num1, num2, num3)
  score = (num1 + num2 + num3) / 3
  letter_grades(score)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# review: works but made case statement a bit more complicated than needed to
# per LS answer, could have just used a range!

def get_grade_LS(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end
