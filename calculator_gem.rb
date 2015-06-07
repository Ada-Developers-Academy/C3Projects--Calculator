require "colorize"

puts "Let us do some simple maths! What kind of math do you want to do?"
operation_input = gets.chomp

# Checks for acceptable operators.
available_operations = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide", "**", "exponent", "^", "%", "modulus"]

# I had to create a duplicate array with the colorized operators. Otherwise, when it wouldn't recognize valid operator inputs after I h

available_operations_colored = ["+".colorize(:blue), "add".colorize(:blue), "-".colorize(:cyan), "subtract".colorize(:cyan), "*".colorize(:yellow), "multiply".colorize(:yellow), "/".colorize(:green), "divide".colorize(:green), \
"**".colorize(:magenta), "exponent".colorize(:magenta), "^".colorize(:magenta), "%".colorize(:red), "modulus".colorize(:red)]

# Used a while loop to display the same error message until a valid operator is entered.
while available_operations.include?(operation_input) == false
  puts available_operations_colored
  puts "That ain't right. Use one of the coloured options above.".colorize(:black).colorize( :background => :white)
  operation_input = gets.chomp
end

# asks the user for the first number
puts "Dope. What is the first number?".colorize(:black).colorize(:background => :yellow)
first_number = gets.chomp.to_i

# ...and now the second #
puts "What is the second number?".colorize(:black).colorize(:background => :green)
second_number = gets.chomp.to_i

# if the user enters one of the valid operators, the calculator will use one of the
# corresponding interpolations below to output the result
if operation_input == "add" || operation_input == "+"
  result = first_number + second_number
elsif operation_input == "subtract" || operation_input == "-"
  result = first_number - second_number
elsif operation_input == "multiply" || operation_input == "*"
  result = first_number * second_number
elsif operation_input == "divide" || operation_input == "/"
  result = first_number / second_number
elsif operation_input == "modulus" || operation_input == "%"
  result = first_number % second_number
elsif operation_input == "exponent" || operation_input == "**"|| operation_input == "^"
  result = first_number ** second_number
end
  puts "#{first_number} #{operation_input} #{second_number} = #{result}".colorize(:blue).colorize(:background => :cyan)
