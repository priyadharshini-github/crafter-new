$(document).ready(function(){
	$('div.off').click(function () {
        	$.ajax({
    			type: "POST",
    			url: "http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/user/action/736",
    			headers: {
    				"Authorization": "Basic dXNlcjE6cGFzc3dvcmQx",
    				"Accept": "application/json"
    			},
    			crossDomain: true,
    			data: {
                     "MerchantID"	: "23456",
                     "MerchantName" : "iCheapFlight",
                     "VendorID" : "1",
                     "UserAction": "Code copied",
                     "OfferID": "124",
                     "OfferDescription": "20% Discount upto 20$",
                     "CouponCode": "DTRIP20",
                     "UserActionID": "1"
                    
    			},
    			dataType: 'json',
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