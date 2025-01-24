public with sharing class AnimalLocator {

        public static String getAnimalNameById(Integer ID) {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + ID);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            // Deserializza la risposta e accedi a "animal.name"
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal = (Map<String, Object>) results.get('animal'); // Ottieni l'oggetto "animal"
            return (String) animal.get('name'); // Ritorna il valore di "name"
        }
}