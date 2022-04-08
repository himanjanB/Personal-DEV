global class DailyLeadProcessor implements Schedulable{

    global void execute(SchedulableContext context) {
        List<Lead> leadsList = [SELECT Id FROM Lead WHERE LeadSource = '' LIMIT 200];
        List<Lead> leadListToBeUpdated = new List<Lead>();
        
        for(Lead lead : leadsList) {
            lead.LeadSource = 'DreamForce';
            leadListToBeUpdated.add(lead);
        }
        
        update leadListToBeUpdated;
    }
}