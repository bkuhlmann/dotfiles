#!/usr/bin/ruby -w
# encoding: UTF-8

# Configuration
HOME_PATH = ENV["HOME"]

# Execution
puts "\nInstalling dotfiles...\n\n"
if File.exists? HOME_PATH
  Dir[File.join("home_files", "*.txt")].each do |original_file|
    new_file = File.join HOME_PATH, '.' + File.basename(original_file).chomp(".txt")
    if File.exists? new_file
      puts "Skipped (exists): #{new_file}"
    else
      File.open(new_file, 'w') {|file| file.write File.read(original_file)}
      puts "Created: #{new_file}"
    end
  end
else
  puts "ERROR: #{HOME_PATH} does not appear to exist."
end
puts "\nDotfile install complete.\n\n"
