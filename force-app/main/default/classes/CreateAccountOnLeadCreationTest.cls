@isTest
public class CreateAccountOnLeadCreationTest {
    
    static testMethod void testCreateAccount() {
        Lead lead = new Lead();
        lead.LastName = 'Test';
        lead.Company = 'Test Company';
        insert lead;
    }
}