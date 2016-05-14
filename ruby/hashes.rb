=begin
pseudocode

use puts to print question
assign variable to name using gets.chomp and convert the input to a symbol using .to_sym
create empty hash
enter users input using assignment operator
=end

puts "What is the client's age?"
age = gets.chomp.to_sym
puts "How many children does the client have?"
children = gets.chomp
puts "What decor theme does the client want?"
theme = gets.chomp
puts "When does the project need to be completed by? (ex: 06/20/2016)"
date = gets.chomp

client = {}
client[:age] = age
client[:children] = children
client[:theme] = theme
client[:date] = date

puts "Would you like to make any adjustments? (yes or no)"
answer = gets.chomp
if answer == "yes"
  puts "What question would you like to change?"
  change = gets.chomp
  puts "What would you like the new input to be?"
  new_answer = gets.chomp.to_sym
  if change == "age"
    client[:age] = new_answer
  elsif change == "children"
    client[:children] = new_answer
  elsif change == "theme"
    client[:theme] = new_answer
  elsif change == "date"
    client[:date] = new_answer
  else
    puts "Please enter valid variable:"
  end
elsif answer == "no"
  puts "Thank you.  Your survey has been submitted."
else
  puts "Please answer yes or no"
end


p client