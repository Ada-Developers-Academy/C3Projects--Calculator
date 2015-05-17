# This is for the Calculator exercise, the first exercise we turn in!
# Specifics: add, subtract, multiply and divide using two numbers
# Silver: Print out the formula in addition to the result, i.e. 2 + 2 = 4
  # Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
  # Add support for the modulo operator (10 % 3 = 1).
# Gold Gracefully handle unexpected user input:

puts "Hello and welcome to Calculator."
puts "Please specify what type of math you'd like to do:"

# This is what type of calculation will be performed
math_operation = gets.chomp.downcase

# if the variable is empty, run this until it contains something
until math_operation != ""
  puts "You have typed in nothing. Please select from +, -, /, *, %"
  math_operation = gets.chomp.downcase
end

# Checking to see if what user typed is included in library of valid math operations
maths = ["+", "add", "addition","sub", "subtract", "subtraction", "-",
   "/", "div", "divide", "division", "*", "mul", "multiply",
   "^", "exp", "exponent", "%", "mod", "modulo", "modulus"]

if maths.include?(math_operation)
else
  puts "Please type in a operation: "
  math_operation = gets.chomp
end

puts "Type your first number: "
first_num = gets.chomp

# if the variable is empty, run this until it contains something
until first_num != ""
  puts "You've entered nothing!  Please enter a number."
  first_num = gets.chomp
end

# loop will run while the input is a non-number
# ex: apples -> to_i -> 0/to_f -> 0.0 .to_s -> "0" != "apples", statement is TRUE
# ex: "40.5" -> to_i -> 40/.to_f -> 40.5 .to_s -> "40" != 40.5,
# => "40.5" == 40.5 so AND statement is now FALSE, get kicked out
while (first_num.to_i.to_s != first_num) && (first_num.to_f.to_s != first_num)
  puts "Please enter a numerical number:"
  first_num = gets.chomp
end

puts "Type your second number: "
second_num = gets.chomp

# run this until user enters something
until second_num !=  ""
  puts "You've entered nadda, I can't do math without numbers. Please enter a number: "
  second_num = gets.chomp
end


# same while loop for second number.  See notes above
while (second_num.to_i.to_s != second_num) && (second_num.to_f.to_s != second_num)
  puts "Please enter a numerical number."
  second_num = gets.chomp
end

# Actual calculations
#addition
if (math_operation == "+") || (math_operation == "add") || (math_operation == "addition")
    print " #{first_num} + #{second_num} ="
    answer = first_num.to_f + second_num.to_f
  # subtraction
  elsif (math_operation == "-") || (math_operation == "sub") || (math_operation == "subtract")
    print " #{first_num} - #{second_num} ="
    answer = first_num.to_f - second_num.to_f
  # division
  elsif (math_operation == "/") || (math_operation == "div") ||
    (math_operation == "divide") || (math_operation == "division")
    print " #{first_num.to_f} / #{second_num} ="
    answer = first_num.to_f / second_num.to_f
  # multiplication
  elsif (math_operation == "*") || (math_operation == "mul") || (math_operation == "multiply")
    print " #{first_num} * #{second_num} ="
    answer = first_num.to_f * second_num.to_f
  # exponent
  elsif (math_operation == "exp") || (math_operation == "^") || (math_operation == "exponent")
    print "#{first_num} ^ #{second_num} = "
    answer = first_num.to_f ** second_num.to_f
  # modulo
  elsif (math_operation == "%") || (math_operation == "mod") ||
    (math_operation == "modulo") || (math_operation == "modulus")
    print "#{first_num} % #{second_num} = "
    answer = first_num.to_f % second_num.to_f
  else
    puts "I am sorry, I don't understand."
end

# Print the final answer!
print answer.to_f
