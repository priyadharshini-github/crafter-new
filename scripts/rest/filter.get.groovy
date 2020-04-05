@Grab(group='org.json', module='json', version='20190722')

import java.net.URI;
import groovy.json.JsonSlurper;
import org.json.XML;


// get list of categories
def uri = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/categories")
def authString = "Basic dXNlcjE6cGFzc3dvcmQx"
org.apache.http.impl.client.DefaultHttpClient httpClient = new org.apache.http.impl.client.DefaultHttpClient();
org.apache.http.client.methods.HttpGet getRequest= new org.apache.http.client.methods.HttpGet(uri);
getRequest.addHeader("Accept", "application/json");
getRequest.addHeader("Authorization", authString);
org.apache.http.HttpResponse response = httpClient.execute(getRequest);

def status = response.getStatusLine().getStatusCode();
def categories = ""

if (status>= 300) {
 throw new org.apache.http.client.ClientProtocolException("Unexpected error while fetching categories - status: " + status)
}
org.apache.http.HttpEntity responseEntity = response.getEntity();
if (responseEntity != null) {
 categories = org.apache.http.util.EntityUtils.toString(responseEntity);
}

// get popular sites based on max tiles rule
def uriPop = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/popular/sites/true")
org.apache.http.impl.client.DefaultHttpClient httpPopClient = new org.apache.http.impl.client.DefaultHttpClient();
org.apache.http.client.methods.HttpGet getPopRequest= new org.apache.http.client.methods.HttpGet(uriPop);
getRequest.addHeader("Accept", "application/json");
getRequest.addHeader("Authorization", authString);
org.apache.http.HttpResponse popResponse = httpPopClient.execute(getPopRequest);

status = popResponse.getStatusLine().getStatusCode();
def popularSites = ""

if (status>= 300) {
 throw new org.apache.http.client.ClientProtocolException("Unexpected error while fetching popular sites - status: " + status)
}
org.apache.http.HttpEntity popResponseEntity = popResponse.getEntity();
if (popResponseEntity != null) {
 popularSites = org.apache.http.util.EntityUtils.toString(popResponseEntity);
}

def min = params.min
def max = params.max

// get fitlered Merchant store list
def uriStoreList = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/merchant/offers/filter/" + min + "/" + max + "/true")
org.apache.http.client.methods.HttpGet getStoreRequest= new org.apache.http.client.methods.HttpGet(uriStoreList);
getStoreRequest.addHeader("Accept", "application/json");
getStoreRequest.addHeader("Authorization", authString);
org.apache.http.impl.client.DefaultHttpClient httpStoreClient = new org.apache.http.impl.client.DefaultHttpClient();
org.apache.http.HttpResponse storeResponse = httpStoreClient.execute(getStoreRequest);

status = storeResponse.getStatusLine().getStatusCode();
def merchantOffers = ""

if (status>= 300) {
 throw new org.apache.http.client.ClientProtocolException("Unexpected error while fetching merchant offers - status: " + status)
}
org.apache.http.HttpEntity storeResponseEntity = storeResponse.getEntity();
if (storeResponseEntity != null) {
 merchantOffers = org.apache.http.util.EntityUtils.toString(storeResponseEntity);
}

//////////////////////
templateModel.merchCategories = categories;
templateModel.popularSites = popularSites;
templateModel.merchantOffers = merchantOffers;
////////////////////////

return /templates/web/pages/web-page.ftl
