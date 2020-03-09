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
	    
	    <#assign mcats = merchCategories>
	      
	    <div class="row blue-bg">
	        <div class="col-6">
	        <input type="text" id="myInput" class="form-control" aria-label="Text input with dropdown button">
            </div>
            <div class="col-3">
            <select class="btn btn-dark btn-block">
                <option class="dropdown-item">Categories</option>
                <#list mcats as cat>
                    <option class="dropdown-item">${cat}</option>
                </#list>
            </select>
            
            </div>
            <div class="col-3"><button type="submit" class="btn btn-block btn-dark mb-2">SEARCH</button>
            </div>
	    </div>
	    
	    <section class="main-content">
	    <div class="row">
	        <div class="col-4">
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
                    <#list mcats as cat>
                        <li class="list-group-item">
                    	    <label class="checkbox">${cat}<input type="checkbox" /><span class="default"></span></label>
                        </li>
                    </#list>
                    
                </ul>
		            </div>
		        </div>
		    </div>
	        
	        </div>
	        <div class="col-8">
	        <div style="margin-left: auto; text-align: right;">
    	        <div class="dropdown">
                  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Sort by
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Newest </a>
                    <a class="dropdown-item" href="#">Expiry Date </a>
                    <a class="dropdown-item" href="#">Cash back: High to Low</a>
                  </div>
                </div>
            </div>
            
            
            
            <div class="table-responsive">
  <table class="table">
    <thead>
       <tr>
          <th scope="col">Company Logo</th>
          <th scope="col">Company Name</th>
          <th scope="col">Cashback</th>
          <th scope="col">Offers</th>
          <th></th>
        </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href="${contentModel.offer}"><img class="logo" src="/static-assets/images/rakuten.png" alt="" /></a></td>
        <td>Rakuten</td>
        <td>1.5% Cashback</td>
        <td>3 Offers</td>
        <td class="accordion-toggle collapsed" id="accordion1" data-toggle="collapse" data-parent="#accordion1" href="#tableone"><div class="arrow-btn">+</div></td>
    </tr>
    <tr class="hide-table-padding">
    
    <td colspan="4">
    <div id="tableone" class="collapse in p-3">
      <div class="row">
        <div class="col-2">label</div>
        <div class="col-6">value 1</div>
      </div>
    </div></td>
    <td></td>
    </tr>

    <tr>
      <td><img class="logo" src="/static-assets/images/130063_large.png" alt="" /></td>
      <td>iCheapflights</td>
      <td>2% Cashback</td>
      <td>3 Offers</td>
      <td class="accordion-toggle collapsed" id="accordion2" data-toggle="collapse" data-parent="#accordion2" href="#tabletwo"><div class="arrow-btn">+</div></td>
    </tr>
    
    <tr class="hide-table-padding">

    <td colspan="4">
    <div id="tabletwo" class="collapse in p-3">
      <div class="row">
        <div class="col-2">label</div>
        <div class="col-6">value</div>
      </div>
    </div></td>
    <td></td>
    </tr>
    </tbody>
  </table>
</div>
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