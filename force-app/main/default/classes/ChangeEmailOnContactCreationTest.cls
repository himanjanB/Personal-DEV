@isTest
public class ChangeEmailOnContactCreationTest {
    
    static testMethod void testInsert() {
        Contact contact = new Contact();
        contact.LastName = 'Test';
        insert contact;
        
        Contact contactTest = [SELECT Email FROM Contact WHERE ID =: contact.Id];
        System.assert(contactTest.Email == 'hello@world.com');
    }

}