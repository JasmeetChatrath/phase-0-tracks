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
#input allergy loop
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
    break employee_count == employees
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
