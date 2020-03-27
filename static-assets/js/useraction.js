$(document).ready(function(){
	$('div.off').click(function () {
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
    
    	$('div.code').click(function () {
 		    var x = document.getElementById("toast");
          x.className = "show";
          setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
    	});
});