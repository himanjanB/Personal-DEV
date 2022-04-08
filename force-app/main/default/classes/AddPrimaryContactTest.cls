@isTest
public class AddPrimaryContactTest {
    
    @testSetup
    static void setup() {
        List<Account> accountList = new List<Account>();
        
        for(Integer count = 1; count <= 50; count++) {
            Account account = new Account();
            account.Name = 'NY Account ' + count;
            account.BillingState = 'NY';
            accountList.add(account);
            Account caAccount = new Account();
            caAccount.Name = 'CA Account ' + count;
            caAccount.BillingState = 'CA';
            accountList.add(caAccount);
        }
        insert accountList;
        
        Contact contact = new Contact();
        contact.lastName = 'LN';
        insert contact;
    }
    
    static testMethod void testQueueable() {
        Contact contact = [SELECT Id FROM Contact LIMIT 1];
        AddPrimaryContact addPrimaryContact = new AddPrimaryContact(contact, 'CA');
        Test.startTest();
        System.enqueueJob(addPrimaryContact);
        Test.stopTest();
        System.assertEquals(50, [SELECT COUNT() FROM Contact where Account.BillingState = 'CA']);
    }
}