# Brandi Wilson - CALCULATOR (Lunch)

# PROMPTS THE USER.
puts "What do you want to do, Master?"
operator_prompt = "\tAddition\tSubtraction\n\tMultiplication\tDivision\n\tExponent\tModulo"
puts "#{operator_prompt}"   # so the user knows what they can enter
user_operator = gets.chomp.upcase   # captures user input

# ALL ACCEPTABLE INPUT (AS ARRAYS).
addition = ["ADDITION", "ADD", "+"]
subtraction = ["SUBTRACTION", "SUBTRACT", "SUB", "-"]
multiplication = ["MULTIPLICATION", "MULTIPLY", "MULTI", "MULT", "*"]
division = ["DIVISION", "DIVIDE", "DIV", "/"]
modulo = ["MODULO", "MODULUS", "MOD", "REMAINDER", "%"]
exponents = ["EXPONENTS", "EXPONENT", "EXP", "POWER", "THE POWER", "TO THE POWER", "^", "**"]
all_operators = []   # creating a super long array
all_operators.concat(addition).concat(subtraction).concat(multiplication).concat(division).concat(modulo).concat(exponents)

# TESTS FOR INPUT VALIDITY OF OPERATOR.
valid_input = false
while valid_input == false   # repeats until user enters an acceptable input (listed above)
  if all_operators.include?(user_operator) # checks to see if user entered operator matches any acceptable operators
    valid_input = true
  else   # only triggers if user mistyped the operator (or entered something whacky)
    puts "I'm sorry, Master, that is not a valid operation.\nI implore you to enter a valid operation."
    puts "#{operator_prompt}"
    user_operator = gets.chomp.upcase
  end
end

# I didn't get around to testing the validity for numbers...
puts "What is your first number, Master?"
user_num1 = gets.chomp

puts "What is your second number, Master?"
user_num2 = gets.chomp

# CODE TO DETERMINE IF THE USER ENTERED THE APPROPRIATE MODIFIER.
if addition.include?(user_operator)   # tests if user operator matches any addition
  result = user_num1.to_f + user_num2.to_f
  puts "#{user_num1} + #{user_num2} = #{result}"
elsif subtraction.include?(user_operator)   # tests if user operator matches any subtraction
  result = user_num1.to_f - user_num2.to_f
  puts "#{user_num1} - #{user_num2} = #{result}"
elsif multiplication.include?(user_operator)   # tests if user operator matches any multiplication
  result = user_num1.to_f * user_num2.to_f
  puts "#{user_num1} * #{user_num2} = #{result}"
elsif division.include?(user_operator)   # tests if user operator matches any division
  result = user_num1.to_f / user_num2.to_f
  puts "#{user_num1} / #{user_num2} = #{result}"
elsif modulo.include?(user_operator)   # tests if user operator matches any modulo
  result = user_num1.to_f % user_num2.to_f
  puts "#{user_num1} % #{user_num2} = #{result}"
elsif exponents.include?(user_operator)   # tests if user operator matches any exponents
  result = user_num1.to_f ** user_num2.to_f
  print "#{user_num1}^#{user_num2} = "
  count = 1
  while count < user_num2.to_i
    print "#{user_num1} * "
    count += 1
  end
  puts "#{user_num1} = #{result}"
else   # only triggers if user mistyped the operator
  puts "I'm sorry, Master, that is not a valid operator."
end
