a = 5 # variable is initialized in the outer scope 

3.times do |n|
  a = 3 # is a accessible here, in an innner scope?
  b = 5 # b is initialzed in the inner scope
  
end

puts a
puts b