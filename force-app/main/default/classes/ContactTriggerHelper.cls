public with sharing class ContactTriggerHelper {
    
    public static void updateAccount(List<Contact> contactList) {
        Set<Id> accountIds = new Set<Id>();
        List<Account> accountList = new List<Account>();

        /*
            Get the list of accounts to be updated.
            For each contact in the input list, check the field value and assign the same value to the respective account.
        */

        for(Contact con : contactList) {
            accountIds.add(con.AccountId);
        }

        Map<Id, Account> accountMap = new Map<Id, Account>([SELECT Id, ContactUpdated__c FROM Account WHERE Id IN : accountIds WITH SECURITY_ENFORCED]);

        for(Contact con : contactList) {
            accountMap.get(con.AccountId).ContactUpdated__c = con.AccountUpdated__c;
            accountList.add(accountMap.get(con.AccountId));
        }

        if(!accountList.isEmpty()) {
            update accountList;
        }

    }
}
