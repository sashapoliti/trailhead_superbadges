public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext sc) {
        List<Lead> leads = [SELECT Id, LeadSource FROM Lead WHERE LeadSource = '' LIMIT 200];
        for (Lead lead : leads) {
            lead.LeadSource = 'Dreamforce';
        }
        update leads;
    }
}