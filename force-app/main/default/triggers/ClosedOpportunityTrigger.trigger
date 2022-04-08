trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
List<Task> taskList = new List<Task>();

    for ( Opportunity opp : Trigger.new ) {
        if ( opp.StageName == 'Closed Won' ) {
            Task newTask = new Task();
            newTask.WhatId = opp.Id;
            newTask.Subject = 'Follow Up Test Task';
            taskList.add(newTask);
        }
    }
    insert taskList;
}