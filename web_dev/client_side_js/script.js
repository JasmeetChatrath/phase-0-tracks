function makeBorder(event) {
  event.target.style.border = "1px solid black";
}

var img = document.getElementsById("puppy");
img.addEventListener("click", makeBorder);