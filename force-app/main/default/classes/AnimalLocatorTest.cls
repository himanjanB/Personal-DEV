@isTest
public class AnimalLocatorTest {
    
    @isTest
    static void testPostCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        Integer num = 1;
        String response = AnimalLocator.getAnimalNameById(num);
        String actualValue = response;
        
    }
}