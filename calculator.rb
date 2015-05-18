# checks if user input is a number and not nil
# prompts for new input if invalid
# doesn't accept valid operators
def check_input(input)
  valid = false

  while !valid
    if input == " " || !([0,1, 2, 3, 4, 5, 6, 7, 8, 9].include?(input))
      puts "That's not valid. Please try again."
      input = gets.chomp
    else
      valid = true
      return input
    end
  end
end

# accepts nil - BAD
puts "Hello!\nWhat operation would you like to perform?"
operation = check_input(gets.chomp)

puts "Great. What's the first number you'd like to use?"
num1 = check_input(gets.chomp).to_i

puts "Awesome! And the second?"
num2 = check_input(gets.chomp).to_i


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
  # The `puts` at the end is printed after this line
  # This pseudo-error should terminate the program
  puts "Oops, that's not an operation. Try again."
end

puts "\n#{num1} #{operation_sym} #{num2} = #{answer}"
