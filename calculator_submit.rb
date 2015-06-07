# this version is an experiment with while loops and the .include method
puts "Hi! Let's do math!"

puts "Please tell me which kind of math you would like to do"
math_type = gets.chomp.downcase

#this array includes all valid math types
#the while loop loops through the array with the .include method with the
#argument of math_type as the paramenter
#as long as the array.include?(math_type) is false the invalid input message
#will print to the screen
valid_math_types = ['+', 'add', 'addition', '-', 'sub', 'subtraction', '*',
  'mult', 'multiply', 'multiplication', '/', 'div', 'divide', 'division', '^',
  'exponent', 'exponential', '%', 'modulo', 'mod']
  while valid_math_types.include?(math_type) == false
    puts "Please insert a valid math operation"
    math_type = gets.chomp.downcase
  end

puts "Great! Please enter the first number for #{math_type}."
first_number = gets.chomp.to_i
#Consider checking for invalid string input THEN changing to an integer

puts "And the second number..."
second_number = gets.chomp.to_i
#Consider checking for invalid string input THEN changing to an integer

  if
    (math_type ==  "+") || (math_type == "add") || (math_type == "addition")
    sum = first_number + second_number
    puts "#{first_number} + #{second_number} = #{sum}"

  elsif
    (math_type == "-") || (math_type == "sub") || (math_type == "subtraction")
    difference = first_number - second_number
    puts "#{first_number} - #{second_number} = #{difference}"

  elsif
    (math_type == '*') || (math_type == 'mult') || (math_type == 'multiply') || (math_type =='multiplication')
    product = first_number * second_number
    puts "#{first_number} * #{second_number} = #{product}"

  elsif
    (math_type == '/') || (math_type == 'div') || (math_type == 'divide') || (math_type == 'division')
    quotient = first_number / second_number
    puts "#{first_number} / #{second_number} = #{quotient}"

  elsif
    (math_type == '^') || (math_type == 'exponent') || (math_type == 'exponential')
    solution = first_number ** second_number
    puts "#{first_number} to the power of #{second_number} = #{solution}"

  else
    (math_type == '%') || (math_type == 'modulo') || (math_type == 'mod')
    remainder = first_number % second_number
    puts "#{first_number} % #{second_number} = #{remainder}"

end
