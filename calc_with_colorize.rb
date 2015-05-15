# maps strings to correct function type
require "colorize"

def calculate(operation, first, second)
  if operation == "add" || operation == "+" || operation == "addition"
    add(first, second)
  elsif operation == "subtract" || operation == "-" || operation == "subtraction"
    subtract(first, second)
  elsif operation == "multiply" || operation == "*" || operation == "multiplication"
    multiply(first, second)
  elsif operation == "divide" || operation == "/" || operation == "division"
    divide(first, second)
  elsif operation == "modulo" || operation == "%" || operation == "mod"
    modulo(first, second)
  elsif operation == "exponent" || operation == "^" || operation == "exp"
    exponent(first, second)
  end
end

# action of each type of math operation

def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def multiply(first, second)
  first * second
end

def divide(first, second)
  first / second
end

def modulo(first, second)
  first % second
end

def exponent(first, second)
  first ** second
end

# map string to correct title of operation
def op_name(operation)
  if operation == "add" || operation == "+" || operation == "addition"
    return "addition"
  elsif operation == "subtract" || operation == "-" || operation == "subtraction"
    return "subtraction"
  elsif operation == "multiply" || operation == "*" || operation == "multiplication"
    return "multiplication"
  elsif operation == "divide" || operation =="/" || operation == "division"
    return "division"
  elsif operation == "modulo" || operation =="%" || operation == "mod"
    return "modulo"
  elsif operation == "exponent" || operation =="^" || operation == "exp"
    return "exponent"
  end
end

# map string to correct symbol of operation
def op_sym(operation)
  if operation == "add" || operation == "+" || operation == "addition"
    return "+"
  elsif operation == "subtract" || operation == "-" || operation == "subtraction"
    return "-"
  elsif operation == "multiply" || operation == "*" || operation == "multiplication"
    return "*"
  elsif operation == "divide" || operation =="/" || operation == "division"
    return "/"
  elsif operation == "modulo" || operation =="%" || operation == "mod"
    return "%"
  elsif operation == "exponent" || operation =="^" || operation == "exp"
    return "^"
  end
end

# Giving user instructions about what strings will be accepted to execute operation
  puts "Hello There, Welcome to the Calculator!"

  puts "Tell me the type of math you want to perform please."

  puts "For Addition type 'add' or '+' or 'addition'."

  puts "For Subtraction type 'subtract' or '-' or 'subtraction'."

  puts "For Muliplication type 'multiply' or '*' or 'multiplication'."

  puts "For Division type 'divide' or '/' or 'division'."

  puts "For Modulo type 'modulo' or '%' or 'mod'."

  puts "For Exponent type 'exponent' or '^' or 'exp'."

  operation = gets.chomp

  puts "Ok, so you want to perform #{op_name(operation)}, Sounds Good! What is your first number?"
  first = gets.chomp.delete(",")

  puts "Alright, your first number is #{first}. What is your second number?"
  second = gets.chomp.delete(",")

  puts "Ok got it! Your second number is #{second}.
So the calculation you want is: #{first} #{op_sym(operation)} #{second}."

  answer = calculate(operation, first.to_f, second.to_f)
    if answer.nil?
      puts "Error!".red.blink
      puts "the operation '#{operation}' isn't in this calculator."
      puts "Let\'s have you start again."
      exit
    else
      puts "To answer your query: #{first} #{op_sym(operation)} #{second} = #{answer}".white.on_red.blink
    exit
    end
