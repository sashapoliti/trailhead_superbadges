@isTest
public class ParkLocatorTest {
    @isTest static void ParkLocatorTest() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'Italy';
        List<String> parks = ParkLocator.country(country);
        System.assertEquals(2, parks.size());
    }
}