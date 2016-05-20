=begin
Pseudocode
Create a class called dance
Add initialize method with data types name and dance style
Add dance rating to initialize set to a value
Create sway hips, kick, and spin methods
Add string with name and dance style to sway hips.  Add string with sway hips action.
Have kick method take a parameter and kick that amount of times.
Have spin method take a parameter and spin that amount of times. Add string in spin method that prints out rating.
=end

class Dance
  attr_reader :dance_style
  attr_accessor :name
  def initialize(name, dance_style)
    puts "Initalizing dance class ..."
    @name = name
    @dance_style = dance_style
    @dance_rating = 10
  end
  def sway_hips
    puts "Are you ready to get started #{@name}?!  We will do a #{@dance_style} routine today."
    puts "Start by swaying your hips left to right."
    puts "What a great warm up!"
  end
  def kick(num)
    puts "We are about to get nutty!"
    puts "Lets kick!"
    puts "*kick* " * num
  end
  def spin(num)
    puts "*spin* " * num
    puts "Great job! Your dance score is a #{@dance_rating}"
  end
end

dance1 = Dance.new("Jasmeet", "Jazz")
dance1.sway_hips
dance1.kick(5)
dance1.spin(30)

dances = []
puts "Let's add instances!"
while true
  puts "Enter the dancer's name."
  dancers_name = gets.chomp

  if dancers_name == "done"
    break
  end
  puts "Whats type of dance would you like to do today? Ex: jazz, tap, hip-hop"
  dance_style = gets.chomp
  puts "How many times would you like to kick?"
  kick = gets.chomp.to_i
  puts "How many times would you like to spin?"
  spin = gets.chomp.to_i

  dance2 = Dance.new(dancers_name, dance_style)
  p dance2.sway_hips
  p dance2.kick(kick)
  p dance2.spin(spin)
  dances << dance2
end
p dances