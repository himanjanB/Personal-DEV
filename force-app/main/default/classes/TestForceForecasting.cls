@IsTest
public class TestForceForecasting {

    static testMethod void insertUser() {
        User u = new User();
        u.FirstName = 'Gaurav';
        u.LastName = 'Bora';
        u.Email = 'borahimanjan@gmail.com';
        u.Alias = 'Gaurab';
        u.UserName = 'borahimanjan@gmail.com';
        u.ProfileId = '00e7F000001Nyo6';
        
        u.TimezoneSidKey = 'America/Denver';
        u.LocaleSidKey = 'en_US';
        u.EmailEncodingKey = 'UTF-8';
        u.LanguageLocaleKey = 'en_US';
        
        insert u;
    }
    
}