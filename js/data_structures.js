var colors = ["blue", "silver sparkles", "rainbow", "glow in the dark"];
var names = ["Rainy", "Peaches", "Buttercup", "Sugar Plum"];

colors.push("gold");
names.push("Cupcake");

var horseAssignment = {};
for (var i = 0; i < colors.length; i++) {
  horseAssignment[names[i]] = colors[i];
}
console.log(horseAssignment);

function Car(type, year, color) {
  console.log("Our new car:", this);

  this.type = type;
  this.year = year;
  this.color = color;

  this.start = function() {console.log("Vroooom vroom"); };
}

var newCar = new Car("Lexus", 2012, "white");
console.log(newCar);
newCar.start()
var secondCar = new Car("Nissan", 2002, "Grey");
console.log(secondCar);
secondCar.start()