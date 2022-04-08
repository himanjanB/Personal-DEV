public class AnimalLocator {

    public class Animal {
        public Integer id;
        public String name;
        public String eats;
        public String says;
    }
    
    public Animal animal;
    
    public static String getAnimalNameById(Integer num) {
    
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + num);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        AnimalLocator obj= new AnimalLocator();
        obj=(AnimalLocator) System.JSON.deserialize(response.getBody(), AnimalLocator.class);
        return obj.animal.name;
    }
}