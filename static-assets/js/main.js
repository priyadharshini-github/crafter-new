function showtoast() {
  var x = document.getElementByClassName("toast");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

$(document).ready(function(){
  /*
  $("#mySubmit").click (function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  */
  
  $("#btnSearch").click (function() {
    var value = $(this).val().toLowerCase();
    alert(window.location.href);
    window.location.href = window.location.href + "/search-results?search=ebay";
    alert(window.location.href);
  });
});