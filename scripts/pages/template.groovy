@Grab(group='org.json', module='json', version='20190722')

import java.net.URI;
// import groovy.json.JsonSlurper;
// import org.json.JSONObject;
import org.json.XML;
import org.apache.http.NameValuePair;

def tokenUri = new URI("https://api.rakutenmarketing.com/token?grant_type=password&username=syzegee&password=Platform2019&scope=3653353")
def tokenAuthString = "Basic SEJma0wxbGlkZG1kbTB3YURQZkNQM2l5U3Q0YTpmMjJPT3pWU1l6cHNlQlNRVUkzS0JvMFlJR2dh"
def token = ""

org.apache.http.impl.client.DefaultHttpClient httpTokenClient = new org.apache.http.impl.client.DefaultHttpClient();

List<NameValuePair> form = new ArrayList<>();
form.add(new BasicNameValuePair("grant_type", "password"));
form.add(new BasicNameValuePair("username", "syzegee"));
form.add(new BasicNameValuePair("password", "Platform2019"));
form.add(new BasicNameValuePair("scope", "3653353"));
UrlEncodedFormEntity entity = new UrlEncodedFormEntity(form, Consts.UTF_8);
            
org.apache.http.client.methods.HttpPost tokenRequest= new org.apache.http.client.methods.HttpPost(tokenUri);
tokenRequest.addHeader("Authorization", tokenAuthString);
tokenRequest.addHeader("Content-Type", "application/x-www-form-urlencoded");
tokenRequest.setEntity(entity)
org.apache.http.HttpResponse tokenResponse = httpTokenClient.execute(tokenRequest);

def tokenStatus = tokenResponse.getStatusLine().getStatusCode()
if( tokenStatus >= 300) {
  throw new org.apache.http.client.ClientProtocolException("Unexpected response status: " + tokenStatus)  
}

org.apache.http.HttpEntity tokenResponseEntity = tokenResponse.getEntity();
if (tokenResponseEntity != null) {
 token = org.apache.http.util.EntityUtils.toString(tokenResponseEntity);
}

def uri = new URI("https://api.rakutenmarketing.com/linklocator/1.0/getCreativeCategories/44543")
def authString = "Bearer " + token
org.apache.http.impl.client.DefaultHttpClient httpClient = new org.apache.http.impl.client.DefaultHttpClient();
org.apache.http.client.methods.HttpGet getRequest= new org.apache.http.client.methods.HttpGet(uri);
getRequest.addHeader("Accept", "application/xml");
getRequest.addHeader("Authorization", authString);
org.apache.http.HttpResponse response = httpClient.execute(getRequest);

def status = response.getStatusLine().getStatusCode();
def returnMessage = ""
def customerName = ""

if (status>= 300) {
 throw new org.apache.http.client.ClientProtocolException("Unexpected response status: " + status)
}
org.apache.http.HttpEntity responseEntity = response.getEntity();
if (responseEntity != null) {
 returnMessage = org.apache.http.util.EntityUtils.toString(responseEntity);
}

/*
def textIndent = 2
def xmlJSONObj = XML.toJSONObject(returnMessage)
def jo = xmlJSONObj.toString(textIndent)
*/

def ParsingResult = new XmlSlurper().parseText(returnMessage)
def categories = ParsingResult.'**'.findAll { node -> node.name() == 'catName' }*.text()

//def catArray = categories.toString().split(',')

templateModel.merchCategories = categories;

return categories
