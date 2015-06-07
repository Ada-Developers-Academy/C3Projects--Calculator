# Calculator program

# Get operation input from user
puts "Hey-oh! What kind of calculation would you like to perform?"
operation = gets.chomp

until operation == "^" || operation == "exp" || operation == "exponent" || operation == "%" || operation == "mod" || operation == "modulo" || operation == "*" || operation == "mult" || operation == "multiply" || operation == "/" || operation == "div" || operation == "divide" || operation == "-" || operation == "sub" || operation == "subtract" || operation == "+" || operation == "add" || operation == "addition"
	puts "I\'m sorry, I don't understand. Please try again"
	#kick it back to retrieve new operation and reassign operation
	operation = gets.chomp
end 	




# Get first number input from user
puts "Awesome. What is the first number you would like to perform that on?"
first_number = gets.chomp

if first_number == "0"
	first_number_int = first_number.to_i

	elsif first_number.to_i == 0
		
		while first_number.to_i == 0
			first_number_int = first_number.to_i

			if first_number == "0"
			first_number_int = first_number.to_i

			elsif first_number.to_i == 0
			puts "Please enter a number."
			first_number = gets.chomp

			end

		end
	else
		first_number_int = first_number.to_i		
end

# what if they input a float? we don't want to turn it into an integer. We just want to get rid of strings.

# if first_number.is_a? Integer == "false" && first_number.is_a? Float == "false"
# 	puts "Please enter a number."
# 	first_number = gets.chomp
# end		
# problem here though is if they enter another bad number, it needs to do the loop again to check...



#Get second number input from user
puts "Sweet. What is the second number you would like to perform that on?"
second_number = gets.chomp

if second_number == "0"
	fsecond_number_int = second_number.to_i

	elsif second_number.to_i == 0
		puts "Please enter a number."
		second_number = gets.chomp
		second_number_int = second_number.to_i
		
	else
		second_number_int = second_number.to_i		
end

# what if they input a float? we don't want to turn it into an integer. We just want to get rid of strings.

# if second_number.class != "Integer" || "Float"
# 	puts "Please enter a number."
# 	second_number = gets.chomp
# end		
# problem here though is if they enter another bad number, it needs to do the loop again to check...



# Determine which calculation to do and then execute the calculation
if operation == "*" || operation == "mult" || operation == "multiply" || operation == "multiplication"
		equation = "#{first_number_int} * #{second_number_int}"
		result = first_number_int * second_number_int

	elsif operation == "/" || operation == "div" || operation == "divide" || operation == "division"
		equation = "#{first_number_int} / #{second_number_int}"
		result = first_number_int / second_number_int

	elsif operation == "-" || operation == "sub" || operation == "subtract" || operation == "subtraction"
		equation = "#{first_number_int} - #{second_number_int}"
		result = first_number_int - second_number_int

	elsif operation == "+" || operation == "add" || operation == "addition"
		equation = "#{first_number_int} + #{second_number_int}"
		result = first_number_int + second_number_int

	elsif operation == "%" || operation == "mod" || operation == "modulo"
		equation = "#{first_number_int} % #{second_number_int}"
		result = first_number_int % second_number_int

	elsif operation == "^" || operation == "exp" || operation == "exponent"
		equation = "#{first_number_int}^#{second_number_int} = " + ("#{first_number_int} * " * (second_number_int-1)) + "#{first_number_int}"
		result = first_number_int ** second_number_int

end

#print the result of the calculation
puts "The answer to your calculation is: #{result}"
puts "And since I know you want to know, here is the equation: #{equation} = #{result}"



# Option to do another math function without having to restart the program

# puts "Would you like to do more math? If yes, type \'y\'. If no, type \'n\'."
# more_math_answer = gets.chomp

# if more_math_answer == "y"
# 	#start the program over
# 	elsif more_math_answer != "n"
# 		"I'm going to take that as a \"no\" "
# end		