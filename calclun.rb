
# #Breakfast version

# #entire calculator placed in "while loop": while user continues to answer "y"
# #loop back, i.e. start the program over. No "n" value neccessary because of command.
# #literally reads:'while the user sleects y start over. Anything other than y, end. '

# answer = "y"
# while answer == "y"
#   puts "Welcome to the BEST CALCULATOR EVER!"

#   puts "May I have one number please?"
#   num_one = gets.chomp.to_i    #.to_i : " take user input, make it an integer."
#   puts "May I have another number please?"
#   num_two = gets.chomp.to_i


#   puts "What operation shall we perform with these numbers?"
#   puts "add (+), sub (-), mult (*), div (/)"
#   operation = gets.chomp

# #note to self: when using '&&' and '||' you must perform the entire operation 
# #on both sides of the function being requested. "Speak computer": Below literally
# #reads: " if operation equals add OR the operation equals +, then....adds them, etc."

#   if operation == "add"|| operation == "+"
#     then puts "Adding those two numbers equals #{num_one + num_two}"
#   elsif operation == "sub"|| operation == "-"
#     then puts "Subtracting those two numbers equals #{num_one - num_two}"
#   elsif operation == "mult" || operation == "*"
#     then puts "Multiplying those two numbers equals #{num_one * num_two}"
#   elsif operation == "div" || operation == "/"
#     then puts "Dividing those two numbers equals #{num_one / num_two}"
#   end

#   puts "That was fun! Wanna try again?"
#   puts "Please answer 'y' or 'n'"
#   answer = gets.chomp
# end

# Lunch version
# modifications from breakfast program: 
# 1) replaces statement "Adding these numbers..." with actual equation.
# 2) moves greeting outside of 'while...end' condition loop so it will not be 
#    repeated over and over again when/if user decides to try program multiple times. 


 puts "Welcome to the BEST CALCULATOR EVER!"

answer = "y"
while answer == "y"
 

  puts "May I have one number please?"
  num_one = gets.chomp.to_i                   #.to_i : " take user input, make it an integer."
  puts "May I have another number please?"
  num_two = gets.chomp.to_i


  puts "What operation shall we perform with these numbers?"
  puts "add (+), sub (-), mult (*), div (/)"
  operation = gets.chomp

# note to self: when using '&&' and '||' you must perform the entire operation 
# on BOTH sides of the function ("and, or, equals to") being requested. 
# "Speak computer": Below literally reads: 
# "if the operation equals add OR the operation equals +, then....adds ...., etc."

# question: could a hash be used to handle the entry of almost any version of
# how the operation is called? Thus eliminating repitition of current if..end condition? 
# e.g.  if operation == {add, addition, plus, +, subtract, times, *, multiply, etc. } 
# answer: no. Not quite sure why. tried to replace and suggestions with both hash and array,
# no luck :( Will revisit at a later date.  [error msg: unexpected ","]

  if operation == "add"|| operation == "+"
    then puts "#{num_one} + #{num_two} = #{num_one + num_two}"
  elsif operation == "sub"|| operation == "-"
    then puts "#{num_one} - #{num_two} = #{num_one - num_two}"
  elsif operation == "mult" || operation == "*"
    then puts "#{num_one} * #{num_two} = #{num_one * num_two}"
  elsif operation == "div" || operation == "/"
    then puts "#{num_one} / #{num_two} = #{num_one / num_two}"
  end

  puts "That was fun! Wanna try again?"
  puts "Please answer 'y' or 'n'"
  answer = gets.chomp
end


