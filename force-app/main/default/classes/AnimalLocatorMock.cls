@isTest
global with sharing class AnimalLocatorMock implements HttpCalloutMock {
    global HttpResponse respond(HttpRequest req) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"name": "Tiger"}'); // Simula la risposta JSON
        response.setStatusCode(200); // Simula uno stato HTTP valido
        return response;
    }
}