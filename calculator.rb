puts "Hello! Welcome to my calculator!\nWhat kind of math operation would you like to do?"

# What operation to use and what numbers to use

operation = gets.chomp.downcase

if (operation == "addition") || (operation == "add") || (operation == "+")
  operation = "add"
elsif (operation == "subtraction") || (operation == "sub") || (operation == "-")
  operation = "subtract"
elsif (operation == "multiplication") || (operation == "times") || (operation == "*")
  operation = "multiply"
elsif (operation == "division") || (operation == "div") || (operation == "/") || (operation == "divide")
  operation = "divide"
  # Add a way to do an exponent and get the base number and the exponent
elsif (operation == "exponent") || (operation == "square") || (operation == "squared")
  operation = "do an exponent"
else (operation == "modulo") || (operation == "mod")
  operation = "use modulo"
end

puts "Great! I can #{operation}!"

puts "What is your first number?"
first_number = gets.chomp.to_i

puts "What is your second number"
second_number = gets.chomp.to_i

# Do the math and print the equation and the result

if operation == "add"
  puts "#{first_number} + #{second_number} = #{first_number + second_number}"
elsif operation == "subtract"
  puts "#{first_number} - #{second_number} = #{first_number - second_number}"
elsif operation == "multiply"
  puts "#{first_number} * #{second_number} = #{first_number * second_number}"
elsif operation == "divide"
  puts "#{first_number} / #{second_number} = #{first_number / second_number} Remainder #{first_number % second_number}"
elsif operation == "do an exponent"
  puts "#{first_number}^#{second_number} = #{first_number ** second_number}"
else operation == "use modulo"
  puts "#{first_number}%#{second_number} = #{first_number%second_number}"
end
