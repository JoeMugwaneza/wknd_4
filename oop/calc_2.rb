# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Common_functions
   def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end 
end 


class SimpleCalculator
  include Common_functions
end

class FancyCalculator
  include Common_functions

  def square_root(number)
    Math.sqrt(number)
  end

end
# Write your own driver code below:

calculator = FancyCalculator.new
addition = calculator.add(10, 2)
subtraction = calculator.subtract(10, 2)
multiplication = calculator.multiply(10, 2)
division = calculator.divide(10, 2)
inverse = calculator.square_root(4)


puts "TESTING SimpleCalculator..."
puts

result = addition

puts "Your method returned:"
puts result
puts

if result == 12
  puts "PASS!"
else
  puts "F"
end

result = subtraction

puts "Your method returned:"
puts result
puts

if result == 8
  puts "PASS!"
else
  puts "F"
end
result = multiplication

puts "Your method returned:"
puts result
puts

if result == 20
  puts "PASS!"
else
  puts "F"
end

result = division

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

result = inverse

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end