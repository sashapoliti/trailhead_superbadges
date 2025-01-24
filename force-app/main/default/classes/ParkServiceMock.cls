global class ParkServiceMock implements WebServiceMock {
    global void doInvoke(
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ) {
        // Crea un'istanza di byCountryResponse
        ParkService.byCountryResponse mockResponse = new ParkService.byCountryResponse();
        mockResponse.return_x = new String[]{'Parco 1', 'Parco 2'}; // Lista simulata dei parchi
        
        // Inserisce la risposta nel Map
        response.put('response_x', mockResponse);
    }
}
