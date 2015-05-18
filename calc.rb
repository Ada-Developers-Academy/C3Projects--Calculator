# Elsa's calculator project
# Due: 150508
# Breakfast + Lunch + Dinner

# welcome message, instructions, and receiving user input
print "\nWelcome to the Calculator!\n\nYou will be asked to enter\n  1) your first number,\n  2) your mathematical operation,\n  3) and your second number.\nThe resulting calculation will then be provided.\n"

# sets up while loop for repeated calculations
restart = "Y"
while restart == "Y" do


  # asks for the first number
  print "\nFirst number:\t"
  first_number = gets.chomp
  # if not a number, asks again
  while first_number != "0" && first_number.to_i == 0 do
    puts "\nNice try. How about a number this time?"
    print "First number:\t"
    first_number = gets.chomp
  end


  # asks for mathematical operation (without immediate  validation *sad face*)
  print "Math operation:\t"
  operation = gets.chomp.downcase

  # asks for a second number
  print "Second number: \t"
  second_number = gets.chomp
  # if not a number, asks again
  while second_number != "0" && second_number.to_i == 0 do
    puts "\nNice try. How about a number this time?"
    print "Second number:\t"
    second_number = gets.chomp
  end



  # operator handling and result generator
  case operation

  # addition
  when "+", "plus", "and", "add", "addition"
    result = first_number.to_i + second_number.to_i
    puts "#{first_number.to_i} + #{second_number.to_i} = #{result}"

  # subtraction
  when "-", "min", "minus", "less", "sub", "subtract", "subtraction"
    result = first_number.to_i - second_number.to_i
    puts "#{first_number.to_i} - #{second_number.to_i} = #{result}"

  # multiplication
  when "*", "times", "mult", "multiply", "multiplication"
    result = first_number.to_i * second_number.to_i
    puts "#{first_number.to_i} * #{second_number.to_i} = #{result}"

  # division
  when "/", "over", "div", "divide", "divide by", "divided by", "division"
    result = first_number.to_i / second_number.to_i
    puts "#{first_number.to_i} / #{second_number.to_i} = #{result}"

  # exponents
  when "**", "^", "power", "to the", "to the power", "to the power of", "exp", "exponent", "exponential"
    result = first_number.to_i ** second_number.to_i
    # gives standard exponent notation, ex: 2^3
    print "#{first_number.to_i}^#{second_number.to_i} = "
    # gives fully expanded notation, ex: 2 * 2 * 2
    # however, it removes the last "2 *" and replaces it with another "2" to avoid a trailing "*"
    print "#{first_number.to_i} * " * (second_number.to_i - 1)
    print "#{first_number.to_i} = #{result}\n"

  # modulus
  when "%", "mod", "modulo", "modulus"
    result = first_number.to_i % second_number.to_i
    puts "#{first_number.to_i} % #{second_number.to_i} = #{result}"

  # handling for empty operator
  when ""
    puts "\nYou didn't provide a math operation. Try again."

  # handling for wacky operator (should really be improved)
  else
    puts "\nYou might want to use an actual math operation. Try again."

  # end of operator/result case
  end


  # prompt to restart calculator
  puts "\nWould you like to start again? (Y/N)"
  restart = gets.chomp.upcase
  # if not Y/N, asks again
  while restart != "Y" && restart != "N"
    puts "Very funny. Start again? (Y/N)"
    restart = gets.chomp.upcase
  end


# end of calculator restart loop
end
