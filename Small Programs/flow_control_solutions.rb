=begin
puts "Task 1: "
puts "1. false, 2. false, 3. false 4. true, 5. true"



def all_caps(x)
  if x.length > 10
    puts x.upcase
  else
    puts x
  end
end

all_caps("Hellooooooo")



def number_betwwen(x)
  if x >= 0 && x <= 50
    puts "The number is between 0 and 50"
  elsif x >= 51 && x <= 100
    puts "The number is between 51 and 100"
  elsif x >= 100
    puts "The number is over 100"
  end      
end

number_betwwen(110)

puts "Task 4: "
puts "1. FALSE, 2. Did you get it right?, 3. Alright now!"

puts "Task 5:"

=end
def number_between(x)
  case 
  when x <= 50
    puts "The number is between 0 and 50"
  when x >= 51 && x <= 100
    puts "The number is between 51 and 100"
  when x >= 100
    puts "The number is over 100"
  else 
    puts "You entered a wrong number!"
  end      
end

number_between(70)

puts "Task 7: "
puts "The is no end statement to clode the if-statement. There need to be and end on line 6"