# Calculator Project

# Collect user input for first number
puts "Welcome to calculator! Please enter the first number you'd like to use:"
num_one = gets.chomp
# Checks to see if user input is a number. Alerts user of incorrect input
if num_one.to_i.to_s == num_one
  num_one = num_one.to_f
else
  puts "\nYou did not enter a number. Try again."
  exit
end

# Checks to see if user input is a number. Collect user input for second number
puts "\nPlease enter the second number you'd like to use:"
num_two = gets.chomp
# Alerts user of incorrect input
if num_two.to_i.to_s == num_two
  num_two = num_two.to_f
else
  puts "\nYou did not enter a number. Try again."
  exit
end

# Collect user input for operation
puts "\nPlease enter an operation:"
operation = gets.chomp

# Handles addition operator
if operation == "addition" || operation == "+"
  answer = num_one + num_two
  puts "\nHere are the calculations: #{num_one} + #{num_two} = #{answer}"

# Handles subtraction operator
elsif operation == "subtraction" || operation == "-"
  answer = num_one - num_two
  puts "\nHere are the calculations: #{num_one} - #{num_two} = #{answer}"

# Handles mulitplication operator
elsif operation == "multiplication" || operation == "*"
  answer = num_one * num_two
  puts "\nHere are the calculations: #{num_one} * #{num_two} = #{answer}"

# Handles division operator
elsif operation == "division" || operation == "/"
  answer = num_one / num_two
  puts "\nHere are the calculations: #{num_one} / #{num_two} = #{answer}"

# Handles exponent operator
elsif operation == "exponent" || operation == "^"
  answer = num_one ** num_two
  puts "\nHere are the calculations: #{num_one}^#{num_two} = #{answer}"

# Handles modulo operator
elsif operation == "modulo" || operation == "%"
  answer = num_one % num_two
  puts "\nHere are the calculations: #{num_one} % #{num_two} = #{answer}"

# Alerts user of incorrect input
else
    puts "\nThe operation your entered was invalid. Please try again."
    exit

end
