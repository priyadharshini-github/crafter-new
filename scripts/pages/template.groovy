@Grab(group='org.json', module='json', version='20190722')

import java.net.URI;
// import groovy.json.JsonSlurper;
// import org.json.JSONObject;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.HttpResponse;
import org.apache.http.Consts;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;
import org.json.XML;


def uri = new URI("http://vendor-api.eba-adup9t5c.us-east-2.elasticbeanstalk.com/api/vendor/rakuten/categories")
def authString = "Basic dXNlcjE6cGFzc3dvcmQx"
DefaultHttpClient httpClient = new DefaultHttpClient();
HttpGet getRequest= new HttpGet(uri);
// getRequest.addHeader("Accept", "application/json");
getRequest.addHeader("Authorization", authString);
HttpResponse response = httpClient.execute(getRequest);

def status = response.getStatusLine().getStatusCode();
def returnMessage = ""
def categories
def customerName = ""

if (status>= 300) {
 throw new ClientProtocolException("Unexpected response status: " + status)
}
HttpEntity responseEntity = response.getEntity();
if (responseEntity != null) {
 categories = EntityUtils.toString(responseEntity);
}

/*
def textIndent = 2
def xmlJSONObj = XML.toJSONObject(returnMessage)
def jo = xmlJSONObj.toString(textIndent)
*/

// def ParsingResult = new XmlSlurper().parseText(returnMessage)
// def categories = ParsingResult.'**'.findAll { node -> node.name() == 'catName' }*.text()

templateModel.merchCategories = categories;
templateModel.status = status;

return categories
