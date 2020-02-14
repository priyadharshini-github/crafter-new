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
	        <input type="text" id="myInput" class="form-control" aria-label="Text input with dropdown button">
            </div>
            <div class="col-3">
            <select class="btn btn-danger">
            <option class="dropdown-item">All Categories</option>
                <option class="dropdown-item">Travel</option>
                 <option class="dropdown-item">Lifestyle</option>
                  <option class="dropdown-item">Realtor</option>
                  <option class="dropdown-item">Bank</option>
                 <option class="dropdown-item">Online Store</option>
                  <option class="dropdown-item">Professional Services</option>
                  <option class="dropdown-item">Others</option>
            </select>
            
            </div>
            <div class="col-3"><button type="submit" class="btn btn-block btn-danger mb-2">SEARCH</button>
            </div>
	    </div>
	    
	    <section class="main-content">
	    <div class="row">
	        <div class="col-3">
	        <div class="flex"><h4>Filters</h4>
	        <small class="ml-auto mtop-5"><a href="#">Reset</a></small></div>
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
                    	<label class="checkbox">Travel<input type="checkbox" /><span class="default"></span></label>
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
  <tbody id="myTable">
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

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>


	<@studio.toolSupport/>
	</body>
</html>