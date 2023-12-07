list<Opportunity> listOpp = new list<Opportunity>();
for (Integer i = 0; i < 8; i++) {
    Opportunity opp = new Opportunity();
    opp.Name = 'test trigger opp name' + i;
    opp.StageName= 'test trigger opp stage name ' + i;
    opp.CloseDate= Date.today().addDays(20);
    opp.Amount = 350000;
    listOpp.add(opp);
}

insert listOpp;

