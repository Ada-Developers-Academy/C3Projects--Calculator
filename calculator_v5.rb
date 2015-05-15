# Goal is to create a program that takes two numbers and performs mathematical operations on them, then gives the result. Shooting for Gold level here.

# outputs welcome string and user prompt
puts "Welcome to Mathtropolis! Let's do some math!"
puts "What type of math would you like to do?"

# assigns user input to the variable "operation"
operation = gets.chomp.downcase

# defines a method called do_math that takes 3 arguments corresponding to
# operation and inputted numbers below
def do_math(operation, num1, num2)

  # if operation is equal to values indicating addition
  if operation == "+" || operation == "add" || operation == "addition" || operation == "adding"
    # adds and assigns result to variable
    result = num1 + num2
    # outputs formula and result celebration.
    puts "#{num1} + #{num2} = #{result}"
    puts "The answer is #{result}! Woohoo!!! Math is so cool."

  # if operation is equal to values indicating subtraction
  elsif operation == "-" || operation == "subtract" || operation == "minus" || operation == "subtraction" || operation == "subtracting"
    # subtracts and assigns result to variable
    result = num1 - num2
    # outputs formula and result celebration.
    puts "#{num1} - #{num2} = #{result}"
    puts "The answer is #{result}! Woohoo!!!"

  # if operation is equal to values indicating multiplication
  elsif operation == "*" || operation == "x" || operation == "multiply" || operation == "multiplication" || operation == "multiplying"
    # multiples and assigns result to variable
    result = num1 * num2
    # outputs formula and result celebration.
    puts "#{num1} * #{num2} = #{result}"
    puts "The answer is #{result}! Woohoo!!!"

  # if operation is equal to values indicating division
  elsif operation == "/" || operation == "divide" || operation == "division" || operation == "dividing"
    # outputs error if attempt to divide by 0. Otherwise, compute result.
    if num2 == 0
      puts "That's ridiculous! You can't divide by zero! Goodbye now!"
    else
      # divides and assigns result to variable
      result = num1 / num2
      # outputs formula and result celebration.
      puts "#{num1} / #{num2} = #{result}"
      puts "The answer is #{result}! Woohoo!!!"
    end

  # if operation is equal to values indicating exponent
  elsif operation == "^" || operation == "**" || operation == "exponents" || operation  == "exponent" || operation == "power"
    # takes num1 to the power of num2 and assigns result to variable
    result = num1**(num2)
    # outputs formula and result celebration.
    puts "#{num1}^#{num2} = #{result}"
    puts "The answer is #{result}! Woohoo!!!"

  # if operation is equal to values indicating modulo
  elsif operation == "%" || operation == "modulus" || operation == "modulo" || operation == "remainder"
  # calculates remainder of num1 divided by num2 and assigns result to variable
    result  = num1 % num2
    # outputs formula and result celebration.
    puts "#{num1} % #{num2} = #{result}"
    puts "The answer is #{result}! Woohoo!!!"

  # if other operation value, outputs error
  else
    puts "I'm sorry, I don't know how to do #{operation}. Goodbye!"
  end
end

# Outputs query for first number, then assigns user entered value to num1
print "What is the first number? "
num1 = gets.chomp.delete(",")

# Outputs query for second number, then assigns user entered value to num2
print "Fantastic! How about the second number? "
num2 = gets.chomp.delete(",")

numbers = [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]

# if no operation entered, give error
if operation.length == 0
  puts "I don't know what you want me to do with your numbers. Next time enter an operation. Goodbye!"
elsif num1.length == 0 || !numbers.any? { |number| num1.include?(number) } || num2.length == 0 || !numbers.any? { |number| num2.include?(number) }
  puts "At least one of your numbers looks suspicious. \nI can't really do math with that. Goodbye!"
else
  num1 = num1.to_f
  num2 = num2.to_f
  puts "Okay, I'll attempt to perform the operation #{operation} on the numbers #{num1} and #{num2}."
  do_math(operation, num1, num2)
end
