$(document).ready(function(){
    var merchantId = $("#hdMid").val();
    var merchantName = $("#hdMname").val();
    var offerDesc = $("#hdOfferDesc").val();
    var couponCode = $("#hdCouponCode").val();
    console.log(merchantId, merchantName);
//     $.ajax({
// 		"url": "http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/user/action/201",
//           "method": "POST",
//           "timeout": 0,
//           "headers": {
//             "Content-Type": "application/json",
//             "Authorization": "Basic dXNlcjE6cGFzc3dvcmQx",
//             "Accept": "application/json",
//           },
//           "data": {
//             	 "merchantId" : merchantId,
//             	 "merchantName" : merchantName,
//             	 "vendorId" : "1",
//             	 "userAction": "offerDetailsSeen",
//             	 "offerId": "124",
//             	 "offerDescription": offerDesc,
//             	 "couponCode": couponCode
//             },
//           dataType: 'json',
// 		success: function (res) {
// 			console.log("data", res);
// 		},
// 		error: function(errorThrown){
//      			alert(errorThrown);
//   		}
// 	});
    		
	$('div.off').click(function () {
        	$.ajax({
    			"url": "http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/user/action/201",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Content-Type": "application/json",
                    "Authorization": "Basic dXNlcjE6cGFzc3dvcmQx",
                    "Accept": "application/json",
                  },
                  "data": "{\r\n\t \"merchantId\" : 1,\r\n\t \"merchantName\" : \"iCheapFlight\",\r\n\t \"vendorId\" : \"1\",\r\n\t \"userAction\": \"storeUrlClicked\",\r\n\t \"offerId\": \"124\",\r\n\t \"offerDescription\": \"20% Discount upto 20$\",\r\n\t \"couponCode\": \"DTRIP20\"\r\n}",
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
    	    var moffers = $(this).data('moffers');
            console.log(moffers);
 		    var x = document.getElementById("toast");
            x.className = "show";
            setTimeout(function(){ 
                x.className = x.className.replace("show", ""); 
                $.ajax({
    			"url": "http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/user/action/201",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Content-Type": "application/json",
                    "Authorization": "Basic dXNlcjE6cGFzc3dvcmQx",
                    "Accept": "application/json",
                  },
                  "data": "{\r\n\t \"merchantId\" : 1,\r\n\t \"merchantName\" : \"iCheapFlight\",\r\n\t \"vendorId\" : \"1\",\r\n\t \"userAction\": \"couponCodeAvailed\",\r\n\t \"offerId\": \"124\",\r\n\t \"offerDescription\": \"20% Discount upto 20$\",\r\n\t \"couponCode\": \"DTRIP20\"\r\n}",
                  dataType: 'json',
    			success: function (res) {
    				console.log("data", res);
    			},
    			error: function(errorThrown){
             			alert(errorThrown);
          		}
    		});
            }, 1000);
    	});
});