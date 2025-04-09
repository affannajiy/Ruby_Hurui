#Calculator App

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def multiply(x, y)
  x * y
end

def divide(x, y)
  if y == 0
    "Cannot divide by zero!"
  else
    x / y.to_f
  end
end

def calculator
  puts "Simple Ruby Calculator"
  puts "Enter the first number: "
  num1 = gets.to_f

  puts "Enter the second number: "
  num2 = gets.to_f

  puts "Choose an operation:"
  puts "1. Add"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"

  operation = gets.chomp

  case operation
  when "1"
    result = add(num1, num2)
    puts "The result of #{num1} + #{num2} = #{result}"
  when "2"
    result = subtract(num1, num2)
    puts "The result of #{num1} - #{num2} = #{result}"
  when "3"
    result = multiply(num1, num2)
    puts "The result of #{num1} * #{num2} = #{result}"
  when "4"
    result = divide(num1, num2)
    puts "The result of #{num1} / #{num2} = #{result}"
  else
    puts "Invalid operation choice!"
  end
end

#start
calculator