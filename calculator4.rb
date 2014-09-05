def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def exponent(num1, num2)
  num1 ** num2
end

def squareroot(num1, num2)
  Math.sqrt(num1)
end

calculator_on = true
while calculator_on
puts "Hi, there. What kind of math do you want to do right now?
  +: Addition
  -: Subtraction
  *: Multiplication
  ^: Find exponent
  √: Find square root"

calculatron = gets.chomp

if calculatron == "+" || calculatron == "Addition" || calculatron == "-" ||
calculatron =="Subtraction" || calculatron == "*" || calculatron == "Multiplication" ||
calculatron == "^" || calculatron == "Find exponent" || calculatron == "√" ||
calculatron == "Find square root"
  puts "All right!"
else
  abort("I'm sorry. I didn't get that. Exiting the program now.")
end

if calculatron == "+" || calculatron == "Addition" || calculatron == "-" ||
calculatron =="Subtraction" || calculatron == "*" || calculatron == "Multiplication" ||
calculatron == "^" || calculatron == "Find exponent"
    puts "What's your first number?"
    num1 = gets.chomp
    while num1.to_i.to_s != num1 do
      puts "Try again"
      num1 = gets.chomp
    end
    num1 = num1.to_i

    puts "Thanks. What's your second number?"
    num2 = gets.chomp
    while num2.to_i.to_s != num2 do
      puts "Try again"
      num2 = gets.chomp
    end
      num2 = num2.to_i

elsif calculatron == "√" || calculatron == "Find square root"
    puts "What's the number you want the square root of?"
    num1 = gets.chomp
      while num1.to_i.to_s != num1 do
        puts "Try again"
        num1 = gets.chomp
      end
    num1 = num1.to_i
end

case calculatron
when "+" || "Addition"
    response = add(num1, num2)
    puts "#{num1} + #{num2} = #{add(num1, num2)}"
    puts "Do you want to see the answer again as an
    1. Integer?
    2. Float?"
      int_or_float = gets.chomp
        if int_or_float == "1"
          puts "#{add(num1, num2).to_i}"
        elsif int_or_float == "2"
          puts "#{add(num1, num2).to_f}"
        end
when "-" || "Subtraction"
    response = subtract(num1, num2)
    puts "#{num1} - #{num2} = #{subtract(num1, num2)}"
    puts "Do you want to see the answer again as an
    1. Integer
    2. Float?"
      int_or_float = gets.chomp
        if int_or_float == "1"
          puts "#{subtract(num1, num2).to_i}"
        elsif int_or_float == "2"
          puts "#{subtract(num1, num2).to_f}"
        end
when "*" || "Multiplication"
    response = multiply(num1, num2)
    puts "#{num1} x #{num2} = #{multiply(num1, num2)}"
    puts "Do you want to see the answer again as an
    1. Integer?
    2. Float?"
      int_or_float = gets.chomp
        if int_or_float == "1"
          puts "#{multiply(num1, num2).to_i}"
        elsif int_or_float == "2"
          puts "#{multiply(num1, num2).to_f}"
        end
when "^" || "Find exponent"
    response = exponent(num1, num2)
    puts "#{num1}^#{num2} = #{exponent(num1, num2)}"
    puts "Do you want to see the answer again as an
    1. Integer?
    2. Float?"
      int_or_float = gets.chomp
        if int_or_float == "1"
          puts "#{exponent(num1, num2).to_i}"
        elsif int_or_float == "2"
          puts "#{exponent(num1, num2).to_f}"
        end
when "√" || "Find square root"
    response = Math.sqrt(num1)
    puts "√#{num1} = #{Math.sqrt(num1)}"
    puts "Do you want to see the answer again as an
    1. Integer?
    2. Float?"
      int_or_float = gets.chomp
        if int_or_float == "1"
          puts "#{Math.sqrt(num1).to_i}"
        elsif int_or_float == "2"
          puts "#{Math.sqrt(num1).to_f}"
        end

else
  puts "Hmm?"
end

puts "All right. Do you got #{response}. Now do you want to do anything else?
Yes (Y) or No (N)?"
  calculator_on = gets.chomp.downcase =="y"
end
