List<Account> accss = AccConAndOppOpperations.allAccounts();
system.debug(accss);

AccConAndOppOpperations.allOpps('Partner', 'closed Won');
AccConAndOppOpperations.printAccountOpss();

account acc = AccConAndOppOpperations.createAndReturnAcc('oyle', 20202020, 'boylr');
system.debug('accccc ' + acc);