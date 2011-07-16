#!/usr/bin/ruby

require "FileUtils"

# Configuration
USER_HOME = "/Users/brooke"

# Execution
puts "\nMac setup starting...\n\n"
if File.exists?(USER_HOME)
  Dir[File.join("home_files", "*.txt")].each do |file|
    new_file = '.' + File.basename(file).chomp(".txt")
    new_path = File.join(USER_HOME, new_file)
    FileUtils.cp(file, new_path)
    puts "Created file: #{new_path}"
  end
else
  puts "ERROR: #{USER_HOME} does not appear to exist."
end
puts "\nMac setup complete.\n"
