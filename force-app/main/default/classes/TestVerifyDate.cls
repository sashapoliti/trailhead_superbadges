@isTest
private class TestVerifyDate {

    @isTest
    static void myUnitTest() {

        Date date1 = Date.newInstance(2020, 1, 1);
        Date date2 = Date.today();
        Date date3 = date2 + 7;

        Test.startTest();
        VerifyDate.CheckDates(date1, date2);
        VerifyDate.CheckDates(date2, date3);
        Test.stopTest();
    }
}