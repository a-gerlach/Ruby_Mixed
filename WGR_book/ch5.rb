=begin
puts "Top Level"
puts "self is #{self}"

class C

  puts "Class definintion block:"
  puts "self is #{self}"

  def self.x 
    puts "Class method C.x:"
    puts "self is #{self}"

  end

  def m
    puts "Instance method C#m:"
    puts "self is #{self}"
  end

end


obj = Object.new
def obj.show_me
  puts "Inside singleton method show_me of #{self}"
end
obj.show_me
puts "Back from call to show_me by #{obj}"
=

class C
  def C.no_dot 
    puts "As long as self is C, you can call this method with no dot."
  end
  no_dot
end
C.no_dot


class Person
  attr_accessor :first_name, :middle_name, :last_name
  def whole_name
    n = first_name + ' '
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end
david = Person.new
david.first_name = "David"
david.last_name = "Black" 
puts "David\'s whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David\'s new whole name: #{david.whole_name}"


class C
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts "And heres the instance variable @v, belonging to the #{self}"
  p @v 
  def show_var
    puts "Inside an instance method definition block. Here\'s self:"
    p self
    puts "And heres the instance variable @v, belonging to #{self}:"
    p @v 
  end
end
c = C.new
c.show_var


a = 0

def t
  puts "Top level method t"
end

class C
  a = 1
  def self.x
    a = 2
    puts "C.x; a = #{a}"
  end

  def m
    a = 3
    puts "C#m; a = #{a}"
  end

  def n
    a = 4
    puts "C#n, a = #{a}"
  end

  puts "Class scope: a = #{a}"
end

C.x
c = C.new
c.m
c.n 
puts "Top level: a = #{a}"


class C
  a = 1
  def local_a
    a = 2
    puts a
  end
  puts a
end

c = C.new
c.local_a


class C
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Heres the inspect-string for 'self': "
    p self
    puts "And here is a:"
    puts a 
    if recurse
      puts "Calling myself (recursion)..."
      x("Second value for a")
      puts "Back after recursion; here is a:"
      puts a
    end
  end
end
c = C.new
c.x("First value for a", true)

module M
  class C
    X = 2
    class D
      module N
        X = 1
      end
    end
  end
end

puts M::C::D::N::X 
puts M::C::X
=end

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")