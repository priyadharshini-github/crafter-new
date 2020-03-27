function showtoast() {
  var x = document.getElementByClassName("toast");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}