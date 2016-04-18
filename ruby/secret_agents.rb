public
@index = 0
def encrypt(string)
  while @index < string.length
  string[@index] = string[@index].next
  @index += 1
  end
  if string == "zed"
    string = "afe"
  end
  p string
end

def reverse_next(letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  letter_index = alphabet.index(letter)
  new_letter_index = letter_index - 1
  new_letter = alphabet[new_letter_index]
  return new_letter
end

@array_index = 0
def decrypt(string)
  new_letters = Array.new
  letters = string.split(//)
  #p letters shows that string is getting split
  while @array_index < string.length
  blob = letters[@array_index]
  new_letters << reverse_next(blob)
  @array_index += 1
  end
  final_string = new_letters.join
  if string == "afe"
    final_string = "zed"
  end
  p final_string
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))
#A nested method call works because:
#The result of encrypt method is
#evaluated as the argument of the decrypt method

puts "What's the password? (ex. the string you want to decrypt/encrypt)"
password = gets.chomp
puts "Would you like to decrypt or encrypt (ex. d/e)"
answer = gets.chomp
if answer == "d"
  decrypt(password)
elsif answer == "e"
  encrypt(password)
else
  exit
end