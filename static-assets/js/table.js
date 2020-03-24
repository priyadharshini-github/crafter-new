$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  $('link').on("click", function() {
    	window.location.href = "https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0";
    });
    $('a.display-block').click(function () {
        $.ajax({
		type: "POST",
		url: "https://api.rakutenmarketing.com/coupon/1.0?mid=44543",
		headers: {
			"Authorization": "Bearer a5865b14e1b4ecd5944921cc88b8ff7"
		},
		success: function (res) {
			console.log("data", res);
		},
		error: function(errorThrown){
         alert(errorThrown);
      }
	});
	
    });
});



