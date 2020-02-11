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
	<div class="container">
	    <div class="row">
	        <div class="col-12">
	            ${contentModel.customerLogo_s}
	        </div>
	    </div>
	    
	    <div class="row">
	        <div class="col-12">Top Offers
	        </div>
	    </div>
	    <div class="row">
	        <div class="col-4">${contentModel.searchtext_s}</div>
	        <div class="col-4">${contentModel.categories_s}</div>
	        <div class="col-4"><button>Search</button></div>
	    </div>
	    
	    <div class="row">
	        <div class="col-4">Filters
	        </div>
	        <div class="col-8">Results
	        </div>
	    </div>
	</div>
			<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">
						<!-- Header -->
							<!-- Banner -->
								<section id="content">
									<div class="content">
								        ${contentModel.templateContent_html}
									</div>
								</section>

						</div>
					</div>

			</div>
		
	
    <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>
	<@studio.toolSupport/>
	</body>
</html>