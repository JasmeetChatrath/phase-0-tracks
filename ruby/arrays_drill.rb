
array = Array.new
array += [1, 2, 3, 4, 5]
array.delete(3)
array.insert(2, 7)
array.shift
p "Does our array include 7?"
p array.include?(7)
p array

array2 = [7, 8, 9, 10]
new_array = array + array2
p new_array


def build_array(x, y, z)
  array = [x, y, z]
  p array
end

build_array(1, "two", nil)


def add_to_array(x, y)
  array = x << y
  p array
end

add_to_array([], "a")
add_to_array(["a", "b", "c", 1, 2], 3)

