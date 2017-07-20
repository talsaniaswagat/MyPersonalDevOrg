@isTest
public class LeadProcessorTest {
	@testSetup
    static void setup(){
        List<Lead> listLead = new List<Lead>();
        
        for(integer i=0; i<200; i++){
            listLead.add(new Lead(LastName='Lead'+i, Company='Test Company', Status='Open - Not Contacted'));
        }
        
        Insert listLead;
    }
    
    static testMethod void updateLeads(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200, [SELECT Count() from Lead where LeadSource='Dreamforce']);
    }
}