=begin
print "Exit the program? (yes or no?): "
asnwer = gets.chomp
case asnwer
when "yes"
  puts "Good-bye!"
  exit
when "no", "nope"
  puts "OK, we'll continue"
else
  puts "Thats an unknown asnwer -- assuming you meant 'no' "
end
puts "Continuing with program..."

n = 1
loop do 
  n = n + 1
  next unless n == 10
  break
end


n = 1
while n < 11
  puts n
  n = n + 1

end
puts "Done!"

n = 1
n = n + 1 until n == 10
puts "We have reach 10!"




class Array
  def my_each
    c = 0
    until c == size
      yield (self[c])
      c += 1
    end
    self
  end
end

array = [1, 2, 3, 4, 5]
array.my_each {|e| puts "The block just got handed #{e}."}

name = ["David", "Alan", "Black"]
puts (name.map {|name| name.upcase})



def block_scope_demo
  x = 100
  1.times do 
    puts x
  end
end
block_scope_demo

=end

def block_local_parameter
  x = 100
  [1, 2, 3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it\'s now #{x}"
  end
  puts "Outer x is still #{x}"
end

block_local_parameter