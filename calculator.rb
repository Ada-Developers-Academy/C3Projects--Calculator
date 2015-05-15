# Calculator
# Platinum level
# By Alice Rhomieux

puts "Hello, welcome to the calculator."

# List of supported operations, structured as a hash.
# Each array is a family of terms that will be accepted for each operation.
# The operator symbol is always the last element of the class so it can be selected with index [-1]
# Oops, this is a global variable
$supported_operations = {
	addition: ["addition", "add", "plus", "+"],
	subtraction: ["subtraction", "subtract", "minus", "sub", "-"],
	multiplication: ["multiplication", "multiply", "times", "*"],
	division: ["division", "divide", "div", "by", "/"],
	exponent: ["exponent", "exp", "power of", "power", "**", "^"],
	modulus: ["modulus", "modulo", "mod", "remainder", "%"]
}

# Check a number inputted by the user as a string and see if it has a decimal
# If it has a decimal, convert it to a float, otherwise, convert it to an integer
def check_num_format(input)
	if input.include?(".")
		data = input.delete(",").to_f
	else
 		data = input.delete(",").to_i
	end

	return data
end

# Performe a calculation using an operation and two numbers
# Return the output and the string form of the operator
def calculate(operation, first_num, second_num)	

	first_number_data = check_num_format(first_num)
	second_number_data = check_num_format(second_num)
	
	if $supported_operations[:addition].include?(operation)
		output = first_number_data + second_number_data
		operator = $supported_operations[:addition][-1]

	elsif $supported_operations[:subtraction].include?(operation)
	 	output = first_number_data - second_number_data
	 	operator = $supported_operations[:subtraction][-1]

	elsif $supported_operations[:multiplication].include?(operation)
	 	output = first_number_data * second_number_data
	 	operator = $supported_operations[:multiplication][-1]

	elsif $supported_operations[:division].include?(operation)
	 	output = first_number_data.to_f / second_number_data.to_f
	 	operator = $supported_operations[:division][-1]

	elsif $supported_operations[:exponent].include?(operation)
	 	output = first_number_data ** second_number_data
	 	operator = $supported_operations[:exponent][-1]

	elsif $supported_operations[:modulus].include?(operation)
	 	output = first_number_data % second_number_data
	 	operator = $supported_operations[:modulus][-1]
	end

	return output, operator
end

# Evaluate a statement contained in parentheses and return the value
def evaluate_parens(statement_in_parens)
	# strip the commas out of the input
	statement = statement_in_parens[1...-1]
	
	# partition the statement using a regex to find the operation
	# statement_parts = statement.partition(/[\+\-\^\*\/\%]/)

	# # feed the elements of the array into the 2 numbers and operation
	# statement_first_num = statement_parts[0].strip
	# statement_second_num = statement_parts[2].strip
	# statement_operation = statement_parts[1].strip

	statement_first_num = statement.partition(/[\+\-\^\*\/\%]/)[0].strip
	statement_operation = statement.partition(/[\+\-\^\*\/\%]/)[1].strip
	statement_second_num = statement.partition(/[\+\-\^\*\/\%]/)[2].strip	

	# run the calculate function and save the returned values into variables
	value, operator = calculate(statement_operation, statement_first_num, statement_second_num)
	
	# return just the output value
	return value
end

# Ask for what operation the user wants to perform and store the input in a variable.
puts "What operation would you like to perform?"
operation = gets.chomp.downcase

# Create a boolean variable to store whether the operation is valid or not.
valid = false

# Check for operation validity
while valid == false
	# If operation falls into the flattened supported operations array, stop the loop and proceed.
	if $supported_operations.flatten(2).include?(operation)
		valid = true
	# If the user pressed enter without entering data, ask them for another operation.
	elsif operation == ""
		puts "Please enter an operation."
		operation = gets.chomp.downcase
	# If the user entered a word that is not on the supported operations list, ask for another operation.
	else
		puts "I do not recognize the operation \"#{operation}\". Please enter: addition, subtraction, multiplication, division, exponent, or modulus."
		operation = gets.chomp.downcase
	end
end

# Ask the user for a number and store the input in a variable.
puts "Enter your first number:"
first_number_raw = gets.chomp

# Reset the boolean variable to store the validity of the number
valid = false

# Run loop to check for number validity
until valid == true
	# Check to see if the first and last characters are (), then run evaluate_parens and feed the result into first number
	if first_number_raw[0] == "(" && first_number_raw[-1] == ")"
		first_number = evaluate_parens(first_number_raw).to_s
		valid = true
	# Check to make sure the input is a number
	# If the input, when converted to a float then back to a string, or to an integer, then back to a string, does not retrain its identity
	# or if the input is an empty string, then the number is invalid and a request is made for more input.
	# deleted commas before processing to allow for numbers inputted with commas, like "2,000"
	elsif first_number_raw.delete(",").to_f.to_s != first_number_raw.delete(",") \
		&& first_number_raw.delete(",").to_i.to_s != first_number_raw.delete(",")
		puts "Please enter a valid number."
		first_number_raw = gets.chomp
	# Otherwise the input must be a valid number and the loop ends
	else
	 	first_number = first_number_raw
		valid = true
	end
end

# Check if the input should be treated as an integer or a float and store it as the appropriate data
# If there is a "." in the input string, convert the input to a float

# Perform the same operations to check for validity with the second number inputted.
puts "Enter your second number:"
second_number_raw = gets.chomp

# Reset the validity variable
valid = false

# Run loop to check for number validity
while valid == false
	if second_number_raw[0] == "(" && second_number_raw[-1] == ")"
		second_number = evaluate_parens(second_number_raw).to_s
		valid = true
	elsif second_number_raw.delete(",").to_f.to_s != second_number_raw.delete(",") \
		&& second_number_raw.delete(",").to_i.to_s != second_number_raw.delete(",")
		puts "Please enter a valid number."
		second_number_raw = gets.chomp
	else
	 	second_number = second_number_raw
		valid = true
	end
end

# run the calculate operation on the data collected and processed
main_output, main_operator = calculate(operation, first_number, second_number)

# Check if operation was exponent AND if the second number is an integer
# If so, create full printout of operation (eg. 2 ^ 3 = 2 * 2 * 2)
if $supported_operations[:exponent].include?(operation) && second_number.include?(".") == false
	printout = "#{first_number}"
	for i in 1...second_number.to_i
		printout += " * #{first_number}"
	end
# And print the entire calculation with printout
	puts "#{first_number_raw} ^ #{second_number_raw} = #{printout} = #{main_output}"
# Otherwise, print the calculation and output.
else
	puts "#{first_number_raw} #{main_operator} #{second_number_raw} = #{main_output}"
end

