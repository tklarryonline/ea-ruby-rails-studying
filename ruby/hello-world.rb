#!/usr/bin/ruby
# My god this is my first ruby-shell program

=begin
and also my first block comment too!
=end
module Debug
  def whoAmI?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end

class Photograph
  include Debug

  def initialize name
    @name = name
  end

  def to_s
    @name
  end

end

class Other
  include Debug

  def initialize name
    @name = name
  end

  def to_s
    @name
  end

end

ph = Photograph.new("Luan")
ot = Other.new("Not Luan")

puts ph.whoAmI?
puts ot.whoAmI?
