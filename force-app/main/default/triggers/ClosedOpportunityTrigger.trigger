trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    /* Aggiunge un follow-up Task alle opportunità in stage closed won */

    List<Task> tasks = new List<Task>();
    for (Opportunity opportunity : Trigger.new) {
        if (opportunity.StageName == 'Closed Won') {
            Task task = new Task();
            task.Subject = 'Call';
            task.Priority = 'Normal';
            task.Status = 'Not Started';
            task.WhatId = opportunity.Id;
            task.OwnerId = opportunity.OwnerId;
            tasks.add(task);
        }
    }
    insert tasks;
}