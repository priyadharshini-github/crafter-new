import groovy.json.*;

def result = JsonOutput.toJson(
    {
        "mid": "8001",
        "merchantName": "Samsung"
    }
)

return result;