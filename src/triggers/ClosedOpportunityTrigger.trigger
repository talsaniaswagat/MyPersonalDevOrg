trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> lstTask = new List<Task>();
    for(Opportunity o : [Select Id from Opportunity WHERE ID in :Trigger.New AND StageName='Closed Won'])
    {
        lstTask.add(new Task(Subject='Follow Up Test Task', WhatID=o.Id));
    }
    
    insert(lstTask);
}