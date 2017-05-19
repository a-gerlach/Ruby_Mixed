=begin
3.times do 
  puts "Hello World!"
  puts "This is the second line."
  true
end


def block_method
  puts "This is the forst line in block_method"
  yield
  yield
  puts "This is after the yiled keyword."
end

block_method do 
  puts "This statement is called form the block."
end

block_method



#block_arguments.rb

def get_name(prompt, &block)
  print prompt + ": "
  name = gets.chomp
  print "Age: "
  age = gets.chomp 
  yield name, age if block_given?
  name
end

my_name = get_name("Enter you name") do |your_name, age|
  puts "That is a cool name, #{your_name}!"
  puts "You are #{age} years old."
end

puts "my_name: #{my_name}"



# benchmarker

class SimpleBenchmarker
  def run(description, &block)
    start_time = Time.now
    block.call
    end_time = Time.now
    elapsed = end_time - start_time
    puts "\n"
    puts "#{description} results:"
    puts "Elapsed time: #{elapsed} seconds"
  end

end

benchmarker = SimpleBenchmarker.new
benchmarker.run("Sleep a random amount of time") do
  5.times do
    print "."
    sleep(rand(0.1..1.0))
  end
end

=end

# My_Array

class MyArray
  attr_reader :array

  def initialize
    @array = ["car"]
  end

  def push(item)
    array.push(item)
  end

  def each(&block)
    i = 0
    while i < array.length
      block.call(array[i])
      i += 1
    end
    array

  end
end

my_array = MyArray.new
my_second_array = MyArray.new
my_array.push(1)
my_array.push(2)

my_array.each {|item| puts "item: #{item}"}

my_second_array.each{|i| puts "This is you favorite item in the world: #{i}"}



