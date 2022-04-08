trigger ChildTrigger on Child__c (after insert, after update) {
	ChildTriggerHelper.calculate(Trigger.new);
}