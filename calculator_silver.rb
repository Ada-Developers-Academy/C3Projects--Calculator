puts "Let us do some simple maths! What kind of math do you want to do?"
operation = gets.chomp

# Checks for acceptable operators.
correct_op_answers = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide", "**", "exponent", "^", "%", "modulus"]

# Used a while loop to display the same error message until a valid operator is entered.
while correct_op_answers.include?(operation) == false
  puts correct_op_answers
  puts "That ain\'t right. Try one of the operators above."
  operation = gets.chomp
end

# asks the user for the first number
puts "Dope. What is the first number?"
first_number = gets.chomp.to_i

# ...and now the second #
puts "What is the second number?"
second_number = gets.chomp.to_i

# if the user enters one of the valid operators, the calculator will use one of the
# corresponding interpolations below to output the result
if operation == "add" || operation == "+"
  add_result = first_number + second_number
  puts "#{first_number} + #{second_number} = #{add_result}"
elsif operation == "subtract" || operation == "-"
  subtract_result = first_number - second_number
  puts "#{first_number} - #{second_number} = #{subtract_result}"
elsif operation == "multiply" || operation == "*"
  multiply_result = first_number * second_number
  puts "#{first_number} * #{second_number} = #{multiply_result}"
elsif operation == "divide" || operation == "/"
  divide_result = first_number / second_number
  puts "#{first_number} / #{second_number} = #{divide_result}"
elsif operation == "modulus" || operation == "%"
  modulus_result = first_number % second_number
  puts "#{first_number} % #{second_number} = #{modulus_result}"
elsif operation == "exponent" || operation == "**"|| operation == "^"
  exponent_result = first_number ** second_number
  puts "#{first_number} ** #{second_number} = #{exponent_result}"
end
