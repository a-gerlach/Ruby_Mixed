module Fetcher
  def fetch(item)
    puts "I'll bring that #{item} right back!"
  end
end

class Dog
  attr_accessor :name
  include Fetcher
  def initialize(name)
    @name = name
  end
end

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end


dog = Dog.new("Fido")
dog.fetch("ball")
puts dog.name

cat = Cat.new("Minnie")
cat.fetch("Mouse")