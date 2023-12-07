trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    // if(Trigger.isInsert && Trigger.isAfter){
    //     for(Contact newContacts : Trigger.new){
    //         if (newContacts.AccountId != null) {
    //             system.debug(newContacts.Name + ' is created with Acount');
    //         }else{
    //             system.debug(newContacts.Name + ' is created without Account');
    //         }
    //     }
    // }
}