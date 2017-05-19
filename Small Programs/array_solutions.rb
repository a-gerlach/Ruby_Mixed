=begin
puts "Task 1:"
arr = [1, 3, 5, 7, 8, 11]
number = 3

puts arr.include?(number)

puts "--------------"
puts "Task 2: "
puts "1. Will return: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] "
puts "2. Will return: I did not understand this"

puts "--------------"
puts "Task 3: "
puts "arr.last.first"

puts "--------------"
puts "Task 4: "
puts "1. 3 , 2. error, 3. 8"

puts "--------------"
puts "Task5: "
puts "1. 'e', 2. 'A' 3. nil"

puts "--------------"
puts "Task 6: "
puts "We want to replace margaret with jode.
But we cannot do this with the method displayed.
We have to find the index of margaret (which is 3 and then
replace it with Judy. So the solution is: name[3]= 'jody'"
=end

puts "Task 7:"
a = [1, 2, 3]
b = a.map do |x|
  x + 2
end

p a 
p b