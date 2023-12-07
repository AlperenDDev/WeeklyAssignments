trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        AccountTriggerHandler.updateAccRating(
            Trigger.new, 
            Trigger.old, 
            Trigger.newMap, 
            Trigger.oldMap
        );

        AccountTriggerHandler.updateAnnRev(
            Trigger.new, 
            Trigger.old, 
            Trigger.newMap, 
            Trigger.oldMap
        );
    }
    
    if (Trigger.isAfter && Trigger.isInsert) {
       
        AccountTriggerHandler.associateConToAcc(
        
        Trigger.new, 
        Trigger.old, 
        Trigger.newMap, 
        Trigger.oldMap
        );
    }

}