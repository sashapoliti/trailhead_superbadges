public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String inputName) {
        List<List<SObject>> outputList = [FIND :inputName IN ALL FIELDS RETURNING Contact(Id, Name, FirstName, LastName), Lead(Id, Name, FirstName, LastName)];
        return outputList;
    }
}