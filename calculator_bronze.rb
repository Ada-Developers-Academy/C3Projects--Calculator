puts "Hello! Welcome to my calculator!\nWhat kind of math operation would you like to use?"

#what operation do they want to use? Get user input

operation = gets.chomp

#make an if/elsif statement for each operation. Add, subtract, multiply, divide
if (operation.downcase == "addition") || (operation.downcase == "add") || (operation == "+")
  operation = "add"
elsif (operation.downcase == "subtraction") || (operation.downcase == "sub") || (operation == "-")
  operation = "subtract"
elsif (operation.downcase == "multiplication") || (operation.downcase == "multi") || (operation == "*")
  operation = "multiply"
else (operation.downcase == "division") || (operation.downcase == "div") || (operation == "/") || (operation == "divide")
  operation = "divide"
end

puts "Great! Lets #{operation}!"

#what numbers do they want to use?

puts "What is your first number?"
first_number = gets.chomp.to_i

puts "What is your second number?"
second_number = gets.chomp.to_i

#do the math equation

if operation == "add"
  result = first_number + second_number
elsif operation == "subtract"
  result = first_number - second_number
elsif operation == "multiply"
  result = first_number * second_number
else operation == "divide"
  result = first_number / second_number
end

#give them the answer

puts "Your answer is #{result}"
