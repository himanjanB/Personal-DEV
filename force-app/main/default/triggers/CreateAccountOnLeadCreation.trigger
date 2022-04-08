trigger CreateAccountOnLeadCreation on Lead (after insert) {
    
    List<Account> newAccountList = new List<Account>();
    
    for(Lead lead : Trigger.New) {
        Account account = new Account();
        account.Name = 'Test-Himanjan';
        newAccountList.add(account);
    }

    insert newAccountList;
}