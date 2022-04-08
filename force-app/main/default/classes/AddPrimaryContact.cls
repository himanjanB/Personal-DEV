public class AddPrimaryContact implements Queueable {
    
    private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact contact, String state) {
        this.contact = contact;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Account> accountList = [SELECT Id FROM Account where BillingState =: state LIMIT 199];
        List<Contact> contactList = new List<Contact>();
        Integer count = 0;
        
        for(Account account : accountList) {
            Contact contact = new Contact();
            contact.LastName = 'LN' + count;
            contact.AccountId = account.Id;
            contactList.add(contact);
            count++;
        }
        insert contactList;
    }
}