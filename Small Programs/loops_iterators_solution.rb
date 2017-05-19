=begin 
puts "Task 1:"
puts "This method retuns the same array as before.
We are not saving anything here, also we are not putting
anything to the screen."


loop do 
  puts "This loop wont stop until you type stop"
  input = gets.chomp.upcase
  break if input == "STOP"
end



x = ["House", "Dog", "Car", "Child"]

x.each_with_index {|item, index|
  puts "#{item} has the index #{index + 1}"
}

=end

def down(x)
  puts x 
  if x > 0
    down(x - 1)
  end
end

down(26)