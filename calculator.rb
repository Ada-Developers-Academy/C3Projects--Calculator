# Elsa's calculator project
# Due: 2015/05/08
# Bronze + Silver

# welcome message, instructions, and receiving user input
print "\nWelcome to the Calculator\n\nYou will be asked to enter\n\t1) your first number,\n\t2) your mathematical operation,\n\t3) and your second number.\nThe resulting calculation will then be provided.\n\nFirst number:\t"
first_number = gets.chomp.to_i

print "Math operation:\t"
operation = gets.chomp.downcase

print "Second number: \t"
second_number = gets.chomp.to_i

if operation == "+" || operation == "plus" || operation == "and" || operation == "add" || operation == "addition"
    addition = first_number + second_number
    puts "#{first_number} + #{second_number} = #{addition}"

elsif operation == "-" || operation == "min" || operation == "minus" || operation == "less" || operation == "sub" || operation == "subtract" || operation == "subtraction"
  subtraction = first_number - second_number
  puts "#{first_number} - #{second_number} = #{subtraction}"

elsif operation == "*" || operation == "times" || operation == "mult" || operation == "multiply" || operation == "multiplication"
  multiplication = first_number * second_number
  puts "#{first_number} * #{second_number} = #{multiplication}"

elsif operation == "/" || operation == "over" || operation == "div" || operation == "divide" || operation == "divided by" || operation == "divide by" || operation == "division"
  division = first_number / second_number
  puts "#{first_number} / #{second_number} = #{division}"

elsif operation == "**" || operation == "^" || operation == "power" || operation == "to the" || operation == "exp" || operation == "exponent" || operation == "exponential" || operation == "to the power" || operation == "to the power of"
  exponent = first_number ** second_number
  print "#{first_number}^#{second_number} = "
  print "#{first_number} * " * (second_number - 1)
  print "#{first_number} = #{exponent}\n"

elsif operation == "%" || operation == "mod" || operation == "modulo" || operation == "modulus"
  modulus = first_number % second_number
  puts "#{first_number} % #{second_number} = #{modulus}"

elsif operation == ""
  puts "You didn't actually enter everything..."
else
  puts "Hmm, I didn't understand that..."
  # LET'S TRY THAT AGAIN, LOOP IT BACK UP LATER
end
