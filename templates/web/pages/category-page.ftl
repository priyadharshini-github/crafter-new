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
		<script src="/static-assets/js/jquery.min.js"></script>
        <script src="/static-assets/js/table.js"></script>
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
</style>
	<body>
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
	    <div class="row">
	        <div class="col-3 center-align display-block border-r1">
	            <img class="img-fluid" src="/static-assets/images/130063_large.png" alt="" />
	        </div>
	        <div class="col-9">
	            <div class="offer-title">iCheapFlights</div>
	            <h6>Travel, Vacations, Flights, Lorem Ipsum categories</h6>
	        </div>
	    </div>
	    <hr>
	    <div class="row">
	        <div class="col-3 vertical-align center-align">
	            <span class="font-60 bold">15%</span><br> Cash back
	        </div>
	        <div class="col-9">
	            iCheapFlight merchant information will be displayed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. 
	        </div>
	    </div>
	    
	    <hr>
	    <div class="row offer-codebox">
	        <div class="col-3 vertical-align center-align">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Upto <span class="font-28 bold">20% OFF</span></a>
	        </div>
	        <div class="col-6 vertical-align font-14">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Discount One Way Flight Deals. Apply Promo Code TRIP20; Save up To $20 Off on All Flights!</a>
	        </div>
	        <div class="col-3 center-align display-block vertical-align">
	            <div class="code-css font-12"><a class="display-block no-uline black" href="https://google.com" target="_self" id="link">Copy Code: TRIP20</a></div>
	            <span class="red font-12">Expires in 1 Day, 2 hours!</span>
	        </div>
	    </div>
	    
	    <div class="row offer-codebox">
	        <div class="col-3 vertical-align center-align">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Upto <span class="font-28 bold">20% OFF</span></a>
	        </div>
	        <div class="col-6 vertical-align font-14">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Bargain Around the World Flight Deals. Save up To $20** Off with Promo Code – ATW20. Book Now!</a>
	        </div>
	        <div class="col-3 center-align display-block vertical-align">
	            <div class="code-css font-12">Copy Code: TRIP20</div>
	            <span class="blue font-12">Expires in 5 Days, 12 hours!</span>
	        </div>
	    </div>
	    
	    <div class="row offer-codebox">
	        <div class="col-3 vertical-align center-align">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Upto <span class="font-28 bold">20% OFF</span></a>
	        </div>
	        <div class="col-6 vertical-align font-14">
	            <a class="display-block no-uline black" href="https://google.com" target="_blank">Book Handpicked Flight Deals on I Cheap Flight. Save up To $40** Off with Promo Code – DEAL40. Book Now!</a>
	        </div>
	        <div class="col-3 center-align vertical-align">
	            <div class="code-css font-12">Copy Code: TRIP20</div>
	            <span class="grey font-12">Expiry : 10.06.2020</span>
	        </div>
	    </div>
	</section>
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