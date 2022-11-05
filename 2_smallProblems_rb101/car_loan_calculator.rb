# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# solution attempt below

# request desired loan amount 
# request quoted APR
# request desired loan duration (years)

# convert APR to monthly interest rate
  # convert number to percent 
# convert loan duration from years to months 

# solve for monthly payment 

# def monthly_payment(loan_amount, monthly_interest, loan_duration_months)
  

puts "What is your desired car loan amount?"
loan_amount = gets.chomp.to_f

puts "What is the APR you have been quoted?"
annual_interest = gets.chomp.to_f

puts "How many years would you like a loan for?"
loan_duration_years = gets.chomp.to_f 

monthly_interest = (annual_interest/100)/12
loan_duration_months = loan_duration_years*12

monthly_payment = (loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration_months)))).round(2)


puts "Your monthly payment will be $#{monthly_payment} for #{loan_duration_months} months (#{loan_duration_years} years)"

# this does not account for any edge cases... but it works!! 
