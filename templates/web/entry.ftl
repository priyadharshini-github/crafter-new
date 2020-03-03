<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE html>
<html lang="en">
	<head>
      <meta charset="utf-8">
      <title>Test Page</title>
	</head>
	<body>
    	<div <@studio.iceAttr iceGroup="title"/>>
			<h1>Go to EnterPrise edition</h1>
			<a href="http://ec2-3-21-12-154.us-east-2.compute.amazonaws.com:8080/studio/site-dashboard">Click here</a>
        </div>
      
    	<div <@studio.iceAttr iceGroup="main"/>>
            Content
        </div>
        
        ${contentModel.std_s}

		<@studio.toolSupport/>	
	</body>
</html>
