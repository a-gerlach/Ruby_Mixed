puts "Task 1"
def greeting(name)
   "Hello #{name}"
end
puts greeting("Adrian")

puts "---------------------"
puts "Task 2"
puts "The first expression evaluates to two"
puts "The second expression evaluates to nil"
puts "The third expression evaluates to 'Joe'"
puts "The fourth expression evaluates to 'four' "
puts "The fifth expression evaluates to nil"

puts "---------------------"
puts "Task 3: "
def multiply(a, b)
  a * b
end

puts "-----------------------"
puts "Task 4:"

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

puts "Task 6: This erro message tells me, that we have a method called 'calculate_products' with
two argument, but have only passed / provided one argument to the method"