trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    /* Aggiunge un follow-up Task alle opportunità in stage closed won */

    List<Task> tasks = new List<Task>();
    for (Opportunity opportunity : Trigger.new) {
        if (opportunity.StageName == 'Closed Won') {
            Task task = new Task(
                Subject = 'Follow Up Test Task',
                WhatId = opportunity.Id
            );
            tasks.add(task);
        }
    }
    insert tasks;
}