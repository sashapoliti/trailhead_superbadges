@isTest
public class AddPrimaryContactTest {
    @isTest
    public static void testAddPrimaryContact() {
        list<Account> accListNY = new list<Account>();
        list<Account> accListCA = new list<Account>();
        for(Integer i = 0; i < 50; i++){
            Account accNY = new Account(Name = 'Account' + i,
                                        BillingState = 'NY');
            accListNY.add(accNY);
            Account accCA = new Account(Name = 'Account' + i,
                                        BillingState = 'CA');
            accListCA.add(accCA);
        }
        insert accListNY;
        insert accListCA;
        
        Contact contact = new Contact(FirstName = 'Test',
                                     LastName = 'Contact');
        String state = 'CA';

        /* Create an instance of the AddPrimaryContact class, enqueue the job, and assert that a Contact record was inserted for each of the 50 Accounts with the BillingState of CA */
        
        Test.startTest();
        AddPrimaryContact addPrimaryContact = new AddPrimaryContact(contact, state);
        System.enqueueJob(addPrimaryContact);
        Test.stopTest();
        
        list<Contact> conList = [select id from Contact where Account.BillingState =: state];
        system.assertEquals(1, conList.size());
    }
}