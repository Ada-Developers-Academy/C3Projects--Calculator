answer = nil
puts "Hi there"
while answer == nil 
#gets user input
  puts "Please enter the first number:"
  num1 = gets.chomp
  puts "Please enter the second number:"
  num2 = gets.chomp
  

#test to see if user input is acutally a number
  if num1.to_i == 0 && num1 != "0" || num2.to_i == 0 && num2 != "0"
    puts "You did not enter a number. You entered #{num1.class} or #{num2.class} type."
    next
  elsif num1 == "0" 
      num1 = 0
  elsif num2 == "0"
      num2 = 0
  end
num1 = num1.to_f
num2 = num2.to_f

puts "Please enter one of the following operations, addition, subtraction, \nmultiplication, division, exponent, or modulo:"
operation = gets.chomp.downcase
#tests which operation the user inputed.
  if operation == "+" || operation == "add" || operation == "addition"
    operation = "+"
    answer = num1 + num2
    
  elsif operation == "-" || operation == "subtraction" || operation == "sub"
    operation = "-"
    answer = num1 - num2
    
  elsif operation == "*" || operation == "multiplication"
    operation = "*"
    answer = num1 * num2
    
  elsif operation == "/" || operation == "division"
    operation = "/"
    answer = num1 / num2

  elsif operation == "**" || operation == "exponent" || operation == "^"
    operation = "^"
    answer = num1 ** num2

  elsif operation == "%" || operation == "mod" || operation == "modulo"
    operation = "%"
    answer = num1 % num2
    
  else
    puts "You did not enter a valid operation."
    next
  end
  #Changes answer to a float if necessary. 
   # answer.to_f % 1 == 0
  if puts answer % 1 == 0
    
    num1 = num1.to_i
    num2 = num2.to_i
    answer = answer.to_i
  end
  
    puts "The result is #{num1} #{operation} #{num2} = #{answer} "

end



  

