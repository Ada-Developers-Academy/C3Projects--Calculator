# Calculator program
# Goals 1) add, sub, mult, divide 2) take two numbers - as numbers and words - and operation
# 3) output answer

# Things to add: error message for entering numbers like "23/3"

# WELCOME----------------------------------------------------------------------
puts """Hello there! I am a calculator, below are the operations I know how to compute: \n
  ADDITION --> type \"add\" or \"+\"
  SUBTRATION --> type \"sub\" or \"-\"
  MULTIPLICATION --> type \"mult\" or \"*\"
  DIVISION --> type \"div\" or \"/\"
  POWERS --> type \"exp\" or \"^\"
  """
# QUESTIONS----------------------------------------------------------------------

print "What type of calculation would you like to do? "

# ASKS FOR OPERATION TYPE FROM USER
operation = gets.chomp.strip
# Prints error message if user types something that's not an accepted operation
while (operation != "add") && (operation != "+") && (operation != "sub") && (operation != "-") && (operation != "mult") && (operation != "*") && (operation != "div") && (operation != "/") && (operation != "exp") && (operation != "^")
  print "That is not an available command. Please enter a correct operation: "
  operation = gets.chomp.strip
end

# GETS FIRST NUMBER FROM USER - AS A STRING
print "What is your first number: "
first_num = gets.chomp

while first_num != "0" && first_num.to_i == 0
  print "Whoops! That is not a number. Please enter a number: "
  first_num = gets.chomp
end

# GETS SECOND NUMBER FROM USER - AS A STRING
print "What is your second number: "
second_num_s = gets.chomp

while second_num != "0" && second_num.to_i == 0
  print "Whoops! That is not a number. Please enter a number: "
  second_num = gets.chomp
end

# ASKS USER IF THEY WANT THEIR OUTPUT AS AN INTEGER OR FLOAT?
print "Would you like your answer as an integer or float? (type \"i\" for integer and \"f\" for float): "
num_type = gets.chomp

# converts the input numbers to either an integer or float
if num_type == "i"
  first_num = first_num_s.to_i
  second_num = second_num_s.to_i
else num_type == "f"
  first_num = first_num_s.to_f
  second_num = second_num_s.to_f
end


# CALCULATIONS------------------------------------------------------------------

# ADDITION
if (operation == "add") || (operation == "+")
  puts "#{ first_num } + #{ second_num } = #{ first_num + second_num }"
# SUBTRATION
elsif (operation == "sub") || (operation == "-")
  print "Would you like to do: #{ first_num } - #{ second_num } (type \"1\") or #{ second_num } - #{ first_num } (type\"2\")? "
  order_of_oper = gets.chomp.to_i
  # while loop checks to make sure 1 or 2 is entered for order of operations
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\ or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end
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
  print "Would you like to do: #{ first_num } / #{ second_num } (type \"1\") or #{ second_num } / #{ first_num } (type\"2\")? "
  order_of_oper = gets.chomp.to_i
  # while loop checks to make sure 1 or 2 is entered for order of operations
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\ or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end
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
  print "Would you like to do: #{ first_num } ^ #{ second_num } (type \"1\") or #{ second_num } ^ #{ first_num } (type\"2\")? "
  order_of_op = gets.chomp.to_i
  # while loop checks to make sure 1 or 2 is entered for order of operations
  while (order_of_oper != 1) && (order_of_oper != 2)
    print "That's not a valid command. Please enter a \"1\ or a \"2\": "
    order_of_oper = gets.chomp.to_i
  end
  if (order_of_op == 1)
    puts "#{ first_num } ^ #{ second_num } = #{ first_num ** second_num }"
  else (order_of_op == 2)
    puts "#{ second_num } ^ #{ first_num } = #{ second_num ** first_num}"
  end
end
