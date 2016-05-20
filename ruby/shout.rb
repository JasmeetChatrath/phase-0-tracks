=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end
  def self.yelling_happily(words)
    words + "!!!" + ":)"
  end
end
require_relative 'shout'
Shout.singleton_methods
p Shout.yelling_happily("I figured out the challenge")
p Shout.yell_angrily("I'm so confused")
=end

module Shout
  def yelling_happily(words)
    p words + "!!!" +":)"
  end
  def yelling_angerly(words)
    p words + "!!!" + ":("
  end
end

class Mom
  include Shout
end

class Officer
  include Shout
end

mom1 = Mom.new
mom1.yelling_angerly("Put away your dishes")
mom1.yelling_happily("Good job")

officer1 = Officer.new
officer1.yelling_angerly("Get out of the car")
officer1.yelling_happily("Just kidding")