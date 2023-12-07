public class AccountTriggerHandler {
    public static void updateAccRating(List<Account> accTriggerNew, List<Account> accTriggerOld, map<id, account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {
       
        for (Account eachAcc : accTriggerNew) {
           Account oldAcc = accTriggerOldMap.get(eachAcc.Id);
          
           if(eachAcc.Rating == 'Hot' && (oldAcc == null || oldAcc.Rating != 'Hot')){

                if(eachAcc.Opportunities != null && eachAcc.Opportunities.size() < 3){

                    eachAcc.addError('this account (' + eachAcc.Name + ') cannot be hot okay?');
                }
           }
        }
    }

    public static void updateAnnRev(List<Account> accTriggerNew, List<Account> accTriggerOld, map<id, account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {
        for (Account eachAcc : accTriggerNew) {
            Account oldAcc = accTriggerOldMap.get(eachAcc.Id);

            if(oldAcc.AnnualRevenue != null && eachAcc.AnnualRevenue < oldAcc.AnnualRevenue){

                eachAcc.addError('Annual Revenue for an account cannot be reduced');
            }
        }
    }

    public static void associateConToAcc(List<Account> accTriggerNew, List<Account> accTriggerOld, map<id, account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap){
        List<Contact> assCon = new list<Contact>();

        for (Account eachAcc : accTriggerNew) {
            Contact newCon = new Contact (
                LastName = eachAcc.Name,
                Phone = eachAcc.Phone,
                AccountId = eachAcc.Id
            );
            assCon.add(newCon);
        }
        if (!assCon.isEmpty()) {
            insert assCon;
        }
    }
}