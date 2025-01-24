@isTest
public class DailyLeadProcessorTest {
    @isTest
    public static void testDailyLeadProcessor() {
        List<Lead> leadsList = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            leadsList.add(new Lead(LastName = 'TestLead' + i, LeadSource = '', Company = 'TestLead'));
        }
        insert leadsList;

        Test.startTest();
        DailyLeadProcessor processor = new DailyLeadProcessor();
        String cron = '0 0 12 * * ?';
        System.schedule('Test DailyLeadProcessor', cron, processor);
        Test.stopTest();

        List<Lead> leads = [SELECT Id, LeadSource FROM Lead WHERE LeadSource = 'Dreamforce'];
        System.assertEquals(200, leads.size());
    }
}