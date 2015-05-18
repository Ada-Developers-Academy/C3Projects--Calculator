require "colorize"

puts "Let us do some simple maths! What kind of math do you want to do?"
operation = gets.chomp

# Checks for acceptable operators.
correct_op_answers = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide", "**", "exponent", "^", "%", "modulus"]

correct_op_answers_colored = ["+".colorize(:blue), "add".colorize(:blue), "-".colorize(:cyan), "subtract".colorize(:cyan), "*".colorize(:yellow), "multiply".colorize(:yellow), "/".colorize(:green), "divide".colorize(:green), \
"**".colorize(:magenta), "exponent".colorize(:magenta), "^".colorize(:magenta), "%".colorize(:red), "modulus".colorize(:red)]

# Used a while loop to display the same error message until a valid operator is entered.
while correct_op_answers.include?(operation) == false
  puts correct_op_answers_colored
  puts "That ain\'t right. Use one of the coloured options above.".colorize(:black).colorize( :background => :white)
  operation = gets.chomp
end

# asks the user for the first number
puts "Dope. What is the first number?".colorize(:black).colorize(:background => :yellow)
first_number = gets.chomp.to_i

# ...and now the second #
puts "What is the second number?".colorize(:black).colorize(:background => :green)
second_number = gets.chomp.to_i

# if the user enters one of the valid operators, the calculator will use one of the
# corresponding interpolations below to output the result
if operation == "add" || operation == "+"
  add_result = first_number + second_number
  puts "#{first_number} + #{second_number} = " + "  #{add_result}  ".colorize(:blue).colorize(:background => :cyan)
elsif operation == "subtract" || operation == "-"
  subtract_result = first_number - second_number
  puts "#{first_number} - #{second_number} = " + "  #{subtract_result}  ".colorize(:blue).colorize(:background => :cyan)
elsif operation == "multiply" || operation == "*"
  multiply_result = first_number * second_number
  puts "#{first_number} * #{second_number} = " + "  #{multiply_result}  ".colorize(:blue).colorize(:background => :cyan)
elsif operation == "divide" || operation == "/"
  divide_result = first_number / second_number
  puts "#{first_number} / #{second_number} = " + "  #{divide_result}  ".colorize(:blue).colorize(:background => :cyan)
elsif operation == "modulus" || operation == "%"
  modulus_result = first_number % second_number
  puts "#{first_number} % #{second_number} = " + "  #{modulus_result}  ".colorize(:blue).colorize(:background => :cyan)
elsif operation == "exponent" || operation == "**"|| operation == "^"
  exponent_result = first_number ** second_number
  puts "#{first_number} ** #{second_number} = " + "  #{exponent_result}  ".colorize(:blue).colorize(:background => :cyan)
end
