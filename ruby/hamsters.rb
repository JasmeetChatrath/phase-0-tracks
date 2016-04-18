puts "What is the hamster's name?"
name = gets.chomp
name.capitalize!
puts "What is the hamster's volume level (on a scale of 1 to 10)?"
volume = gets.chomp
puts "What fur color does the hamster have? (ex: white, black, spotted)"
fur = gets.chomp
fur.capitalize!
puts "Is this hamster a good candidate for adoption? (yes/no)"
adoption = gets.chomp
if adoption == "yes"
  adoption = "is a good candidate for adoption"
else
  adoption = "is not a good candidate for adoption"
end
puts "What is the hamster's age?"
age = gets.chomp
if age.empty?
  age = nil
end
puts "#{name} is #{age} years old, has a volume level of #{volume}, and has #{fur} fur. \n #{name} #{adoption}."