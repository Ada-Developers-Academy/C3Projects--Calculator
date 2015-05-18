# ROOM FOR IMPROVEMENT
# Support parentheticals
# Support commas in longer numbers
# Allow for equation with more than 2 numbers
# Support square root
# Ask whether to end or continue after outputting result

# -------------

# CHECKS IF USER INPUT IS A VALID OPERATION
def is_operator?(user_input)
  operators = ["+", "add", "addition", "plus",
               "-", "sub", "subtract", "subtraction",
               "*", "multiply", "times",
               "/", "divide", "division",
               "^", "**", "power", "exponent", "exponents", "raise",
               "%", "modulo", "modulus", "remainder"
  ]

  if operators.include?(user_input)
    return user_input
  else
    while !(operators.include?(user_input))
      # conditional informs user of the type of error
      if user_input == "" # nil
        puts "\nUm… you have to enter *something*, bud."
      else
        # if user_input is a word or unknown symbol
        puts "\nHey, now. We don't do that kind of math here."
      end

      # prompts user for valid operator
      print "Let's try that again. What operator would you like to use? "
      user_input = gets.chomp
    end
  end
end

# CHECKS IF USER INPUT IS A NUMBER
def is_number?(user_input)
  number = false

  while number == false
    # checks if user_input is an integer or a float
    number = Integer(user_input) rescue false || Float(user_input) rescue false
    # conditional informs user of the type of error
    if !number
      puts "\nHey! That's NaN! >:("
    else
      return user_input.to_f
    end

    # prompts user for valid number
    print "Let's try that again. What number would you like to use? "
    user_input = gets.chomp
  end
end

# CONSOLE PROMPTS
puts "\nHello! What operation would you like to perform: "
puts "Addition (+), Subtraction (-), Multiplication (*), Division (/), Exponents (^), or Modulo (%)?"
operation = is_operator?(gets.chomp)

puts "\nGreat. What's the first number you'd like to use?"
num1 = is_number?(gets.chomp)

puts "\nAwesome! And the second number?"
num2 = is_number?(gets.chomp)

# only asks for float/integer result if not using the exponent operator
# floats cannot be raised to any power
if !(["^", "**", "power", "exponent", "exponents", "raise"].include?(operation))
  puts "\nHow would you like your answer: Integer (i) or Float (f)?"
  answer_format = gets.chomp.downcase
  if answer_format == "integer" || answer_format == "i"
    num1 = num1.to_i
    num2 = num2.to_i
  end

else
  puts "\nNote: Your answer will always be an integer since exponents only work with whole numbers."
  num1 = num1.to_i
  num2 = num2.to_i
end


# COMPUTES THE EQUATION
case operation
when "+", "add", "addition", "plus"
  operation_sym = "+"
  answer = num1 + num2

when "-", "sub", "subtract", "subtraction"
  operation_sym = "-"
  answer = num1 - num2

when "*", "multiply", "times"
  operation_sym = "*"
  answer = num1 * num2

when "/", "divide", "division"
  operation_sym = "/"
  if num2 == 0
    answer = "nothing! You can't divide by 0, silly."
  else
    # 'if' and 'elsif' are hard-coded to allow for
    # an answer with a remainder (as coded in 'else')
    if num2 > num1
        answer = 0
    elsif num1 % num2 == 0
      answer = num1 / num2
    else
      answer = "#{num1 / num2} with a remainder of #{num1 % num2}"
    end
  end

when "^", "**", "power", "exponent", "exponents", "raise"
  operation_sym = "^"
  working_number = 1
  # for as many times as the value of the power number
  num2.times do
    # multiply the base number by itself
    working_number *= num1
  end
  answer = working_number

when "%", "modulo", "modulus", "remainder"
  operation_sym = "%"
  answer = num1 % num2

else
  # should never get to this because of is_operator?
  # kept as a fail safe
  puts "\nOops, that's not a valid operation. Start over."
  abort
end

# RESULT
puts "\n#{num1} #{operation_sym} #{num2} = #{answer}\n "
