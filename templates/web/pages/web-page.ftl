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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/css/ion.rangeSlider.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/js/ion.rangeSlider.min.js"></script>
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
	    
	    <div class="row">
	        <div class="col-4">
	        <input type="text" class="js-range-slider" name="my_range" value=""/>    

	        </div>
	        <div class="col-8">Results
	        </div>
	    </div>
	</div>
 
    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>
    <script>
$(".js-range-slider").ionRangeSlider({
    skin: "round",
    step: 50,
    type: "double",
    grid: true,
    min: 0,
    max: 1000,
    from: 200,
    to: 800,
    prefix: "$"
});
</script>

	<@studio.toolSupport/>
	</body>
</html>