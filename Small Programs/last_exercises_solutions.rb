puts "Task 1:"
a = [1, 2, 3, 4, 5 ,6, 7, 8, 9 ,10]

a.each do |x|
  puts x
end

puts "Task 2: "

a.each do |x|
  if x > 5
    puts x
  end
end

puts "Task 3: "
new_arr = a.select do |x|
  if !x.even? # This is just for fun to see that not even is the same 
                # as odd
    x
  end
end

p new_arr

puts "Task 4: "

a << 11
a.unshift(0)
p a

puts "Task 5: "
a.pop
a << 3
p a

puts "Task 6: "
a.uniq!
p a

puts "Task 7: "
puts "An Array is ordered. A Hash is not ordered. 
A Hash has key/value pairs. An array does not."

puts "Task 8: "
h1 = {:name => "Adrian"} 
h2 = {name: "Adrian"}

puts "Task 9: "
h = {a: 1, b:2, c:3, d:4}
puts "1. " + h[:b].to_s
puts "2. " 
h[:e] = 5
p h

puts "3. "
h.delete_if {|key, value| value < 3.5}
p h

puts "Task 10:"
puts "Yes array values can be in Hashes. Example: "
hash_arr = {values: [1, 2, 3, ]}
p hash_arr
puts "Yes hashes can be stored in arrays. Example: "
arr_hash = [{a: 1, b:2}, {c: 3, b:4}]
p arr_hash

puts "Task 12: "
contact_data = [["joe@email.com", "123 Main st.", "55-123-4567"],
["sally@gmail.com", "404 Not found Dr.", "123- 234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data.first.first
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data.first.last
contacts["Sally Johnson"][:email] = contact_data.last.first
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data.last.last
p contacts

puts "Task 13: "
puts "This is Joe's phone e-mail: " + contacts["Joe Smith"][:email]
puts "This is Sally's phone number: " + contacts["Sally Johnson"][:phone]

puts "Task 14: "
contact_data = ["joe@email.com", "123 Main st.", "55-123-4567"]
contacts = {"Joe Smith" => {}}
b = contact_data.each do |x|
  contacts["Joe Smith"][:new] = x
  
end
p b

contacts = contact_data.shift(3)
puts "Task 15: "
arr = ['snow', 'winter','ice','slippery','salter roads', 'white trees']
arr.delete_if {|x| x.start_with?("s")}
puts "Solution to the first part: "
p arr 

arr = ['snow', 'winter','ice','slippery','salter roads', 'white trees']
arr.delete_if {|x| x.start_with?("s") || x.start_with?("w")}
puts "Solution second part: "
p arr 

puts "Task 16: "
a = ['white snow', 'winter wonderland', 'melting ice',
 'slippery sidewalk', 'salted road', 'white trees']
 a.map! do |x|
  x.split

 end
a.flatten!
p a

puts "Task 17: "
puts "These hashes are the same!"