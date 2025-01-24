@isTest
public class AccountProcessorTest {
    
    @isTest
    public static void testCountContacts() {
        Test.startTest();
        
        Account acc1 = new Account(Name = 'Test Account 1');
        Account acc2 = new Account(Name = 'Test Account 2');
        insert new List<Account>{acc1, acc2};

        Contact contact1 = new Contact(FirstName = 'John', LastName = 'Smith', AccountId = acc1.Id);
        Contact contact2 = new Contact(FirstName = 'Jane', LastName = 'Doe', AccountId = acc1.Id);
        Contact contact3 = new Contact(FirstName = 'Emily', LastName = 'Brown', AccountId = acc2.Id);
        insert new List<Contact>{contact1, contact2, contact3};
        
        AccountProcessor.countContacts(new List<Id>{acc1.Id, acc2.Id});
        
        Test.stopTest();
    }
}