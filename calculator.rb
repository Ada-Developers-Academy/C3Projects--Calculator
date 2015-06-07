# ROOM FOR IMPROVEMENT
# Support parentheticals
# Support commas in longer numbers
# Allow for equation with more than 2 numbers
# Support square root
# Ask whether to end or continue after outputting result

# -------------
  addition = ["+", "add", "addition", "plus"]
  subtraction = ["-", "sub", "subtract", "subtraction"]
  multiplication = ["*", "multiply", "times"]
  division = ["/", "divide", "division"]
  exponent = ["^", "**", "power", "exponent", "exponents", "raise"]
  modulo = ["%", "modulo", "modulus", "remainder"]

  operators = addition + subtraction + multiplication + division + exponent + modulo

# CHECKS IF USER INPUT IS A VALID OPERATION
def get_operator(user_input, operators)

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
    return user_input = gets.chomp
  end

  return user_input
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
operation = get_operator(gets.chomp, operators)

puts "\nGreat. What's the first number you'd like to use?"
num1 = is_number?(gets.chomp)

puts "\nAwesome! And the second number?"
num2 = is_number?(gets.chomp)

# only asks for float/integer result if not using the exponent operator
# floats cannot be raised to any power
if !(exponent.include?(operation))
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
when *addition
  operation_sym = "+"
  answer = num1 + num2

when *subtraction
  operation_sym = "-"
  answer = num1 - num2

when *multiplication
  operation_sym = "*"
  answer = num1 * num2

when *division
  operation_sym = "/"
  if num2 == 0
    answer = "nothing! You can't divide by 0, silly."
  else
    # 'if' and 'elsif' are hard-coded to allow for
    # an answer with a remainder (as coded in 'else')
    if num2 > num1
        answer = num1.to_f / num2.to_f
    elsif num1 % num2 == 0
      answer = num1 / num2
    else
      answer = "#{num1 / num2} with a remainder of #{num1 % num2}"
    end
  end

when *exponent
  operation_sym = "^"
  working_number = 1
  # for as many times as the value of the power number
  num2.times do
    # multiply the base number by itself
    working_number *= num1
  end
  answer = working_number

when *modulo
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
