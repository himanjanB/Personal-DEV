public with sharing class AccountTriggerHelper {
    
    public static void updateAddresses(List<Account> newAccountList) {

        for(Account account : newAccountList) {
            System.debug('Account Name is ' + account.Name);
            account.Phone = '123';
        }
    }

    public static void updateCheckBox(List<Account> newAccountList) {
        List<Account> accountList = [SELECT Id, ContactUpdated__c, (SELECT Id, AccountUpdated__c FROM Contacts) FROM Account WHERE Id IN : newAccountList WITH SECURITY_ENFORCED];
        List<Contact> contactList = new List<Contact>();
        for(Account acc : accountList) {
            for(Contact con : acc.Contacts) {
                con.AccountUpdated__c = acc.ContactUpdated__c;
                contactList.add(con);
            }
        }

        if(!contactList.isEmpty()) {
            update contactList;
        }
    }
}