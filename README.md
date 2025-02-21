# Apex Rest Webhook Consumer example

This is a generic webhook consumer that is designed to accept a json payload and store it in a local object which you can take action on.

## Installation Instructions

1. install package using the installation url from below
2. apply 'Access Webhook Consumer' permission set to users who need it
3. create site (can be classic sf site or experience cloud), making note of the url of the site
4. set public user access (or guest user profile) to give them ability to create IntegrationRecord__c objects
5. set public user access (or guest user profile) to give them access to the api endpoints
6. call the webhook by HTTP POST to {site-url}/services/apexrest/webhook-consumer/{unique-path}
    (a) where {site-url} is the url of the site you created 
    (b) and {unique-path} is the path that will identify the type of call you are making (for use in any kind of custom processing you might want to do for different types of webhoook records)

```

 Name                          Value
 ───────────────────────────── ───────────────────────────────────────────────────────────────────────────────── 
 ID                            08cPD0000000VGjYAM
 Status                        Success
 Package Id                    0HoPD00000002xt0AA
 Package Version Id            05iPD0000005XD3YAM
 Subscriber Package Version Id 04tPD000000exvpYAA
 Tag
 Branch
 Created Date                  2025-02-20 21:33
 Installation URL              https://login.salesforce.com/packaging/installPackage.apexp?p0=04tPD000000exvpYAA
 Created By                    0051N000006noM8QAI

```

## Additional Information

- [Salesforce Apex Rest Examples](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_rest_code_sample_basic.htm)

