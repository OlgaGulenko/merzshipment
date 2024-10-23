@IsTest
global class ShippingStatusRestMock implements HttpCalloutMock{
    
    global HTTPresponse respond(HTTPrequest request) {
        Httpresponse response = new Httpresponse();
        response.setStatusCode(200);
        response.setBody('Shipped - On Time');
        response.setHeader('Content-Type', 'text/plain');
        response.setHeader('Content-Length', '18');
        return response;
    }
}