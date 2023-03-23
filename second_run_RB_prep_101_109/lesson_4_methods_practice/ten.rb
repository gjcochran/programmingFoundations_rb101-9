
# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family member
# is in (kid, adult, or senior)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def which_group(num)
  case
  when num < 18 then "kid"
  when num < 65 then "adult" 
  else
    "senior"
  end
end

munsters.each do |k, v|
  munsters[k]["age_group"] = which_group(munsters[k]["age"])
end

p munsters

# mine works well, LS combined into one method
# also rather than num < 18 i couldve written case num and then when 0...18
# range rather than conditional is a little more clear
