trigger AccountTrigger on Account (before update) {
    
    AccountTriggerHandler.updateContactCheckbox(Trigger.new);
}