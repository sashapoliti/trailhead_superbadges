public class AccountHandler {
    
    public static Account insertNewAccount(String name) {
        Account newAccount = new Account(Name = name);
        try {
            insert newAccount;
            return newAccount;
        } catch(DmlException e) {
            return null;
        }
    }
}