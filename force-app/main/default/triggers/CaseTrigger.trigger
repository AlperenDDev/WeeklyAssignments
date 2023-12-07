trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    // system.debug('we are in case trigger');

    // if(Trigger.isBefore){
    //     system.debug('We are in before trigger of case object.');
    //     if(Trigger.isInsert){
    //         system.debug('We are in before insert trigger of case object.');
    //     }
    //     if(Trigger.isUpdate){
    //         system.debug('We are in before update trigger of case object.');
    //     }
    // }

    // if(Trigger.isAfter){
    //     system.debug('we are in after trigger of case object');
    // }
    //     if(Trigger.isInsert){
    //         system.debug('We are in after insert trigger of case object.');

    //         list<case> newCases = Trigger.new;
    //         for (Case eachNewCase : newCases) {
    //             system.debug('case ' + eachNewCase.CaseNumber + 'was created with id' + eachNewCase.Id + 'on ' + eachNewCase.createdDate);
    //         }
    //     }
    //     if(Trigger.isUpdate){
    //         system.debug('We are in after Update trigger of case object.');
    //     }
}