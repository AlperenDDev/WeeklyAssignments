trigger LeadTrigger on Lead (before insert,after insert, before update, after update) {
    // if(Trigger.isInsert){
    //     if(Trigger.isBefore){
    //         list<lead> newLeads = Trigger.new;
    //         for(lead leadSourceNew : newLeads){
    //             if (leadSourceNew.LeadSource != null && leadSourceNew.LeadSource == 'Web') {
    //                 system.debug('rating should be cold');
    //             } else {
    //                 system.debug('rating should be hot');
    //             }
    //         }
    //     }
    // }
}