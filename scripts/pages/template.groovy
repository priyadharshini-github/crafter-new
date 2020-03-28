@Grab(group='org.json', module='json', version='20190722')

import java.net.URI;
import groovy.json.JsonSlurper;
// import org.json.JSONObject;
/*
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.HttpResponse;
import org.apache.http.Consts;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;
*/
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

// get Merchant store list

def uriStoreList = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/merchant/offers/true")
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
 // merchantOffers = storeResponseEntity;
}



/*
def textIndent = 2
def xmlJSONObj = XML.toJSONObject(returnMessage)
def jo = xmlJSONObj.toString(textIndent)
*/

// def ParsingResult = new XmlSlurper().parseText(returnMessage)
// def categories = ParsingResult.'**'.findAll { node -> node.name() == 'catName' }*.text()

templateModel.merchCategories = categories;
// templateModel.merchantOffers = merchantOffers;
// templateModel.merchantOffers = merchantOffers.toString();
templateModel.merchantOffers = groovy.json.JsonOutput.toJson(merchantOffers);
// templateModel.merchantOffers = "[{ \"merchant\": { \"mid\": \"7001\", \"merchantName\": \"Works\" }, \"couponOffers\": [{ \"categories\": [ \"Accessories\" ], \"promotionTypes\": [ \"Dollar off\" ], \"couponCode\": \"COUP01\", \"offerDescription\": \"offer desc 1\" }, { \"categories\": [ \"Clothes\" ], \"promotionTypes\": [ \"Cashback\" ], \"couponCode\": \"COUP02\", \"offerDescription\": \"offer desc 2\" } ], \"cbOffer\": { \"mid\": 78, \"commissionTerms\": \"sale : 0 and above 3%\", \"offerId\": \"546633\", \"offerName\": \"Works Discount Offer\" } }, { \"merchant\": { \"mid\": \"7002\", \"merchantName\": \"Facto\" }, \"couponOffers\": [{ \"categories\": [ \"Accessories\" ], \"promotionTypes\": [ \"Dollar off\" ], \"couponCode\": \"COUP03\", \"offerDescription\": \"offer desc 3\" }, { \"categories\": [ \"Clothes\" ], \"promotionTypes\": [ \"Cashback\" ], \"couponCode\": \"COUP04\", \"offerDescription\": \"offer desc 4\" } ], \"cbOffer\": { \"mid\": 85, \"commissionTerms\": \"sale : 0 and above 5%\", \"offerId\": \"7933\", \"offerName\": \"Facto Cashback Offer\" } } ]";

return merchantOffers
