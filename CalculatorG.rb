# Project Calculator (gold)

puts "Choose from the list what operation you would like to do:\n "
puts " add (+)\n sub (-)\n mult (*)\n div(/)\n exponent (^, **)\n mod (%)"
user_input = gets.chomp

# Function for addition……………………………………………………………………………………………………………………………………………………
def add
    puts "Ok, lets do addition. Type in first number"
    first_number = gets.chomp
        while first_number != "0" && first_number.to_f == 0
          puts "Invalid input: type in a number "
          first_number = gets.chomp
        end
    first_number = first_number.to_f

    puts "Type in second number"
    second_number = gets.chomp
        while second_number != "0" && second_number.to_f == 0
          puts "Invalid input: type in a number: "
          second_number = gets.chomp
        end
    second_number = second_number.to_f

    puts "Your result should be:\n"
    puts "integer? then type: i, if float type f?"
    result_type = gets.chomp
         while result_type != "i" && result_type != "f"
          puts "Invalid input. For integer result type: i\n"
          puts "For float result type: f"
          result_type = gets.chomp
        end
    result = first_number + second_number

      if result_type == "i"
         puts "The result: #{first_number} + #{second_number} = #{result.to_i}"
      else
         puts "The result: #{first_number} + #{second_number} = #{result}"
      end
 end

# Function for subtraction……………………………………………………………………………………………………………………………………………
 def sub
     puts "Ok, lets do subtraction. Type in first number"
     first_number = gets.chomp
          while first_number != "0" && first_number.to_f == 0
            puts "Invalid input: type in a number "
            first_number = gets.chomp
          end
     first_number = first_number.to_f

     puts "Type in second number"
     second_number = gets.chomp
           while second_number != "0" && second_number.to_f == 0
             puts "Invalid input: type in a number "
             second_number = gets.chomp
           end
     second_number =second_number.to_f

     puts "Your result should be:\n"
     puts " integer (i) or float (f)?"
     result_type = gets.chomp
          while result_type != "i" && result_type != "f"
            puts "Invalid input. For integer result type: i\n"
            puts "For float result type: f"
            result_type = gets.chomp
          end
     result = first_number - second_number

       if result_type == "i"
          puts "The result: #{first_number} - #{second_number} = #{result.to_i}"
       else
          puts "The result: #{first_number} - #{second_number} = #{result}"
       end
 end

# Function for multiplication………………………………………………………………………………………………………………………………………
  def mult
      puts "Ok, lets do multiplication. Type in first number"
      first_number = gets.chomp
         while first_number != "0" && first_number.to_f == 0
           puts "Invalid input: type in a number "
           first_number = gets.chomp
         end
      first_number = first_number.to_f

      puts "Type in second number"
      second_number = gets.chomp
         while second_number != "0" && second_number.to_f == 0
           puts "Invalid input: type in a number "
           second_number = gets.chomp
         end
      second_number = second_number.to_f

      puts "Your result should be:\n"
      puts " integer (i) or float (f)?"
      result_type = gets.chomp
         while result_type != "i" && result_type != "f"
           puts "Invalid input. For integer result type: i\n"
           puts "For float result type: f"
           result_type = gets.chomp
         end
      result = first_number * second_number

      if result_type == "i"
         puts "The result: #{first_number} * #{second_number} = #{result.to_i}"
      else
         puts "The result: #{first_number} * #{second_number} = #{result}"
      end
 end

# Function for division……………………………………………………………………………………………………………………………………………………
 def div
    puts "Ok, lets do division. Type in first number"
    first_number = gets.chomp
       while first_number != "0" && first_number.to_f == 0
         puts "Invalid input: type in a number "
         first_number = gets.chomp
       end
    first_number = first_number.to_f

    puts "Type in second number"
    second_number = gets.chomp
       while second_number != "0" && second_number.to_f == 0
         puts "Invalid input: type in a number "
         second_number = gets.chomp
       end
   second_number = second_number.to_f

    puts "Your result should be:\n"
    puts " integer (i) or float (f)?"
    result_type = gets.chomp
       while result_type != "i" && result_type != "f"
         puts "Invalid input. For integer result type: i\n"
         puts "For float result type: f"
         result_type = gets.chomp
       end
    result = first_number / second_number

      if result_type == "i"
         puts "The result: #{first_number} / #{second_number} = #{result.to_i}"
      else
         puts "The result: #{first_number} / #{second_number} = #{result}"
      end
  end

# Function for exponent………………………………………………………………………………………………………………………………………………………
  def exponent
      puts "Type in the number (base)"
      base = gets.chomp
         while base != "0" && base.to_f == 0
           puts "Invalid input: type in a number "
           base = gets.chomp
         end
      base = base.to_f

      puts "Type in the exponent"
      exponent = gets.chomp
         while exponent != "0" && exponent.to_f == 0
           puts "Invalid input: type in a number "
           exponent = gets.chomp
         end
      exponent = exponent.to_f

      puts "Your result should be:\n"
      puts " integer (i) or float (f)?"
      result_type = gets.chomp
         while result_type != "i" && result_type != "f"
           puts "Invalid input. For integer result type: i\n"
           puts "For float result type: f"
           result_type = gets.chomp
         end
      result = base ** exponent

        if result_type == "i"
           puts "The result: #{base} ^ #{exponent} = #{result.to_i}"
        else
           puts "The result: #{base} ^ #{exponent} = #{result}"
        end
   end

# Function for module…………………………………………………………………………………………………………………………………………………………
  def mod
      puts "Type in first number"
      first_number = gets.chomp
         while first_number != "0" && first_number.to_f == 0
           puts "Invalid input: type in a number "
           first_number = gets.chomp
         end
     first_number = first_number.to_f

      puts "Type in second number"
      second_number = gets.chomp
      # Check if the user type any strings
         while second_number.to_f == 0 && second_number != "0"
               puts "Invalid input: type in a number "
               second_number = gets.chomp
         end
      # Check if the user type 0 or 0.0
         while second_number == 0 || second_number.to_f == 0.0
           puts "Choose different number from 0"
           second_number = gets.chomp
         end
      second_number = second_number.to_f

      puts "Your result should be:\n"
      puts " integer (i) or float (f)?"
      result_type = gets.chomp
         while result_type != "i" && result_type != "f"
           puts "Invalid input. For integer result type: i\n"
           puts "For float result type: f"
           result_type = gets.chomp
         end
      result = first_number % second_number

        if result_type == "i"
           puts "The result: #{first_number} % #{second_number} = #{result.i}"
        else
           puts "The result: #{first_number} % #{second_number} = #{result}"
        end
  end

if user_input == "add" || user_input == "+"
   add
elsif user_input == "sub" || user_input == "-"
   sub
elsif  user_input == "mult" || user_input == "*"
   mult
elsif user_input == "div" || user_input == "/"
   div
elsif user_input == "exponent" || user_input == "^" || user_input == "**"
   exponent
elsif user_input == "mod" || user_input == "%"
   mod
else
  %x{say Oops, invalid input}
end
