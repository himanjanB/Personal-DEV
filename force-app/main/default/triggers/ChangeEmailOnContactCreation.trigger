trigger ChangeEmailOnContactCreation on Contact (after insert) {
    
    List<Contact> contactList = new List<Contact>();
    for(Contact contact : [SELECT Id, Email FROM Contact where Id in:Trigger.New]) {
        contact.Email = 'hello@world.com';
        contactList.add(contact);
    }
    update contactList;
}