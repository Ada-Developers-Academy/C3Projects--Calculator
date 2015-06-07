puts "The Calculator"
puts "I'll take two numbers and perform a mathematical operation on them. Let's try."

# First number
puts "\nWhat is the first number?"
num1 = gets.chomp

# Handling invalid user input for first number
# Accounts for edge cases where user inputs non-numeric values
while num1 == nil || (num1.to_i.to_s != num1 && num1.to_f.to_s != num1)
	puts "Please type a valid first number. For example, type 3 instead of three."
	num1 = gets.chomp
end

# Second number
puts "What is the second number?"
num2 = gets.chomp

# Handling invalid user input for second number
# Accounts for edge cases where user inputs non-numeric values
while num2 == nil || (num2.to_i.to_s != num2 && num2.to_f.to_s != num2)
	puts "Please type a valid second number. For example, type 5 instead of five."
	num2 = gets.chomp
end

# Convert number to integer or float
if num1.include? "."
	num1 = num1.to_f
else
	num1 = num1.to_i
end

if num2.include? "."
	num2 = num2.to_f
else
	num2 = num2.to_i
end

# Determine type of math operation to be performed
# Convert math operation string to symbol for printing
puts "What kind of math operation would you like to do?"
math_type = gets.chomp

case math_type
when "add", "+", "addition", "plus"
	answer = num1 + num2
	math_type = "+"
when "subtract", "-", "subtraction"
	answer = num1 - num2
	math_type = "-"
when "multiply", "x", "*", "multiplication"
	answer = num1 * num2
	math_type = "*"
when "divide", "/", "division"
	answer = num1 / num2
	math_type = "/"
when "exponent", "**", "power", "^"
	answer = num1 ** num2
	math_type = "**"
when "modulo", "modulus", "%"
	answer = num1 % num2
	math_type = "%"
else
	puts "Sorry, I didn't understand that operation. Try typing +, -, *, /, %, or **. Goodbye."
	exit
end

# Print the operation and answer
puts "#{num1} #{math_type} #{num2} = #{answer}"
