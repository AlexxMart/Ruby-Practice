def addition(first, second)
  first.to_f + second.to_f
end

def subtraction(first, second)
  first.to_f - second.to_f
end

def multiplication(first, second)
  first.to_f * second.to_f
end

def division(first, second)
  first.to_f / second.to_f
end

puts "Calculator"
20.times { print "-" }
puts
puts "Enter the first number:"
first_number = gets.chomp
puts "Enter the second number:"
second_number = gets.chomp
puts "Select a type of operation to perform: 1 to add, 2 to subtract, 3 to multiply, and 4 to divide"
operation = gets.chomp

if operation == "1"
  puts "You selected Addition"
  puts "The result is: #{addition(first_number, second_number)}"
elsif operation == "2"
  puts "You selected Subtraction"
  puts "The result is: #{subtraction(first_number, second_number)}"
elsif operation == "3"
  puts "You selected Multiplication"
  puts "The result is: #{multiplication(first_number, second_number)}"
elsif operation =="4"
  puts "You selected Division"
  puts "The result is: #{division(first_number, second_number)}"
else
  puts "Invalid operaion"
end