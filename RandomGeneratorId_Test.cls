@isTest 
public with sharing class RandomGeneratorId_Test {
    static testMethod void generateId62() {
        Integer length = 6;
        String identifier = RandomGeneratorId.getIdBase62(length);
        System.assertEquals(length, identifier.length());
    }
    static testMethod void generateId36() {
        Integer length = 6;
        String identifier = RandomGeneratorId.getIdBase36(length);
        System.assertEquals(length, identifier.length());
    }
}