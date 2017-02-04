# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

supper_calculator = WhizBangCalculator.new
addition = supper_calculator.add(4, 3)
subtraction = supper_calculator.subtract(4, 3)
multiplication = supper_calculator.multiply(4, 3)
division = supper_calculator.divide(6, 3)
inverse = supper_calculator.square_root(4)
hypot = supper_calculator.hypotenuse(4, 3)
power = supper_calculator.exponent(4, 2)

puts "TESTING SimpleCalculator..."
puts

result = addition

puts "Your method returned:"
puts result
puts

if result == 7
  puts "PASS!"
else
  puts "F"
end

result = subtraction

puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end
result = multiplication

puts "Your method returned:"
puts result
puts

if result == 12
  puts "PASS!"
else
  puts "F"
end

result = division

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

result = hypot

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

result = power

puts "Your method returned:"
puts result
puts

if result == 16
  puts "PASS!"
else
  puts "F"
end