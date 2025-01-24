@isTest
private class TestRestrictContactByName {

    @isTest
    static void myUnitTest() {

        Contact c = new Contact(LastName = 'INVALIDNAME');
        insert c;
        //Assert that the insert failed
        System.assert(c.Id == null);
    }
}