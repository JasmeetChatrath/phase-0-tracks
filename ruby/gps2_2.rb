# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # default quantity will be set to 1
  #use split method to split string into an array
  #create grocery hash
  #loop through each item in the array to add to the hash
  #use the each method to loop through array and use hash["string"] to set each value to default quantity
  # print the list to the console [can you use one of your other methods here?] use print_list method to display values
# output: [what data type goes here, array or hash?] Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  #call our hash and input new item name and set it to 1 if no quantity is entered.  If a quantity is entered we will set it to that value.
# output:
  #hash with the added item and initial quantity

# Method to remove an item from the list
# input: item name to delete
# steps:
  #call item and use delete method to remove item
# output: updated hash

# Method to update the quantity of an item
# input: call item and new quatity desired
# steps:
  #find corresponding item in hash and update the value
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: hash
# steps:
  #loop through the hash using each and print into sentence
# output: sentances with our values

def create_list(list)
  $grocery_list = {}
  grocery_array = list.split(" ")
  grocery_array.each do |item|
    $grocery_list[item] = 1
  end
  p print_hash
end

def add_item(item, quantity)
 $grocery_list[item] = quantity
end

def remove_item(item)
  $grocery_list.delete(item)
end

def update_quantity(item, num)
  $grocery_list[item] = num
end

def print_hash
 $grocery_list.each do |item, quantity|
  puts "#{item}"
  puts "-----"
  puts "#{quantity}"
 end
end

create_list("carrots apples cereal pizza")
add_item("lemonade", 2)
add_item("tomatoes", 3)
add_item("onions", 1)
add_item("ice cream", 4)
remove_item("lemonade")
update_quantity("ice cream", 1)
