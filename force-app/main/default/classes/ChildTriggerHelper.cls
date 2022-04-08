public class ChildTriggerHelper {
    
    public static void calculate(List<Child__c> argument) {
        
        Map<ID, Child__c> mapParents = new Map<ID, Child__c>();
        
        for(Child__c child : argument) {
            ID parentID = child.Parent__c;
            mapParents.put(parentID, child);
        }
        
        List<Parent__c> listParent = [SELECT Id, Quantity_Lookup__c from Parent__c where ID in: mapParents.keyset()];
        
        for(Parent__c parent : listParent) {            
            if(parent.Quantity_Lookup__c == null)
                parent.Quantity_Lookup__c = 0;
           	
            parent.Quantity_Lookup__c += mapParents.get(parent.Id).Quantity__c;
        }
        update listParent;
    }
}