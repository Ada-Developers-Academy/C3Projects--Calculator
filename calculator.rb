# Calculator (Dinner) - Loraine Kanervisto

# Starts with user prompts and data collection

#Collects first number
puts "You find a calculator on the ground. You pick it up. The screen says:\n
Enter a number>>"
first_num = gets.chomp

#Checks first number
# This while loop catches text input
while first_num.to_i == 0
  #However, if the input is a string of zero, it allows that through.
  if first_num.to_s == "0"
    break
  end
  puts "That is totally not a number! Try agin!"
  first_num = gets.chomp
end
  first_num = first_num.to_i

#Collects math operation
operator_examples = "\nOPTIONS\n+, add, plus\n-, subtract, minus\n*, multiply, times\n/, divide, division\nexponent, to the power of\nmodulo"
puts "\nNow choose a math operator! #{operator_examples}"
operation = gets.chomp

#Checks validity of operation answer
correct_operator_options = ["+", "add", "plus", "-", "subtract", "minus", "*", "multiply", "times", "/", "divide", "division", "exponent", "to the power of", "modulo"]
while correct_operator_options.include?(operation) == false
  puts operator_examples
  puts "That doesn't work! Try typing one of the operations above press \'RETURN\'"
  operation = gets.chomp
end

#Collects second number
puts "Perfect! Now enter a second number."
second_num = gets.chomp.to_i

#Checks second number
while second_num.to_i == 0
  if first_num.to_s == "0"
    break
  end
  puts "That is totally not a number! Try agin!"
  second_num = gets.chomp
end
  second_num = second_num.to_i
#_________
#Behind-the-scenes math operations

#Addition
if (operation == "plus") || (operation == "add") || (operation == "+")
  sum = first_num + second_num
  puts "#{first_num} + #{second_num} = #{sum}"
  puts "Your answer is: #{sum}"

#Subtraction
elsif (operation == "minus") || (operation == "subtract") || (operation =="-")
  diff = first_num - second_num
  puts "#{first_num} - #{second_num} = #{diff}"
  puts "Your answer is: #{diff}"

#Multiplication
elsif (operation == "multiply") || (operation == "*") || (operation == "times")
  product = first_num * second_num
  puts "#{first_num} * #{second_num} = #{product}"
  puts "Your answer is: #{product}!"

#Division
elsif (operation == "divide") || (operation == "division") || (operation == "/")
  quotient = first_num / second_num
  remainder = first_num % second_num

  # Checks if there is a remainder
  if remainder == 0
    puts "#{first_num} / #{second_num} = #{quotient}"
    puts "Your answer is #{quotient}"
  else
    puts "#{first_num} / #{second_num} = #{quotient} R#{remainder}"
    puts "Your answer is #{quotient} with a remainder of #{remainder}"
  end

#Exponents
elsif (operation == "exponent") || (operation == "to the power of")
  exp_product = first_num ** second_num
  puts "#{first_num} ** #{second_num} = #{exp_product}"
  puts "Your answer is: #{exp_product}"

#Modelo
elsif (operation == "modulo")
  mod_result = first_num % second_num
  puts "#{first_num} % #{second_num} = #{mod_result}"
  puts "Your answer is: #{mod_result}"

#Catches any operation user entries the might have slipped past the "while" validity check.
else
  puts "That is not a valid entry!"

end
