<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE html>
<html lang="en">
	<head>
      <meta charset="utf-8">
      <title>Test Page</title>
	</head>
	<body>
    	<div <@studio.iceAttr iceGroup="title"/>>
			<h1>Title</h1>
        </div>
      
    	<div <@studio.iceAttr iceGroup="main"/>>
            Content
        </div>
        
        ${contentModel.std_s}

		<@studio.toolSupport/>	
	</body>
</html>
