// Execute Requirement 1: Update the description field of top 10 opportunities
DummyDataCreation.updateTopOpportunitiesDescription();

// Execute Requirement 2: Create and return n number of opportunities for a particular AccountId
Id accountId = '0018d00000jDfF4AAK'; // Replace with a valid Account Id
Integer numberOfOpportunities = 3; // Define the number of opportunities to create
List<Opportunity> createdOpportunities = DummyDataCreation.createOpportunities(accountId, numberOfOpportunities);

// Execute Requirement 3: Find out all the Accounts with no Contacts and add a contact for each one of them
DummyDataCreation.addContactsToAccountsWithoutContacts();

// Execute Requirement 4: Delete all the opportunities with amount less than 20000 and status as closed lost
DummyDataCreation.deleteOpportunitiesWithCondition();

// Execute Requirement 5: Create N number of Accounts and return all the accounts created
Integer numberOfAccounts = 5; // Define the number of accounts to create
List<Account> createdAccounts = DummyDataCreation.createAndGetAccounts(numberOfAccounts);

// Execute Requirement 6: Create N number of Contacts for each account passed in the list
List<Contact> contactsForAccounts = DummyDataCreation.createContactsForAccounts(3, createdAccounts);

// Execute Requirement 7: Create a Case for each Contact
DummyDataCreation.createCasesForContacts(contactsForAccounts);
