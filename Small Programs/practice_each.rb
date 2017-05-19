=begin
names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end


def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)
=end

def fibanocci(number)
  if number < 2
    number
  else
    fibanocci(number - 1) + fibanocci(number - 2)
  end
end
puts fibanocci(5)