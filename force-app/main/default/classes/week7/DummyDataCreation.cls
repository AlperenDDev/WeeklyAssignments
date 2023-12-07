public class DummyDataCreation {
    
    // Requirement 1
    public static void updateTopOpportunitiesDescription() {
        List<Opportunity> topOpportunities = [SELECT Id, Description FROM Opportunity ORDER BY Amount DESC LIMIT 10];
        for(Opportunity opp : topOpportunities) {
            opp.Description = 'This is one of the top 10 opportunities. Please work on this properly';
        }
        update topOpportunities;
    }
    
    // Requirement 2
    public static List<Opportunity> createOpportunities(Id accountId, Integer n) {
        if(n == 0) {
            System.debug('Please tell us how many opportunities need to be created');
            return new List<Opportunity>();
        }
        
        Account acc = [SELECT Name, AnnualRevenue FROM Account WHERE Id = :accountId];
        
        List<Opportunity> newOpportunities = new List<Opportunity>();
        for(Integer i = 0; i < n; i++) {
            Opportunity newOpp = new Opportunity(
                AccountId = accountId,
                CloseDate = Date.today().addYears(3),
                StageName = 'Prospecting',
                Amount = acc.AnnualRevenue / n,
                Name = acc.Name
            );
            newOpportunities.add(newOpp);
        }
        
        insert newOpportunities;
        return newOpportunities;
    }
    
    // Requirement 3
    public static void addContactsToAccountsWithoutContacts() {
        List<Account> accountsWithoutContacts = [SELECT Id, Name, (SELECT Id FROM Contacts) FROM Account WHERE Id NOT IN (SELECT AccountId FROM Contact)];
        
        List<Contact> newContacts = new List<Contact>();
        for(Account acc : accountsWithoutContacts) {
            String uniqueLastName = acc.Name + ' contact';
            Contact newContact = new Contact(
                AccountId = acc.Id,
                LastName = uniqueLastName
            );
            newContacts.add(newContact);
        }
        
        insert newContacts;
    }
    
    // Requirement 4
    public static void deleteOpportunitiesWithCondition() {
        List<Opportunity> opportunitiesToDelete = [SELECT Id FROM Opportunity WHERE Amount < 20000 AND StageName = 'Closed Lost'];
        delete opportunitiesToDelete;
    }
    
    // Requirement 5
    public static List<Account> createAndGetAccounts(Integer n) {
        List<Account> newAccounts = new List<Account>();
        for(Integer i = 0; i < n; i++) {
            Account newAcc = new Account(
                Name = 'New Account ' + String.valueOf(i),
                Rating = 'Hot',
                Phone = '1234567890',
                ShippingStreet = 'Shipping Address ' + String.valueOf(i),
                BillingStreet = 'Billing Address ' + String.valueOf(i)
            );
            newAccounts.add(newAcc);
        }
        
        insert newAccounts;
        return newAccounts;
    }
    
    // Requirement 6
    public static List<Contact> createContactsForAccounts(Integer n, List<Account> accounts) {
        List<Contact> newContacts = new List<Contact>();
        for(Account acc : accounts) {
            for(Integer i = 0; i < n; i++) {
                Contact newContact = new Contact(
                    AccountId = acc.Id,
                    FirstName = 'Contact First Name ' + String.valueOf(i),
                    LastName = 'Contact Last Name ' + String.valueOf(i),
                    Phone = '9876543210',
                    MailingStreet = 'Mailing Address ' + String.valueOf(i),
                    OtherStreet = 'Other Address ' + String.valueOf(i)
                );
                newContacts.add(newContact);
            }
        }
        
        insert newContacts;
        return newContacts;
    }
    
    // Requirement 7
    public static void createCasesForContacts(List<Contact> contacts) {
        List<Case> newCases = new List<Case>();
        for(Contact con : contacts) {
            Case newCase = new Case(
                ContactId = con.Id,
                AccountId = con.AccountId,
                Subject = 'Case Subject for Contact ' + con.LastName,
                Status = 'New',
                Origin = 'Phone'
            );
            newCases.add(newCase);
        }
        
        insert newCases;
    }
}
