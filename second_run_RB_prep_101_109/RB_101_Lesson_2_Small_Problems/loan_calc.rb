# inputs: 
# loan amoutn
# APR
# loan duration
# calulate:
# montly interest rate
# loan duration in months
# monthly payment
# formula:
# m = p * (j / (1 - (1 + j)**(-n)))
# where...
# m = montly payment 
# p = loan amount
# j = montly interest rate
# n = loan duration (months)

def car_loan_calc(loan_amount, apr, duration)
  monthly_interest_rate = apr.to_f / 12 / 100
  loan_duration = duration * 12
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))
  puts "your monthly payment is #{monthly_payment}, your total duration is #{loan_duration} months, 
      and your monthly interest rate is #{monthly_interest_rate * 100}%"
end

p car_loan_calc(20000, 6, 5)
