public class AddPrimaryContact implements Queueable {
    private Contact contact;
    private String state;
    public AddPrimaryContact(Contact contact, String state) {
        this.contact = contact;
        this.state = state;
    }
    public void execute(QueueableContext context) {        
        list<Account> accList = [select id, name from Account where BillingState =: state limit 200];
        list<Contact> conList = new list<Contact>();
        for(Account acc : accList){
            Contact con = contact.clone();
            con.AccountId = acc.Id;
            conList.add(con);
        }
        insert conList;
    }
}