# PROMPTS FOR THE USER
puts "What do you want to do, Master?\nAddition, subtraction, multiplication, division?\nMaybe exponent or modulo?"
user_operator = gets.chomp

puts "What is your first number, Master?"
user_num1 = gets.chomp

puts "What is your second number, Master?"
user_num2 = gets.chomp

addition = ["ADDITION", "ADD", "+"]
subtraction = ["SUBTRACTION", "SUBTRACT", "SUB", "-"]
multiplication = ["MULTIPLICATION", "MULTIPLY", "MULTI", "MULT", "*"]
division = ["DIVISION", "DIVIDE", "DIV", "/"]
modulo = ["MODULO", "MODULUS", "MOD", "REMAINDER", "%"]
exponents = ["EXPONENTS", "EXPONENT", "EXP", "POWER", "THE POWER", "TO THE POWER", "^"]

# CODE TO DETERMINE IF THE USER ENTERED THE APPROPRIATE MODIFIER.
if addition.include?(user_operator.upcase)
  result = user_num1.to_f + user_num2.to_f
  puts "#{user_num1} + #{user_num2} = #{result}"
elsif subtraction.include?(user_operator.upcase)
  result = user_num1.to_f - user_num2.to_f
  puts "#{user_num1} - #{user_num2} = #{result}"
elsif multiplication.include?(user_operator.upcase)
  result = user_num1.to_f * user_num2.to_f
  puts "#{user_num1} * #{user_num2} = #{result}"
elsif division.include?(user_operator.upcase)
  result = user_num1.to_f / user_num2.to_f
  puts "#{user_num1} / #{user_num2} = #{result}"
elsif modulo.include?(user_operator.upcase)
  result = user_num1.to_f % user_num2.to_f
  puts "#{user_num1} % #{user_num2} = #{result}"
elsif exponents.include?(user_operator.upcase)
  result = user_num1.to_f ** user_num2.to_f
  puts "(#{user_num1})^#{user_num2} = #{result}"
else   # only triggers if user mistyped the operator
  puts "I'm sorry, Master, that is not a valid operator."
end
