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
			<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">
							<!-- Banner -->
								<section id="content">
									<div class="content">
								        ${contentModel.rte_html}
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