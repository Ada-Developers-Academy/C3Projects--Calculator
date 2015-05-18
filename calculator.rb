# Calculator program - Corinne Pingul

# WELCOME----------------------------------------------------------------------
puts """Hello there! I am a calculator, below are the operations I know how to compute: \n
  ADDITION --> type \"add\" or \"+\"
  SUBTRATION --> type \"sub\" or \"-\"
  MULTIPLICATION --> type \"mult\" or \"*\"
  DIVISION --> type \"div\" or \"/\"
  POWERS --> type \"exp\" or \"^\"
  """
# QUESTIONS----------------------------------------------------------------------

# Asks user what type of math they'd like to do
print "What type of calculation would you like to do? "
operation = gets.chomp.strip

# Prints error message if user types something that's not an accepted operation
while (operation != "add") && (operation != "+") && (operation != "sub") && (operation != "-") && (operation != "mult") && (operation != "*") && (operation != "div") && (operation != "/") && (operation != "exp") && (operation != "^")
  print "That is not an available command. Please enter a correct operation: "
  operation = gets.chomp.strip
end

# Gets first number from user (string)
print "What is your first number: "
first_num = gets.chomp

# Prints error message if not a number
while first_num != "0" && first_num.to_i == 0
  print "Whoops! That is not a number. Please enter a number: "
  first_num = gets.chomp
end

# Gets second number from user (string)
print "What is your second number: "
second_num = gets.chomp

# Prints error message if not a number
while second_num != "0" && second_num.to_i == 0
  print "Whoops! That is not a number. Please enter a number: "
  second_num = gets.chomp
end

# Asks if user wants answer as an int or float
print "Would you like your answer as an integer or float? (type \"i\" for integer and \"f\" for float): "
num_type = gets.chomp

# converts the input numbers to either an integer or float or error message
if num_type == "i"
  first_num = first_num.to_i
  second_num = second_num.to_i
elsif num_type == "f"
  first_num = first_num.to_f
  second_num = second_num.to_f
else
  print "That was not a valid command. Please try again: "
  num_type = gets.chomp
end


# CALCULATIONS------------------------------------------------------------------

# ADDITION
if (operation == "add") || (operation == "+")
  puts "#{ first_num } + #{ second_num } = #{ first_num + second_num }"

# SUBTRATION
elsif (operation == "sub") || (operation == "-")

  # Asks to confirm order
  print "Would you like to do: #{ first_num } - #{ second_num } (type \"1\") or #{ second_num } - #{ first_num } (type\"2\")? "
  order_of_oper = gets.chomp.to_i

  # User input error check
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\" or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end

  # Does calculation in correct order
  if (order_of_oper == 1)
    puts "#{ first_num } - #{ second_num } = #{ first_num - second_num }"
  elsif (order_of_oper == 2)
    puts "#{ second_num } - #{ first_num } = #{ second_num - first_num }"
  end

# MULTIPLICATION
elsif (operation == "mult") || (operation == "*")
  puts "#{ first_num } * #{ second_num } = #{ first_num * second_num }"

# DIVISION
elsif (operation == "div") || (operation == "/")

  # Asks to confirm order
  print "Would you like to do: #{ first_num } / #{ second_num } (type \"1\") or #{ second_num } / #{ first_num } (type\"2\")? "
  order_of_oper = gets.chomp.to_i

  # User input error check
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\" or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end

  # Does calculation in correct order
  # Also checks to make sure user isn't trying to divide by zero
  # Also gives remainder
  if (order_of_oper == 1)
    if (second_num == 0)
      puts "You cannot divide by zero. Sorry!"
    else
      if (first_num.class == Fixnum)
        remainder = first_num % second_num
        puts "#{ first_num } / #{ second_num } = #{ first_num / second_num } with a remainder of #{ remainder }."
      else
        puts "#{ first_num } / #{ second_num } = #{ first_num / second_num }"
      end
    end
  elsif (order_of_oper == 2)
    if (first_num == 0)
      puts "You cannot divide by zero. Sorry!"
    else
      if (first_num.class == Fixnum)
        remainder = second_num % first_num
        puts "#{ second_num } / #{ first_num } = #{ second_num / first_num } with a remainder of #{ remainder }."
      else
        puts "#{ second_num } / #{ first_num } = #{ second_num / first_num }"
      end
    end
  end

# POWERS
elsif (operation == "exp") || (operation == "^")

  # Asks to confirm order
  print "Would you like to do: #{ first_num } ^ #{ second_num } (type \"1\") or #{ second_num } ^ #{ first_num } (type\"2\")? "
  order_of_oper = gets.chomp.to_i

  # User input error check
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\" or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end

  # Does calculation
  if (order_of_oper == 1)
    puts "#{ first_num } ^ #{ second_num } = #{ first_num ** second_num }"
  else (order_of_oper == 2)
    puts "#{ second_num } ^ #{ first_num } = #{ second_num ** first_num}"
  end
end
