puts "Hello! Welcome to my calculator!\nWhat kind of math operation would you like to do?"

# What operation to use and what numbers to use

operation = gets.chomp

if (operation.downcase == "addition") || (operation.downcase == "add") || (operation == "+")
  operation = "add"
elsif (operation.downcase == "subtraction") || (operation.downcase == "sub") || (operation == "-")
  operation = "subtract"
elsif (operation.downcase == "multiplication") || (operation.downcase == "times") || (operation == "*")
  operation = "multiply"
elsif (operation.downcase == "division") || (operation.downcase == "div") || (operation == "/") || (operation == "divide")
  operation = "divide"
  # Add a way to do an exponent and get the base number and the exponent
else (operation.downcase == "exponent") || (operation.downcase == "square") || (operation.downcase == "squared")
  operation = "do an exponent"
end

puts "Great! I can #{operation}!"

puts "What is your first number?"
first_number = gets.chomp

puts "What is your second number"
second_number = gets.chomp

# Do the math and print the equation and the result

if operation == "add"
  puts "#{first_number} + #{second_number} = #{first_number + second_number}"
elsif operation == "subtract"
  puts "#{first_number} - #{second_number} = #{first_number - second_number}"
elsif operation == "multiply"
  puts "#{first_number} * #{second_number} = #{first_number * second_number}"
elsif operation == "divide"
  puts "#{first_number} / #{second_number} = #{first_number / second_number}"
else operation == "do an exponent"
  puts "#{first_number}^#{second_number} = #{first_number ** second_number}"
end
