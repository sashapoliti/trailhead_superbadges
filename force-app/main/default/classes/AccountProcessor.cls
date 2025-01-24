public class AccountProcessor {
    @future
    public static void countContacts(List<Id> inputIDs) {
        list<Account> accListUp = new List<Account>();
        
        for (AggregateResult ar : [
            SELECT AccountId, COUNT(Id) contactCount
            FROM Contact
            WHERE AccountId IN :inputIDs
            GROUP BY AccountId
        ]) {
            Account accUp = new Account();
            accUp.Id = (Id) ar.get('AccountId');
            accUp.Number_Of_Contacts__c = (Integer) ar.get('contactCount');
            accListUp.add(accUp);
        }
        
        update accListUp;
    }
}