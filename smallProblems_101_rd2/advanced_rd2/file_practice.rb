# "There isn't really a way to edit files in-place. 
# What you usually do when you can get away with it 
# (i.e. if the files are not too big) is, you read the file into memory 
# (File.read), perform your substitutions on the read string 
# (String#gsub) and then write the changed string back to the 
#file (File.open, File#write).

# If the files are big enough for that to be unfeasible, 
# what you need to do, is read the file in chunks 
# (if the pattern you want to replace won't span multiple lines 
# then one chunk usually means one line - you can use File.foreach to 
# read a file line by line), and for each chunk perform the 
# substitution on it and append it to a temporary file. 
# When you're done iterating over the source file, you close it 
# and use FileUtils.mv to overwrite it with the temporary file."


file_name = 'madlibs_file.txt'

path = File.expand_path(file_name)
p path

file = File.open(path)
file_data = file.readlines.map(&:chomp)
p file_data

working_arr = file_data.map(&:split).flatten
p working_arr
