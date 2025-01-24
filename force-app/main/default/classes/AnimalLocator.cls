public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer ID) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + ID);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200) {
            String results = JSON.deserializeUntyped(response.getBody()).get('name');
            return results;
        } else {
            return 'Animal not found';
        }
    }
}