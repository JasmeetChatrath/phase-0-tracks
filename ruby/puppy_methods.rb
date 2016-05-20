
class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
    integer.times {puts "Woof!"}
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(human_years)
    puts human_years/7
  end
  def play_dead
    puts "*plays dead*"
  end
end

yogi = Puppy.new
yogi.fetch("frisby")
yogi.speak(3)
yogi.roll_over
yogi.dog_years(26)
yogi.play_dead

