public with sharing class FTFY_Rest_SVC {
    public Blob requestBody;
    public RestRequest req;
    public String requestPath;
    public String response;

    public FTFY_Rest_SVC(RestRequest req) {
        this.req = req;
        init();
    }

    @testVisible
    private void init(){
        String body = req.requestBody != null ? req.requestBody.toString() : null;
        IntegrationRecord__c record = new IntegrationRecord__c(
            Body__c = body,
            Path__c = req.resourcePath,
            URI__c = req.requestURI
        );
        insert record;
        response = record.Id;
    }
}