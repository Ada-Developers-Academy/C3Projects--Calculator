# prints question
puts "Ready to do some math?"
# deletes any spaces after the answer provided by the user
answer = gets.chomp

# ".downcase" takes user input makes it all lowercase
#  this accounts for any uppercase/lowercase form the word "yes" or "no"
# depending on user input, if one of the following is true it will prin the line below
if answer.downcase == "yes"
  puts "Alrighty then!"
elsif answer.downcase =="no"
# "\" escapes quotations, allowing for single quote within the string
  puts "Whelp, don\'t care!"
else puts "As if you had an option. HA!"
end

# creates a visual separation
puts "--" * 15

puts "Let\'s get some numbers to work with."
puts "Give me a number: "
# names each variable input by user and deletes spaces
first_num = gets.chomp
puts "And one more number: "
second_num = gets.chomp
puts "What operation would you like to perform?"
operation = gets.chomp

add = ["add", "+", "addition", "plus"]

puts "So the answer to your equation:"
# accounts for each type of operation and possible variations of names of those operations
if add.include?(operation)
# prints the equation followed by the answer
  puts "#{first_num} + #{second_num} = #{first_num.to_i + second_num.to_i}"
elsif operation == "subtract" || operation == "-" || operation == "subtraction" || operation == "minus"
  puts "#{first_num} - #{second_num} = #{first_num.to_i - second_num.to_i}"
elsif operation == "divide" || operation == "/" || operation == "division"
# calculates to a whole number only so that numbers < 0 are output as "0"
  puts "#{first_num} / #{second_num} = #{first_num.to_i / second_num.to_i}"
# uses modulus to show if there is a remainder in the answer
  remainder = first_num.to_i % second_num.to_i
  puts "with a remainder of #{first_num.to_i % second_num.to_i}."
# if there is a remainder (aka the remainder is NOT zero), it generates the answer as a float
  if remainder != 0
    puts "So more accurately, your answer is #{first_num.to_f / second_num.to_f}"
# if the remainder is zero, prints string below
  else puts "We're all done here!"
# ends the division block
  end
elsif operation == "multiply" || operation == "*" || operation == "multiplication"
  puts "#{first_num} * #{second_num} = #{first_num.to_i * second_num.to_i}"
else operation == "exponents" || operation == "^" || operation == "**" || "exponentials"
  puts "#{first_num} ^ #{second_num} = #{first_num.to_i ** second_num.to_i}"
# ends the overall operation block
end

puts "Yay math!!"
