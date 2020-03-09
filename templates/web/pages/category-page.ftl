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
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
	        <div class="col-2">
	            <img class="logo" src="/static-assets/images/rakuten.png" alt="" />
	        </div>
	        <div class="col-10">
	            <div class="offer-title">iCheapFlights</div><br>
	            <h6>Subtitle goes here</h6>
	        </div>
	    </div>
	    <hr>
	    <div class="row">
	        <div class="col-2">
	            <img class="logo" src="/static-assets/images/rakuten.png" alt="" />
	        </div>
	        <div class="col-10">
	            Sample text here
	        </div>
	    </div>
	    
	    <div class="row">
	        <div class="col-12">
	            
	        </div>
	    </div>
	    
	    <div class="row">
	        <div class="col-12">
	            
	        </div>
	    </div>
	    
	    <div class="row">
	        <div class="col-12">
	            
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