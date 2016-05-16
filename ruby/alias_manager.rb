list_of_names = []
while true

puts "What is our spy's first name?"
first_name = gets.chomp.downcase
if first_name == "done"
  break
end
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
    elsif letter == "z"
      letter.gsub!(/[z]/, "a")
    else
      p letter.next
    end
  end
end

spy_name =  name(last).join("").capitalize + " " + name(first).join("").capitalize
list_of_names << spy_name
original_name = first_name.capitalize + " " + last_name.capitalize
end


list_of_names.each do |name|
  puts "#{original_name}'s name is #{name}."
end

#the original_name doesn't reassign to the new input when looped.  Look into how to fix that.