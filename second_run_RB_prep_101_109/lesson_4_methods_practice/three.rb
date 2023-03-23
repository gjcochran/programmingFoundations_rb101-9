ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

# as it says remove not going to use select or reject as that is non-destructive

p ages.delete_if { |_, v| v >= 100 }

# per LS could have used keep_if or select! instead
