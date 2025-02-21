@RestResource(urlMapping='/webhook-consumer/*')
global with sharing class FTFY_Rest_CTRL {    
    @HttpPost
    global static String handlePost() {
        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;
        FTFY_Rest_SVC service = new FTFY_Rest_SVC(req);
        return service.response;
    }
}