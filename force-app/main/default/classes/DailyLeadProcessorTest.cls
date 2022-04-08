@isTest
public class DailyLeadProcessorTest{

    public static String CRON_EXP = '0 0 0 15 3 ? 2022';

    @testSetup
    static void setup() {
        List<Lead> leadList = new List<Lead>();
        
        for(Integer count = 0; count < 200; count++) {
            Lead lead = new Lead();
            lead.lastName = 'LN ' + count;
            lead.Company = 'ABC';
            lead.LeadSource = '';
            lead.Status = 'Working - Contacted';
            leadList.add(lead);
        }
        
        insert leadList;
    }
    
    static testMethod void testSchedulable() {
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest', CRON_EXP, new DailyLeadProcessor());         
        Test.stopTest();
        List<Lead> leads = [SELECT Id FROM Lead WHERE LeadSource = 'DreamForce'];
        System.assertEquals(200, leads.size(), 'Numbers of leads with LeadSource as DreamForce');
    }
}