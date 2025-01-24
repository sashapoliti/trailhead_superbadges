public class NewCaseListController {

    public List<Case> getNewCases() {
        List<Case> listCases = [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];
        return listCases;
    }
}