public class AccountTriggerHelper {
    
    public static void updateAddresses(List<Account> newAccountList) {

        for(Account account : newAccountList) {
            System.debug('Account Name is ' + account.Name);
            account.Phone = '123';
        }
    }
}