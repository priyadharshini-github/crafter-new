$(document).ready(function(){
	$('div.off').click(function () {
        	$.ajax({
    			"url": "http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/user/action/23456",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Content-Type": ["application/json", "text/plain"],
                    "Authorization": "Basic dXNlcjE6cGFzc3dvcmQx",
                  },
                  "data": {
                	 "merchantId" : 2,
                	 "merchantName" : "iCheapFlight",
                	 "vendorId" : "1",
                	 "userAction": "Code copied",
                	 "offerId": "124",
                	 "offerDescription": "20% Discount upto 20$",
                	 "couponCode": "DTRIP20"
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
            setTimeout(function(){ x.className = x.className.replace("show", ""); }, 1000);
    	});
});