public class AddBuildingsAndFlats {
    public String searchValue {get; set;}
    public List<Contract> contractList {get; set;}
    
    public AddBuildingsAndFlats() {}
    
    public void searchContracts() {
        String searchQuery = 'SELECT Name, ContractNumber, Id FROM Contract WHERE Tenant__r.Name LIKE \'%'+searchValue+'%\' OR Building__r.Name LIKE \'%'+searchValue+'%\'Limit 1';
    	contractList = Database.query(searchQuery);
    }
    
    public void clearSearch() {
        contractList.clear();
    }
}