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
	</head>
	<body>
	<div class="container-fluid">
	    <div class="row">
	        <div class="col-12">
	            <img class="logo" src="/static-assets/images/sample-logo.png" alt="" />
	       </div>
	    </div>
	    <div class="row">
	        <div class="col-12 majenta-bg">Some sample content here
	        </div>
	    </div>
	    <div class="row">
	        <div class="col-12 top-offers">Top Offers
	        </div>
	    </div>
	    <div class="row majenta-bg">
	        <div class="col-6">
	        <input type="text" class="form-control" aria-label="Text input with dropdown button">
            </div>
            <div class="col-3">
            <div class="input-group-prepend">
                        <button class="btn btn-secondary btn-block dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Categories</button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="#">Travel & Vacations</a>
                          <a class="dropdown-item" href="#">Departmental Store</a>
                          <a class="dropdown-item" href="#">Flights</a>
                        </div>
                      </div>
            </div>
            <div class="col-3"><button type="submit" class="btn btn-block btn-primary mb-2">SEARCH</button>
            </div>
	    </div>
	    
	    <section class="main-content">
	    <div class="row">
	        <div class="col-4">Filters
	            <div class="row">
        	        <div class="col-12">
        	        <div class="slider">
                        <input type = "range" min="0" max="100" onchange="rangevalue.value=value"/>
                    	<output id="rangevalue">50</output>
                    </div> 
                    </div>
	            </div>
	            <div class="row">
    	            <div class="col-12">
    	            Categories
    	            </div>
                </div>
	        </div>
	        <div class="col-8">Results
	        </div>
	    </div>
	    </section>
	</div>
 
    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>

	<@studio.toolSupport/>
	</body>
</html>