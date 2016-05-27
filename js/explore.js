/*
create a function reverse that takes a string as a parameter
use a for loop that begins at the end of our string
iterate backwards through each string and print until we reach the length of our string
call our function with an arguement
*/

function reverse(string) {
  var newString = '';
  for (var i = string.length - 1; i >= 0; i--)
    newString += string[i];
  return newString;
};

var reverseString= reverse('hello');
if (5 > 4) {
  console.log(reverseString);
}

