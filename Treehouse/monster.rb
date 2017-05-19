class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      scream: 0,
      scares: 0

    }
  end

  def say(&block)
    print "#{name} says...." 
    block.call
  end

  def scream(&block)
    actions[:scream] += 1
    print "#{name} scream! "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    print "#{name} scares you!"
    yield self if block_given?

  end

  def inspect
    "<#{name}, #{actions}>"
  end

  def print_scoreboard
    puts "---------------------------"
    puts "#{name} scoreboard"
    puts "---------------------------"
    puts "- Scream: #{actions[:scream]}"
    puts "- Scares: #{actions[:scares]}"

  end

end

monster = Monster.new("Fluffy")
monster.say {puts "Welcome to my home."}

monster.scream do
  puts "BOO!"
end

monster.scare do |m|
  puts "Go away!"
  puts m.inspect
end
monster.print_scoreboard