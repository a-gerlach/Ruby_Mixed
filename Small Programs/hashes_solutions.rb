=begin
puts "Task 1:"
family = {uncles: ["bob", "joe", "steve"],
          sisters: ["janes", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
        }

x = family.select do |key, value|
  key == :sisters || key == :brothers
    
end

arr = x.flatten

p arr


puts "Task 2:"
h1 = { "a" => 100, "b" => 200}
h2 = { "b" => 254, "c" => 300}

puts "First we merge both hashes without the !"
p h1.merge(h2)
p h1
p h2
puts "As we can see the two arrays are still the same"

puts "Now we merge with the !"
puts "The two arrays have been permenantly altered into a new hash"
p h1.merge!(h2)
p h1
p h2


puts "Task 3: "
h1 = { "a" => 100, "b" => 200, "c" => 300}
puts "This the hash: #{h1} "
puts "These are all the keys: " 
h1.each {|k, v| puts k}
puts "These are all the values"
h1.each {|k, v| puts v}
puts "These are both: "
h1.each {|k, v| puts "The key is #{k} and the value is #{v}"}

puts "Task 4: "
puts "solution: person[:name]"
=end

puts "Task 5: " 
h1 = { "a" => 100, "b" => 200, "c" => 300}
puts "This is the hash: #{h1}"
p h1.has_value?(100)

puts "Task 7: "
puts "The first hash uses a symvol as a key and the second the string."

puts "Task 8: "
puts "In the ruby doc we can see that there is no 'keys' method
for the array class"