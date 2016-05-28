/*
create a longest phrase function that takes an array as a parameter
iterate through the array and check length of each string
create longest default to zero
IF string is larger than longest set that string to longest
*/
function longestPhrase(array) {
  longest = 0
  for(var i = 0; i < array.length; i++) {
    if(array[i].length > longest) {
      longest = array[i].length;
      console.log(longest = array[i]);
    }
  };
}

/*
create a keyMatch function and have it take two objects as parameters
*/

function keyMatch(obj1, obj2) {
  obj1Key = Object.keys(obj1);
  obj2Key = Object.keys(obj2);
  for  ( i = 0; i < keysObj1.length ; i++) {
    if( obj1Key === obj2Key) {
      return true;
    } else {
      return false;
    }
}

longestPhrase(["Linda", "Bob", "Tim"]);
//keyMatch({name: "Tamir", age: 54}, {name: "Tamir", age: 54});

