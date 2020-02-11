<#list contentModel.VARIABLENAME.item as myItem>
	<#assign myContentItem =  siteItemService.getSiteItem(myItem.key) />
	${myContentItem.variableName}
</#list>