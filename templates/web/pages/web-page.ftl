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

	    <div class="row">
	        <div class="col-12 top-offers">
	        <h3 align="center">Top Offers</h3>
	        
	        <div class="row">
			<div class="col-3">
				<div class="offer offer-radius">
					<div class="offer-content center-align" align="center">
						<img src="/static-assets/images/130063_large.png" class="img-fluid">						
						<i>A little description for the offer.</i>
						<div class="offer-per" align="center">
						<div class="flex min-content" align="center">5% <span class="cashback">Cash<br>back</span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="offer offer-radius">
					<div class="offer-content center-align" align="center">
						<img src="/static-assets/images/130063_large.png" class="img-fluid">						
						<i>A little description for the offer.</i>
						<div class="offer-per" align="center">
						<div class="flex min-content" align="center">3% <span class="cashback">Cash<br>back</span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="offer offer-radius">
					<div class="offer-content center-align" align="center">
						<img src="/static-assets/images/130063_large.png" class="img-fluid">				
						<i>A little description for the offer.</i>
						<div class="offer-per" align="center">
						<div class="flex min-content" align="center">10% <span class="cashback">Cash<br>back</span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3">
				<div class="offer offer-radius">
					<div class="offer-content center-align" align="center">
						<img src="/static-assets/images/130063_large.png" class="img-fluid">				
						<i>A little description for the offer.</i>
						<div class="offer-per" align="center">
						<div class="flex min-content" align="center">15% <span class="cashback">Cash<br>back</span></div>
						</div>
					</div>
				</div>
			</div>
        </div>
	        </div>
	    </div>
	    <div class="row blue-bg">
	        <div class="col-6">
	        <input type="text" class="form-control" aria-label="Text input with dropdown button">
            </div>
            <div class="col-3">

    <div class="input-group-prepend">
                        <button class="btn btn-secondary btn-block dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Categories</button>
                  
                        <ul class="dropdown-menu">
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Realtor</a></li>
                            <li><a href="#">Bank</a></li>
                            <li><a href="#">Online Store</a></li>
                            <li><a href="#">Professional Services</a></li>
                            <li><a href="#">Others</a></li>
                        </ul>
                      </div>
            </div>
            <div class="col-3"><button type="submit" class="btn btn-block btn-primary mb-2">SEARCH</button>
            </div>
	    </div>
	    
	    <section class="main-content">
	    <div class="row">
	        <div class="col-3">
	        <div class="flex"><h4>Filters</h4>
	        <span class="ml-auto">Reset</span></div>
	        <div id="accordion" class="accordion">
		        <div class="card mb-0">
		            <div class="card-header" data-toggle="collapse" href="#collapseOne">
		                <a class="card-title">Cashback Range</a>
		            </div>
		            <div id="collapseOne" class="card-body collapse show" data-parent="#accordion">
		                <div class="slider">
		                        <input type = "range" min="0" max="100" onchange="rangevalue.value=value"/>
		                    	<output id="rangevalue">50</output>
		                    </div> 
		            </div>
		            <div class="card-header" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
		                <a class="card-title"> Categories </a>
		            </div>
		            <div id="collapseTwo" class="card-body collapse show" data-parent="#accordion">
		                 
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                    	<label class="checkbox">Travel <input type="checkbox" /><span class="default"></span></label>
                    </li>
                    <li class="list-group-item">
                        <label class="checkbox">Lifestyle <input type="checkbox" /><span class="primary"></span></label>
                    </li>
                    <li class="list-group-item">
                        <label class="checkbox">Realtor <input type="checkbox" /><span class="success"></span></label>
                    </li>
                    <li class="list-group-item">
                         <label class="checkbox">Bank <input type="checkbox" /><span class="info"></span></label>
                    </li>
                    <li class="list-group-item">
                        <label class="checkbox">Online Store <input type="checkbox" /><span class="info"></span></label>
                    </li>
                    <li class="list-group-item">
                        <label class="checkbox">Professional Services <input type="checkbox" /><span class="info"></span></label>
                    </li>
                    <li class="list-group-item">
                        <label class="checkbox">Others <input type="checkbox" /><span class="info"></span></label>
                    </li>
                </ul>
		            </div>
		        </div>
		    </div>
	        
	        </div>
	        <div class="col-9">
	        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Company Name</th>
      <th scope="col">Cashback</th>
      <th scope="col">Offers</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><img class="logo" src="/static-assets/images/rakuten.png" alt="" /></td>
      <td>1.5% Cashback</td>
      <td>3 Offers</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td><img class="logo" src="/static-assets/images/rakuten1.png" alt="" /></td>
      <td>2% Cashback</td>
      <td>3 Offers</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td><img class="logo" src="/static-assets/images/rakuten.png" alt="" /></td>
      <td>2.5% Cashback</td>
      <td>3 Offers</td>
    </tr>
  </tbody>
</table>
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