answer = nil
puts "Hi there"
while answer == nil 
  puts "Please enter one of the following operations, addition, subtraction, multiplication, division, exponent, or modulo:"
  operation = gets.chomp.downcase

  puts "Please enter the first number:"
  user_num1 = gets.chomp
  num1 = user_num1.to_f
  
  puts "Please enter the second number:"
  user_num2 = gets.chomp
  num2 = user_num2.to_f
  
  # input1 = []
  # user_num1.each_char.with_index do |char, i|
  #   input1.to_i.push(char)
  # end

  # input2 = []
  # user_num2.each_char.with_index do |char, i|
  #   input2.push(char)
  # end

  if user_num1.to_i == 0 && user_num1 != "0"
    puts user_num1.to_i
    puts "You did not enter a number. You entered #{user_num1.class} or #{user_num2.class} type."
    next
  elsif user_num2.to_i == 0 && user_num2 != "0"
    puts "You did not enter a number. You entered #{user_num1.class} or #{user_num2.class} type."
    next

  elsif user_num1 == "0" 
      num1 = 0
  elsif user_num2 == "0"
      num2 = 0
  end


  if operation == "+" || operation == "add" || operation == "addition"
    answer = num1 + num2
    
  elsif operation == "-" || operation == "subtraction"
    answer = num1 - num2
    
  elsif operation == "*" || operation == "multiplication"
    answer = num1 * num2
    
  elsif operation == "/" || operation == "division"
    answer = num1 / num2

  elsif operation == "**" || operation == "exponent"
    answer = num1 ** num2

  elsif operation == "%" || operation == "mod" || operation == "modulo"
    answer = num1 % num2
    
  else
    puts "You did not enter a valid operation."
    next
  end
  
  if answer.to_f % 1 == 0
    
    num1 = num1.to_i
    num2 = num2.to_i
    answer = answer.to_i
  end
    puts "The result is #{num1.to_s + " " + operation + " " + num2.to_s + " = " + answer.to_s} "

end



  

