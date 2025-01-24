public with sharing class ParkLocator {
    /* un metodo country che usa il ParkService class, il metodo ritorna una lista di parchi per un paese passato al web service*/
    public static List<String> country(String country) {
        ParkService.ParksImplPort parkService = new ParkService.ParksImplPort();
        List<String> parks = parkService.byCountry(country);
        System.debug('Parks: ' + parks);
        return parks;
    }
}