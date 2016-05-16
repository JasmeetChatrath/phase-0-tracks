



puts "What is our spy's first name?"
first_name = gets.chomp.downcase
puts "What is our spy's last name?"
last_name = gets.chomp.downcase

first = first_name.split("")
last = last_name.split("")

def name(new_name)
new_name.map! do |letter|
  if letter == "a"
    letter.gsub!(/[a]/, "e")
    p letter
  elsif letter == "e"
    letter.gsub!(/[e]/, "i")
    p letter
  elsif letter == "i"
    letter.gsub!(/[i]/, "o")
    p letter
  elsif letter == "o"
    letter.gsub!(/[o]/, "u")
    p letter
  elsif letter == "u"
    letter.gsub!(/[u]/, "a")
    p letter
  else
    p letter.next
  end
end
end

p name(last).join("").capitalize + " " + name(first).join("").capitalize

