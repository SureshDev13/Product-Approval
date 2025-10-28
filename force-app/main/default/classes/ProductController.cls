public with sharing class ProductController {
    @AuraEnabled(cacheable=true)
    public static List<EV6__c> getProductList() {
        return [SELECT Id, Car_Colour__c, Image__c FROM EV6__c];
    }
}