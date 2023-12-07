public class SecretBankAccount {
    private Integer accountNumber;
    private String accountName;
    private Decimal balance;

    public SecretBankAccount(Integer accNumber, String accName, Decimal initialBalance) {
        accountNumber = accNumber;
        accountName = accName;
        balance = initialBalance;
    }

    public void deposit(Decimal amount) {
        if (amount > 0) {
            balance += amount;
            System.debug('Amount Deposited Successfully!');
            System.debug('Amount Deposited: ' + String.valueOf(amount.setScale(2)) + '\nCurrent Balance: ' + String.valueOf(balance.setScale(2)));
        } else {
            System.debug('ERROR: Invalid Deposit Amount');
        }
    }

    public void withdraw(Decimal amount) {
        if (amount > 0) {
            if (amount <= balance) {
                balance -= amount;
                System.debug('Amount Withdrawn Successfully!');
                System.debug('Amount Withdrawn: ' + String.valueOf(amount.setScale(2)) + '\nCurrent Balance: ' + String.valueOf(balance.setScale(2)));
            } else {
                System.debug('ERROR: Sorry, Sufficient Balance not Available!');
                System.debug('Current Balance: ' + String.valueOf(balance.setScale(2)));
            }
        } else {
            System.debug('ERROR: Invalid Withdrawal Amount');
        }
    }

    public void seeAccountDetails() {
        System.debug('Account Number: ' + accountNumber);
        System.debug('Account Name: ' + accountName);
        System.debug('Available Balance: ' + String.valueOf(balance.setScale(2)));
    }
}