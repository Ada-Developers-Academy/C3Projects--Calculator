# puts "Welcome to the BEST CALCULATOR EVER!"
#
# puts "May I have one number please?"
# num_one = gets.chomp.to_i
# puts "May I have another number please?"
# num_two = gets.chomp.to_i
#
#
# puts "What operation shall we perform with these numbers?"
# puts "add (+), sub (-), mult (*), div (/)"
# operation = gets.chomp
#
#
# if operation == "add"|| operation == "+"
#   then puts "Adding #{num_one} and #{num_two} equals #{num_one + num_two}"
# elsif operation == "sub"|| operation == "-"
#   then puts "Subtracting those two numbers equals #{num_one - num_two}"
# elsif operation == "mult" || operation == "*"
#   then puts "Multiplying those two numbers equals #{num_one * num_two}"
# elsif operation == "div" || operation == "/"
#   then puts "Dividing those two numbers equals #{num_one / num_two}"
# end
#
# puts " That was fun! Wanna try again?"
# puts "Please answer 'y' or 'n'"
# answer = gets.chomp

answer = "y"
while answer == "y"
  puts "Welcome to the BEST CALCULATOR EVER!"

  puts "May I have one number please?"
  num_one = gets.chomp.to_i
  puts "May I have another number please?"
  num_two = gets.chomp.to_i


  puts "What operation shall we perform with these numbers?"
  puts "add (+), sub (-), mult (*), div (/)"
  operation = gets.chomp


  if operation == "add"|| operation == "+"
    then puts "Adding #{num_one} and #{num_two} equals #{num_one + num_two}"
  elsif operation == "sub"|| operation == "-"
    then puts "Subtracting those two numbers equals #{num_one - num_two}"
  elsif operation == "mult" || operation == "*"
    then puts "Multiplying those two numbers equals #{num_one * num_two}"
  elsif operation == "div" || operation == "/"
    then puts "Dividing those two numbers equals #{num_one / num_two}"
  end

  puts " That was fun! Wanna try again?"
  puts "Please answer 'y' or 'n'"
  answer = gets.chomp
end
