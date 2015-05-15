puts "Hello!\nWhat operation would you like to perform?"
operation = gets.chomp
# accepts non-Integers
puts "Great. What's the first number you'd like to use?"
num1 = gets.chomp.to_i
# accepts non-Integers
puts "Awesome! And the second?"
num2 = gets.chomp.to_i

# computes the equation
case operation
when "+", "add", "addition"
  answer = num1 + num2

when "-", "sub", "subtract", "subtraction"
  answer = num1 - num2

when "*", "multiply", "times"
  answer = num1 * num2

when "/", "divide", "division"
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

else
  puts "Oops, that's not an operation. Try again."
end

puts "The answer is #{answer}."
