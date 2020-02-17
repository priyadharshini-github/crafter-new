@Grab(group='org.json', module='json', version='20190722')

import java.net.URI;
// import groovy.json.JsonSlurper;
// import org.json.JSONObject;
import org.json.XML;

def uri = new URI("https://api.rakutenmarketing.com/linklocator/1.0/getCreativeCategories/44543")
def authString = "Bearer 484b3668b5b4bed0c33d753112f7d5a"

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
