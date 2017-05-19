loop do
  puts "Do you want to fo that again?"
  puts "Press'Y' for yes and 'N' for no"
  answer = gets.chomp.upcase
  if answer != "Y"
    break
  end
end