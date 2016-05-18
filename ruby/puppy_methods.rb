class Puppy

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
  def initialize
    puts "Initializing new puppy instance..."
  end
end

Puppy.new.fetch("frisby")
Puppy.new.speak(3)
Puppy.new.roll_over
Puppy.new.dog_years(26)
Puppy.new.play_dead
#continue working on initialize