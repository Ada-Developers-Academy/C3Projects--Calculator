# checks if user input is an operation
def is_operator?(user_input)
  operators = ["+", "add", "addition", "plus",
               "-", "sub", "subtract", "subtraction",
               "*", "multiply", "times",
               "/", "divide", "division",
               "^", "**", "power", "power of", "exponent", "exponents", "raise", "raised",
               "%", "modulo", "modulus", "remainder"]

  if user_input == ""
    puts "Um… you gotta enter *something*, bud. Try again.\n "
    abort
  elsif operators.include?(user_input) == false
    puts "Hey, now. We don't do that kind of math here.\n "
    abort
  else
    return user_input
  end
end

# checks if user input is a number
def is_number?(user_input)
  num = Integer(user_input) rescue false
  if  num == false
    puts "Hey! That's NaN! >:("
    abort
  else
    return user_input.to_i
  end
end

# accepts non-operations
puts "Hello!\nWhat operation would you like to perform?"
operation = is_operator?(gets.chomp)
puts "Great. What's the first number you'd like to use?"
num1 = is_number?(gets.chomp)
puts "Awesome! And the second?"
num2 = is_number?(gets.chomp)

# computes the equation
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
    answer = "nothing! You can't divide by 0, silly"
  else
    if num2 > num1
        answer = 0
    elsif num1 % num2 == 0
      answer = num1 / num2
    else
      answer = "#{num1 / num2} with a remainder of #{num1 % num2}"
    end
  end

when "^", "**", "power", "power of", "exponent", "exponents", "raise", "raised"
  operation_sym = "^"
  answer = num1 ** num2

when "%", "modulo", "modulus", "remainder"
  operation_sym = "%"
  answer = num1 % num2

else
  # Should terminate when incorrect operation is submitted
  # Check that this `abort` works
  puts "Oops, that's not an operation. Try again."
  abort
end

puts "\n#{num1} #{operation_sym} #{num2} = #{answer}"
