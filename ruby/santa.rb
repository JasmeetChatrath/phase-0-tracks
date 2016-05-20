class Santa
  attr_reader  :ethnicity
  attr_accessor :gender, :age
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end
  def celebrate_birthday(age)
    puts age + 1
  end
  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking[-1] = name
  end
end

=begin
getter method
def age
  @age
end

def ethnicity
  @ethnicity
end

setter method
def gender=(new_gender)
  @gender = new_gender
end


=end
santa1 = Santa.new("female", "Indian")
santa1.speak
santa1.eat_milk_and_cookies("snikerdoodle")
santa1.celebrate_birthday(25)
santa1.get_mad_at("Vixen")

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do
  santa2 = Santa.new(genders.sample, ethnicities.sample)
  santa2.age = rand(141)
  p santa2.age
  p santa2.gender
  p santa2.ethnicity
end
