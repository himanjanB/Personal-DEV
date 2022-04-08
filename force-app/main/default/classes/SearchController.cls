public without sharing class SearchController {
    public List<Account> accountList {get; set;}
    public String searchString {get; set;}
    
    public SearchController() {}
    
    public void search() {
        String searchQuery = 'Select name, id, phone from account where name like \'%' + searchString + '%\' limit 20';
        accountList = Database.query(searchQuery);
    }
    
    public void clear() {
        accountList.clear();
    }
}