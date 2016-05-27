/*
create a function reverse that takes a string as a parameter
use a for loop that begins at the end of our string
iterate backwards through each string and print until we reach the length of our string
call our function with an arguement
*/

var reverse = function(string) {
  for (var i = string.length; i < 0; i--) {
    console.log(i);
  }
};

var newString = reverse("hello");
console.log(newString);