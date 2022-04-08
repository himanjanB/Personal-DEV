@isTest
public class TestVerifyDate {
    
    @isTest
    static void testDate() {
        Date dateOne = VerifyDate.checkDates(System.today(), System.today() + 20);
        System.assertEquals(System.today() + 20, dateOne);        
    }
    
    @isTest
    static void testSomeMoreData() {   
        Date dateOne = VerifyDate.CheckDates(System.today(), System.today() + 50);
        Date firstDateOfMonth = System.Date.today().toStartOfMonth();
        System.assertEquals(firstDateOfMonth.addMonths(1).addDays(-1), dateOne);
        
    }
}