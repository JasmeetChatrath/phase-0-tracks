=begin
puts "How many employees will we be processing?"
employees = gets.chomp
employee_count = 0
def employee_survey
    puts "What's your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp
    puts "Where were you born?"
    born = gets.chomp
    puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
    garlic = gets.chomp
    puts "Would you like to enroll in the company's health insurance?"
    insurance = gets.chomp
correct_age = "26"
end

puts "List your allergies:"
while true
  allergies = gets.chomp
  allergy_list = Array.new
  allergy_list << allergies
  if allergies == "sunshine"
    puts "Probably a vampire."
    break
  end
  if allergies == "done"
    break
  end
end
puts allergy_list

while true
    if age == correct_age && (garlic == "yes" || insurance == "yes")
      puts "Probably not a vampire."
    elsif age != correct_age && (garlic == "no" || insurance == "no")
      puts "Probably a vampire."
    elsif age != correct_age && garlic == "no" && insurance == "no"
      puts "Almost certainly a vampire."
    elsif name == ("Drake Cula" || "Tu Fang")
      puts "Definately a vampire."
    else
      print "Results inconclusive."
    end
    employee_count += 1
    if employee_count == employees
      break
    end
    prints "Actually, never mind!  What do these questions have to do with anything?  Let's all be friends."
end


wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)
=end
puts "How many employees would you like to process?"
employees = gets.chomp
employee_count = 0

until employees.to_i ==  employee_count
  employee_count += 1

  puts "Name:"
  name = gets.chomp
  puts "Age:"
  age = gets.chomp
  puts "Year born:"
  born = gets.chomp
  puts "Our cafateria serves garlic bread.  Should we order some for you?"
  bread = gets.chomp
  puts "Would you like to enroll in our company's health insurance?"
  insurance = gets.chomp

  p correct_age = 2016 - born.to_i

  if age == correct_age && bread == "yes"
    puts "Probably not a vampire."
  elsif age != correct_age && (bread == "no" || insurance == "no")
    puts "Almost certainly a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definately a vampire."
  else
    puts "Results inconclusive."
  end

puts "List any allergies:"
  while true
    allergies = gets.chomp
    if allergies == "sunshine"
      puts "Probably a vampire."
      break
    end
    if allergies == "done"
      break
    end
  end
end

puts "Actually, never mind!  What do these questions have to do with anything? Let's all be friends."

wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)



