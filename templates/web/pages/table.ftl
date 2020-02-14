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
	        <div>${merchCategories}</div>
	        <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                    </tr>
                    <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                    </tr>
                    <tr>
                        <td>Airi Satou</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>33</td>
                        <td>2008/11/28</td>
                        <td>$162,700</td>
                    </tr>
                    <tr>
                        <td>Brielle Williamson</td>
                        <td>Integration Specialist</td>
                        <td>New York</td>
                        <td>61</td>
                        <td>2012/12/02</td>
                        <td>$372,000</td>
                    </tr>
                    <tr>
                        <td>Herrod Chandler</td>
                        <td>Sales Assistant</td>
                        <td>San Francisco</td>
                        <td>59</td>
                        <td>2012/08/06</td>
                        <td>$137,500</td>
                    </tr>
                    <tr>
                        <td>Rhona Davidson</td>
                        <td>Integration Specialist</td>
                        <td>Tokyo</td>
                        <td>55</td>
                        <td>2010/10/14</td>
                        <td>$327,900</td>
                    </tr>
                    <tr>
                        <td>Colleen Hurst</td>
                        <td>Javascript Developer</td>
                        <td>San Francisco</td>
                        <td>39</td>
                        <td>2009/09/15</td>
                        <td>$205,500</td>
                    </tr>
                </table>
	        </div>
	    </div>
	    </section>
	</div>
 
    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/static-assets/js/table.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>



	<@studio.toolSupport/>
	</body>
</html>