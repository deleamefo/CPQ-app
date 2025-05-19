public with sharing class ProductBundleController {
    @AuraEnabled(cacheable=true)
    public static List<Product2> getAvailableProducts() {
        return [SELECT Id, Name, Description, PricebookEntries.UnitPrice FROM Product2 WHERE IsActive = TRUE];
    }
}
