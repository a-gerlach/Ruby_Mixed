=begin
hash = {"red" => "ruby", "white" => "diamond", "green" => "emerald"}
hash.each.with_index {|(key, value), i|
  puts "Pair #{i} is: #{key}/#{value}"

  }
=end

array = ["the", "dog", "ate", "tdawdawdwhe", "cat"]
articles = array.values_at(0, 3)
puts articles