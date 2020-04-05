<div class="table-responsive">
  <table class="table" id="result-table">
    <thead>
       <tr>
          <th scope="col">Logo</th>
          <th scope="col">Company Name</th>
          <th scope="col" class="center-align">Cashback</th>
          <th scope="col" class="center-align">Offers</th>
          <th></th>
        </tr>
    </thead>
    <tbody id="myTable">
      <#list mOffers as mo>
      <#assign accordionId = "accordion" + mo?index>
      <#assign accordionDataParent = "#accordion" + mo?index>
      <#assign accordionHref = "#tableone" + mo?index>
      <#assign tableOneId = "tableone" + mo?index>
      <tr id="products">
        <#assign storeName = mo.merchant.merchantName?replace("'", "")>
        <#assign storeName = storeName?lower_case>
        <#if storeName == "walmart">
            <#assign storeDomain = ".ca">
        <#else>
            <#assign storeDomain = ".com">
        </#if>
        <#assign imageUrl = "http://logo.clearbit.com/" + storeName + storeDomain>

        <td width="15%" class="vertical-align"><a href="#"><img class="img-fluid" src=${imageUrl} alt="Store Image" /></a></td>
        <td width="40%" class="vertical-align"><a href="/offer?mid=${mo.merchant.mid}">${mo.merchant.merchantName}</a></td>
        <td width="25%" class="vertical-align center-align">${mo.cbOffer.commissionTerms} %</td>
        <td width="20%" class="vertical-align center-align" data-percentage=${mo.couponOffers?size}>${mo.couponOffers?size} Offers</td>
        <td width="10%" class="accordion-toggle collapsed vertical-align" id=${accordionId} data-toggle="collapse" data-parent=${accordionDataParent} href=${accordionHref}><div class="arrow-btn"><i class="fa fa-chevron-down" aria-hidden="true"></i></div></td>
      </tr>
      <tr class="hide-table-padding">
        <#assign cpOffers = mo.couponOffers>
        
        <td colspan="5">
          <#list cpOffers as co>  
          <#assign clickUrl = co.clickUrl>
          
          <div id=${tableOneId} class="col collapse in mb-3">
            <div class="row offer-codebox1">
    	        <div class="col-6 vertical-align center-align off">Upto 
    	            <a href=${clickUrl}><span class="font-28 bold">${mo.cbOffer.commissionTerms}% OFF</span></a>
    	        </div>
    	        <div class="col-6 center-align display-block vertical-align">
    	            <div class="code-css font-12 code"><button type="button" class="copy-code-btn" onclick="clickToCopy('${co.couponCode}')">Copy Code: ${co.couponCode}</button></div>
    	            <span class="red font-12">Expires by ${co.offerEndDate?date('yyyy-MM-dd')?string('dd MMM yyyy')}</span>
    	        </div>
    	      </div>
    	     </div>
    	    </#list>

        </td>
        <td></td>
    </tr>
    </#list>

    </tbody>
  </table>
</div>

<div class="row">
        <nav aria-label="Page navigation"  style="margin-left: auto; margin-right: auto;">
          <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
        </nav>
</div>