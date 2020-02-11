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
	        <div class="card">
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Range input </h6>
		</header>
		<div class="filter-content">
			<div class="card-body">
			<div class="form-row">
			<div class="form-group col-md-6">
			  <label>Min</label>
			  <input type="number" class="form-control" id="inputEmail4" placeholder="$0">
			</div>
			<div class="form-group col-md-6 text-right">
			  <label>Max</label>
			  <input type="number" class="form-control" placeholder="$1,0000">
			</div>
			</div>
			</div> <!-- card-body.// -->
		</div>
	</article> <!-- card-group-item.// -->
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Selection </h6>
		</header>
		<div class="filter-content">
			<div class="card-body">
				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">52</span>
				  	<input type="checkbox" class="custom-control-input" id="Check1">
				  	<label class="custom-control-label" for="Check1">Samsung</label>
				</div> <!-- form-check.// -->

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">132</span>
				  	<input type="checkbox" class="custom-control-input" id="Check2">
				 	<label class="custom-control-label" for="Check2">Black berry</label>
				</div> <!-- form-check.// -->

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">17</span>
				  	<input type="checkbox" class="custom-control-input" id="Check3">
				  	<label class="custom-control-label" for="Check3">Samsung</label>
				</div> <!-- form-check.// -->

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">7</span>
				  	<input type="checkbox" class="custom-control-input" id="Check4">
				  	<label class="custom-control-label" for="Check4">Other Brand</label>
				</div> <!-- form-check.// -->
			</div> <!-- card-body.// -->
		</div>
	</article> <!-- card-group-item.// -->
</div> <!-- card.// -->

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
    

	<@studio.toolSupport/>
	</body>
</html>