trigger ContactTrigger on Contact (after update) {
    ContactTriggerHandler.updateAccount(Trigger.new);
}