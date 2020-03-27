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


def uri = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/categories")
def authString = "Basic dXNlcjE6cGFzc3dvcmQx"
org.apache.http.impl.client.DefaultHttpClient httpClient = new org.apache.http.impl.client.DefaultHttpClient();
org.apache.http.client.methods.HttpGet getRequest= new org.apache.http.client.methods.HttpGet(uri);
getRequest.addHeader("Accept", "application/json");
getRequest.addHeader("Authorization", authString);
org.apache.http.HttpResponse response = httpClient.execute(getRequest);

def status = response.getStatusLine().getStatusCode();
def result = ""
def customerName = ""

if (status>= 300) {
 throw new org.apache.http.client.ClientProtocolException("Unexpected response status: " + status)
}
org.apache.http.HttpEntity responseEntity = response.getEntity();
if (responseEntity != null) {
 result = org.apache.http.util.EntityUtils.toString(responseEntity);
}

/*
def textIndent = 2
def xmlJSONObj = XML.toJSONObject(returnMessage)
def jo = xmlJSONObj.toString(textIndent)
*/

// def ParsingResult = new XmlSlurper().parseText(returnMessage)
// def categories = ParsingResult.'**'.findAll { node -> node.name() == 'catName' }*.text()

def categories = new JsonSlurper().parseText(result)
list.each { println it }

templateModel.merchCategories = categories;
templateModel.status = status;

return categories
