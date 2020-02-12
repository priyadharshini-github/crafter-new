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
                        <div class="dropdown-menu" v-for="category_o in category">
                          <a class="dropdown-item" href="#">${contentModel.category_o.item[0].key}</a>
                         <!-- <a class="dropdown-item" href="#">Departmental Store</a>
                          <a class="dropdown-item" href="#">Flights</a>-->
                        </div>
                      </div>
            </div>
            <div class="col-3"><button type="submit" class="btn btn-block btn-primary mb-2">SEARCH</button>
            </div>
	    </div>
	    
	    <section class="main-content">
	    <div class="row">
	        <div class="col-4">Filters
	        
	        <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Cashback Range
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        <div class="slider">
                        <input type = "range" min="0" max="100" onchange="rangevalue.value=value"/>
                    	<output id="rangevalue">50</output>
                    </div> 
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Categories
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
${contentModel.categories_o.item[0].key}
      </div>
    </div>
  </div>
</div>
	        </div>
	        <div class="col-8">
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