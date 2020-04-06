<#import "/templates/system/common/cstudio-support.ftl" as studio />
<html lang="en">
<head>
		<title></title>
		<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/static-assets/css/main.css" />
		<link rel="stylesheet" href="/static-assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
		<script src="/static-assets/js/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
		<script src="/static-assets/js/useraction.js"></script>
        <script>
        	function clickToCopy (element) {
                var $temp = $("<input>");
                $("body").append($temp);
                // $temp.val($(element).html()).select();
                $temp.val(element).select();
                document.execCommand("copy");
                $temp.remove();
                console.log("code copied");
            }
        </script>
	</head>
	<style>
	
	tr.hide-table-padding td {
  padding: 0;
}

.expand-button {
	position: relative;
}

.accordion-toggle .expand-button:after
{
  position: absolute;
  left:.75rem;
  top: 50%;
  transform: translate(0, -50%);
  content: '-';
}
.accordion-toggle.collapsed .expand-button:after
{
  content: '+';
}
.white-popup {
    position: relative;
    background: #FFF;
    padding: 20px;
    width: auto;
    max-width: 500px;
    margin: 20px auto;
}
</style>
	<body>
	<div id="toast">
	    <div class="toast-css"><span>Code Copied!</span></div>
	</div>
	<div class="container-fluid" v-cloak>
	    <div class="row">
	        <div class="col-12">
	            <img class="logo" src="/static-assets/images/sample-logo.png" alt="" />
	       </div>
	    </div>
	    <nav class="navbar navbar-expand-lg navbar-light blue-bg">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/signup">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
    
  </div>
</nav>
</div>	    

<div class="container" v-cloak>	 
    
	<section class="main-content">
	  <#assign merchantId = RequestParameters.mid>
	  
	  <input type="hidden" id="hdMid" value=${merchantId}>
	  
	  <#assign moffers = merchantOffers?eval>
      <#list moffers as mo>
	  <#if mo.merchant.mid == merchantId>
	    <div class="row">
	        <div class="col-3 center-align display-block border-r1">
	            <img class="img-fluid" src="/static-assets/images/rakuten1.png" alt="" />
	        </div>
	        <div class="col-9">
                <div class="offer-title">${mo.merchant.merchantName}</div>
                <h6>Travel, Vacations, Flights, Lorem Ipsum categories</h6>
	       </div>
	    </div>
	    
	    <hr>

	    <div class="row">
	        <div class="col-3 vertical-align center-align">
	            <span class="font-60 bold">${mo.cbOffer.commissionTerms} %</span><br> Cash back
	        </div>
	        <div class="col-9">
	            Merchant information will be displayed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. 
	        </div>
	    </div>
	    
	    <hr>
	    <#assign cpOffers = mo.couponOffers>
	    <#list cpOffers as co>
	    
	    <input type="hidden" id="hdOfferDesc" value=${co.offerDescription}>
	    <!-- <input type="hidden" id="hdOfferId" value=${co.offerId}> -->
	    <input type="hidden" id="hdCouponCode" value=${co.couponCode}>
	    
    	    <div class="row offer-codebox">
    	        <div class="col-3 vertical-align center-align off">
    	            <a class="display-block no-uline black" href=${co.clickUrl} target="_blank">Upto <span class="font-28 bold">${mo.cbOffer.commissionTerms}% OFF</span></a>
    	        </div>
    	        <div class="col-6 vertical-align font-14 off">
    	            <a class="display-block no-uline black" href=${co.clickUrl} target="_blank">Offer Description: ${co.offerDescription}. Apply Promo Code ${co.couponCode}; Save up To ${mo.cbOffer.commissionTerms}% Off !</a>
    	        </div>
    	        <div class="col-3 center-align display-block vertical-align">
    	            <div class="code-css font-12 code" data-moffers='${merchantOffers}'><button type="button" class="copy-code-btn" onclick="clickToCopy('${co.couponCode}')"> Copy Code: <span id="texttocopy">${co.couponCode}</span></button></div>
    	            <span class="red font-12">Expires by ${co.offerEndDate?date('yyyy-MM-dd')?string('dd MMM yyyy')}</span>
    	        </div>
    	    </div>
	    </#list>
	    
	    <hr>
	    
	       <div class="row disclaimer">
	        <div class="col-12">
	           <p> <strong>Shipping Policy</strong><br>
                Orders are shipped Monday to Friday. *Orders placed before 11:00 am PST will generally be shipped out on the same day. Orders placed after 11:00 am PST will generally be shipped out on the following day with the exception of orders placed on a Friday. Those orders will ship out on the following Monday or next Business day (if Monday is a holiday). You will be notified via email once your order has been shipped. Please note we do not offer weekend shipping.
                <br><br>
                <strong>Tax Policy</strong><br>
                We charge sales tax for all online orders that are being shipped to locations in Alabama, California, Colorado, Connecticut, District of Columbia, Georgia, Hawaii, Illinois, Indiana, Iowa, Kentucky, Louisiana, Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Nebraska, Nevada, New Jersey, New York, North Carolina, North Dakota, Ohio, Oklahoma, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia, Wisconsin and Wyoming. Other states are not charged at this time.
                <br><br>
                <strong>Payment Policy</strong><br>
                We accept Visa, MasterCard, American Express, and Discover credit cards for payment.
                <br><br>
                <strong>Return </strong><br>
                We accept returns for items purchased on the online store that are received back within 30 days from the delivery date for a refund or store credit. Returns received back after 30 days from the delivery date will not be accepted. We do not process exchanges at this time. Please note that shipping charges are non-refundable. Once a return arrives at our warehouse, it will take us 10 to 14 business days to receive, inspect, and process. You will be notified via email once your return has been completed.<p>
	        </div>
	    </div>
	    <hr>
	    
	    <div class="row disclaimer">
	        <div class="col-12">
	          <p style="background: #f1f1f1; padding: 10px;"><strong>Disclaimer: </strong><br>
	          
	          You are about to enter a third party's website. The Company includes links to the websites of third party merchants. The Company is not responsible for these sites, nor for any goods, information or services supplied through or in connection with them. Use of, purchases on, and any personal data you give to those sites will be subject to the merchant's own Terms and Conditions, which you should also read carefully. Please note that by making a purchase with this third party, you agree that we may be passed information relating to your purchase which you provide as part of your transaction, which we will hold and use in accordance with our Privacy Policy.</p>
	        </div>
	    </div>
		
	</section>
	</#if>
  </#list>
</div>	
 
    <!-- jQuery library -->

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>


	<@studio.toolSupport/>
	</body>
</html>