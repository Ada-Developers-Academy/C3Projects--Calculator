#Brenna's calculator project
#Due 5/8/15
#Bronze + Silver + Gold + 1/2 Platinum (floats)

#greeting the user and offering them options
puts "\nHello there my name is Ti-Awesome-o \n
  I am here to help you with math!\n
  \n"
user_prompt=
  "What would you like to do?\n
  \tadd \t\t+ \n
  \tsubtract \t- \n
  \tmultiply \t* \n
  \tdivide \t\t/ \n
  \tremainder \t% \n
  \texponent \t^ \n"
puts user_prompt
#capturing user input for the operator
operator = gets.chomp

#if the user did not select one of the options given or mistyped, prompt them to try again
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "remainder", \
  "%", "exponent", "^"].include? operator
puts user_prompt
  operator = gets.chomp
  end

numerical = "\nWhat is your first number?\n
Please type a numerical value. \n
Example: \n
5 is a numerical value, five is not"
puts numerical
#capturing user input for the first number and making it an integer
number_1 = gets.chomp

#if the user typed anything other than a numerical value prompt them to try again
while number_1 != "0" && number_1.to_i == 0
  puts "\n#{number_1} is not a numerical value, please try again.\n"
    puts numerical
    number_1 = gets.chomp
end

if number_1.to_i < number_1.to_f
    number_1 = number_1.to_f
else number_1 = number_1.to_i
end

puts "\nWhat is your second number?\n"
#capturing user input for the second number and making it an integer
number_2 = gets.chomp

#if the user typed anything other than a numerical value prompt them to try again
while number_2 != "0" && number_2.to_i == 0
  puts "\n#{number_2} is not a numerical value, please try again.\n"
    puts numerical
    number_2 = gets.chomp
end

if number_2.to_i < number_2.to_f
    number_2 = number_2.to_f
else number_2 = number_2.to_i
end

#starting a case where we are focusing on the operator variable
case operator
#if the user typed in "add" or "+" the program will add their two numbers for them
when "add", "+"
  answer = number_1 + number_2
  #printing out the problem and answer for the user
  puts "#{number_1} \+ #{number_2} = #{answer}"

#if the user typed in "subtract" or "-" the program will subtract the second number from the first
when "subtract", "-"
  answer = number_1 - number_2
  puts "#{number_1} \- #{number_2} = #{answer}"

#if the user typed in "multiply" or "*" the program will multiply the two numbers
when "multiply", "*"
  answer = number_1 * number_2
  puts "#{number_1} \* #{number_2} = #{answer}"

#if the user typed in "subtract" or "-" the program will divide the first number by the second
when "divide", "/"
  answer = number_1.to_f / number_2.to_f
  #accounting for the fact that you can divide two integars and get a float as a result
  if answer.to_i == answer
    answer = answer.to_i
  end
  puts "#{number_1} / #{number_2} = #{answer}"

#if the user typed in "remainder" or "%" the program will give them the remainder left after the program divides number 1 by number 2
when "remainder", "%"
  answer = number_1 % number_2
  puts "#{number_1} % #{number_2} = #{answer}"

#if the user typed in "exponent" or "^" the program will give the result of the first number to the second number's power
when "exponent", "^"
  answer = number_1 ** number_2
  puts "#{number_1} ^ #{number_2} = #{answer}"

#if the user did not select one of the options given or mistyped prompt them to try again
else puts "Please type an operator from the list.\n
  \tadd \t\t+ \n
  \tsubtract \t- \n
  \tmultiply \t* \n
  \tdivide \t\t/ \n"
end

puts "Yay, math is so fun!!!"
