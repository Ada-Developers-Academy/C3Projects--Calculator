# This is for the Calculator exercise,
# our first exercise we turn in!
# Specifics: add, subtract, multiply and divide using two numbers

puts "Hello and welcome to Calculator."
puts "Please specify what type of math you'd like to do:"

math_operation = $stdin.gets.chomp.downcase

puts "Type your first number: "
first_num = $stdin.gets.chomp.to_i

puts "Now type in your second number: "
second_num = $stdin.gets.chomp.to_i

if (math_operation == "+") || (math_operation == "add") || (math_operation == "addition")
    print " #{first_num} + #{second_num} ="
    answer = first_num + second_num
  elsif (math_operation == "-") || (math_operation == "sub") || (math_operation == "subtract")
    print " #{first_num} - #{second_num} ="
    answer = first_num - second_num
  elsif (math_operation == "/") || (math_operation == "div") || (math_operation == "divide")
    print " #{first_num} / #{second_num} ="
    answer = first_num / second_num
  elsif (math_operation == "*") || (math_operation == "mul") || (math_operation == "multiply")
    print " #{first_num} * #{second_num} ="
    answer = first_num * second_num
  elsif (math_operation == "exp") || (math_operation == "^") || (math_operation == "exponent")
    print "#{first_num} ^ #{second_num} = "
    answer = first_num ** second_num
  elsif (math_operation == "%") || (math_operation == "mod") ||
    (math_operation == "modulo") || (math_operation == "modulus")
    print "#{first_num} % #{second_num} = "
    answer = first_num % second_num
  else
    puts "I am sorry, I don't understand."
end

print answer.to_f
