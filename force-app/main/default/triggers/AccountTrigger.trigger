trigger AccountTrigger on Account (before update, after update) {
    
    AccountTriggerHandler.updateContactCheckbox(Trigger.new);
}