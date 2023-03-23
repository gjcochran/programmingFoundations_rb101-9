require "yaml"
MESSAGES = YAML.load_file("calculator_messages.yml")

# Find the documentation for YAML::load_file

# https://ruby-doc.org/stdlib-3.1.2/libdoc/yaml/rdoc/YAML.html
# "For more advanced details on the implementation see Psych"
# https://ruby-doc.org/stdlib-3.1.0/libdoc/psych/rdoc/Psych.html#method-c-load_file
# Loads the document contained in filename. Returns the yaml contained in filename as a Ruby object, or if the file is empty, it returns the specified fallback return value, which defaults to false. See load for options.
