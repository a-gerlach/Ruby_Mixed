puts "Task 1:"
def has_lab?(string)
  
  if /lab/.match(string)
    puts "We have a match. And the match is #{string}"
  else
    puts "No match here."
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

puts "Task 2:"
puts "This programm will print to the 
screen: Hello from inside the execute method!
The retunr value will be nil."

puts "Task 3: "
puts "Exception handling is a way for the programmer
to enter code that gets run when an exception happens.
It has the advantage of letting the programmer decided what happen 
when an error occurs. Also it lets the programm continue when 
it would normally be ended after an error."

puts "Task 4: "
def execute(&block)
  block.call
end

execute { puts "Hello from insdie the execute mthod!"}

puts "Task 5: "
puts "It does not run, because we forgot the & before the block parameter."