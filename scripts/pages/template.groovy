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

def uriStoreList = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/merchant/offers/false")
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

templateModel.merchCategories = categories;
//templateModel.merchantOffers = "[{\"merchant\":{\"mid\":\"7001\",\"merchantName\":\"Amazon\"},\"couponOffers\":[{\"categories\":[\"Accessories\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON1\",\"offerDescription\":\"offer1\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-10-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.5&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Auto & Tires\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON2\",\"offerDescription\":\"offer2\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-09-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.7&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.7&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Baby & Kids Gear\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON3\",\"offerDescription\":\"offer3\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-08-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.8&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.8&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Books & Media\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON4\",\"offerDescription\":\"offer4\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-07-12\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.4&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.4&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"}],\"cbOffer\":{\"mid\":\"1234\",\"commissionTerms\":\"sale : 0 and above 3%\",\"offerId\":\"546633\",\"offerName\":\"Amazon Welcome Program\"}},{\"merchant\":{\"mid\":\"7002\",\"merchantName\":\"Walmart\"},\"couponOffers\":[{\"categories\":[\"Clothing\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON1\",\"offerDescription\":\"offer1\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-09-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.5&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Electronics\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON2\",\"offerDescription\":\"offer2\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-08-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.7&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.7&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Events & Activities\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON3\",\"offerDescription\":\"offer3\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-07-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.8&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.8&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"}],\"cbOffer\":{\"mid\":\"1234\",\"commissionTerms\":\"sale : 0 and above 3.5%\",\"offerId\":\"454545\",\"offerName\":\"Walmart Welcome Program\"}},{\"merchant\":{\"mid\":\"7003\",\"merchantName\":\"eBay\"},\"couponOffers\":[{\"categories\":[\"Flowers & Florists\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON1\",\"offerDescription\":\"offer1\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-05-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.5&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Food & Restaurants\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON2\",\"offerDescription\":\"offer2\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-06-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.7&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.7&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"}],\"cbOffer\":{\"mid\":\"1234\",\"commissionTerms\":\"sale : 0 and above 2%\",\"offerId\":\"232323\",\"offerName\":\"eBay Welcome Program\"}},{\"merchant\":{\"mid\":\"7004\",\"merchantName\":\"Target\"},\"couponOffers\":[{\"categories\":[\"Gifts & Occasions\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON1\",\"offerDescription\":\"offer1\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-11-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.5&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"}],\"cbOffer\":{\"mid\":\"1234\",\"commissionTerms\":\"sale : 0 and above 2.5%\",\"offerId\":\"334343\",\"offerName\":\"Target Welcome Program\"}},{\"merchant\":{\"mid\":\"7005\",\"merchantName\":\"Macy's\"},\"couponOffers\":[{\"categories\":[\"Health & Beauty\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON1\",\"offerDescription\":\"offer1\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-07-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.5&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.5&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"},{\"categories\":[\"Home Decor & Furniture\"],\"promotionTypes\":[\"Dollar off\"],\"couponCode\":\"COUPON2\",\"offerDescription\":\"offer2\",\"offerStartDate\":\"2020-03-18\",\"offerEndDate\":\"2020-08-31\",\"clickUrl\":\"https://click.linksynergy.com/fs-bin/click?id=O9/jWAhJi3I&offerid=692069.7&type=3&subid=0\",\"impressionPixel\":\"https://ad.linksynergy.com/fs-bin/show?id=O9/jWAhJi3I&bids=692069.7&type=3&subid=0\",\"networkId\":\"1\",\"mid\":\"1234\"}],\"cbOffer\":{\"mid\":\"1234\",\"commissionTerms\":\"sale : 0 and above 7%\",\"offerId\":\"765464\",\"offerName\":\"Macy's Welcome Program\"}}]"
templateModel.merchantOffers = merchantOffers;

return merchantOffers
