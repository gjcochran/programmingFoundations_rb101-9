ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Pick out the minimum age from our current Munster family hash

# two options, one with the name as well

p ages.values.min
p ages.min_by(&:last)
