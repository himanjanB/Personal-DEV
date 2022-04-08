trigger AccountTrigger on Account (before insert) {
    
    AccountTriggerHandler.updateAddresses(Trigger.New);
    System.debug('Size of Trigger New ' + Trigger.New.size());
}