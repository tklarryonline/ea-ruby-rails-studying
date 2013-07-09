#!/usr/bin/ruby
# My god this is my first ruby-shell program

=begin
and also my first block comment too!
=end
class Greeter
  def initialize name
    @name = name
  end

  def name
    @name
  end

  def name= new_name
    @name = new_name
  end
end

g = Greeter.new("Larry")
puts g.name
g.name = "Luan"
puts g.name
