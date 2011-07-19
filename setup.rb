#!/usr/bin/ruby

# Configuration
HOME_PATH = ENV["HOME"]

# Execution
puts "\nConfiguring dotfiles...\n\n"
if File.exists? HOME_PATH
  Dir[File.join("test_files", "*.txt")].each do |original_file|
    new_file = File.join HOME_PATH, '.' + File.basename(original_file).chomp(".txt")
    File.open(new_file, 'w') {|file| file.write File.read(original_file)}
    puts "Created: #{new_file}"
  end
else
  puts "ERROR: #{HOME_PATH} does not appear to exist."
end
puts "\nDotfile configuration complete.\n\n"
