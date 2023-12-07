public class AccConAndOppOpperations {
    public static List<Account> allAccounts(){
        list<account> listAccounts = [select id, name, AnnualRevenue, type, AccountSource from account];
        return listAccounts;
    }

    public static void allOpps(string ls, string sn){
        List<Opportunity> listOpps = [select name, id, LeadSource, stageName from Opportunity where LeadSource = :ls and stageName = :sn ];
        system.debug(listOpps);
    }

    public static void printAccountOpss() {
        List<Account> listAccounts = [select name, annualrevenue,(select name, amount, stagename from opportunities where stagename = 'closed won') from account where type = 'Customer - Direct'];
        for(account acc : listAccounts){
            system.debug('account name is ' + acc.Name + ', itss ann revenue is ' + acc.AnnualRevenue);
                List<Opportunity> listAccOpps = acc.Opportunities;
                for(Opportunity opp : listAccOpps){
                    system.debug('opp in seperate line is ' + opp);
                }
        }
    }

    public static account createAndReturnAcc(string accName, decimal annRev, string accTy) {
        Account acc = new Account();

        if(accName != ''){
            acc.Name = accName;
            acc.AnnualRevenue = annRev;
            acc.type = accTy;
            insert acc;
        } else {
            system.debug('account cannot be created without name ');
        }
        return acc;
    }
}