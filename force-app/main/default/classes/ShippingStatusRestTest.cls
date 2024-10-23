@IsTest
public class ShippingStatusRestTest {

    @IsTest
    public static void ShippingStatusRestTest() {
        Test.setMock(HttpCalloutMock.class, new ShippingStatusRestMock());
        String s =  ShippingStatus_REST.getStatus('1');
        system.debug('string returned: ' + s);
        System.assertEquals(s,'Shipped - On Time');
    }
}