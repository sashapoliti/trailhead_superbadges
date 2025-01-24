@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        /* prendo dall'url l'id */
        List<String> animals = new List<String>{'majestic badger', 'fluffy bunny', 'scary bear', 'chicken', 'mighty moose'};
        String ID = request.getEndpoint().substringAfterLast('/');        
        response.setHeader('Content-Type', 'application/json');
        response.setBody(animals[Integer.valueOf(ID)-1]);
        response.setStatusCode(200);
        return response;
    }
}