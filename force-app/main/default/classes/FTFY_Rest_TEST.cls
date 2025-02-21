@IsTest
public class FTFY_Rest_TEST {

    private static testMethod void testCTRL() {

        Test.startTest();
        RestRequest req = new RestRequest(); 

        RestResponse res = new RestResponse();

        req.requestURI = '/services/apexrest/webhook-consumer/test';

        String body = '{"id":"1","name":"Test"}';

        req.requestBody = Blob.valueOf(body);

        req.httpMethod = 'POST';

        RestContext.request = req;

        RestContext.response= res;

        FTFY_Rest_CTRL.handlePost();

        Test.stopTest();

        List<IntegrationRecord__c> records = [SELECT Id, Path__c, URI__c, Body__c FROM IntegrationRecord__c];
        system.assertEquals(body,records[0].Body__c);

    }

    private static testMethod void testSVC() {
        
        RestRequest req = new RestRequest(); 

        req.requestURI = '/services/apexrest/webhook-consumer/test';

        String body = '{"id":"1","name":"Test"}';

        req.requestBody = Blob.valueOf(body);

        req.httpMethod = 'POST';

        req.resourcePath = 'webhook-consumer/test';

        Test.startTest();
        FTFY_Rest_SVC service = new FTFY_Rest_SVC(req);
        TEst.stopTest();

        List<IntegrationRecord__c> records = [SELECT Id, Path__c, URI__c, Body__c FROM IntegrationRecord__c];
        system.assert(records.size()>0);
    }
}