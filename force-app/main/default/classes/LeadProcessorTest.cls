@isTest
public class LeadProcessorTest {
	static testMethod void testBatchClass() {
        Test.startTest();
        List <Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            leads.add(new Lead(LastName = 'Test ' + i,
                              Company = 'Test ' + i));
        }
        insert leads;

        LeadProcessor batchClass = new LeadProcessor();
        Database.executeBatch(batchClass);
        
        Test.stopTest();

        List<Lead> updatedLeads = [
            SELECT ID, LeadSource
            FROM Lead
        ];
        for (Lead l : updatedLeads) {
            System.assertEquals('Dreamforce', l.LeadSource);
        }
    }
}