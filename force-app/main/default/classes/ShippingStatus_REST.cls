public class ShippingStatus_REST {
    @AuraEnabled(cacheable=true)
    public static String getStatus(String trackingNumber) {
        //anystringwilldo
        HttpRequest req = new HttpRequest();
        req.setEndpoint( 'https://merzcommunities--tina.sandbox.my.salesforce-'+'sites.com/services/apexrest/mockShipmentStatus?trackingNumber='+ trackingNumber);
        req.setHeader('api_key', '{!$Credential.Password}');
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);

        return res.getbody();
    }
}