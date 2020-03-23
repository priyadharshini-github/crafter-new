$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  $('container').click(function () {
    	window.location.href = "https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0";
    });
});



