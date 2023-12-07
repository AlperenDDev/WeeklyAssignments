trigger OpportinityTrigger on Opportunity (before insert, after insert, before update, after update) {
    // if( Trigger.isInsert && Trigger.isAfter){
    //      integer totNumOppCrtd = 0;
    //      for (Opportunity eachOpp : Trigger.new) {
    //          system.debug(eachOpp.Name + ' ' + eachOpp.CloseDate + ' ' + eachOpp.Amount);
    //          totNumOppCrtd++;
    //      }
    //      system.debug('total number of opp created ' + totNumOppCrtd);
    // }
}