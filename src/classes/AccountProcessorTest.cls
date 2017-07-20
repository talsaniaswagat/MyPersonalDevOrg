@isTest
public class AccountProcessorTest {
    static testMethod void testcountContacts(){
        Account acc = new Account(Name='Test Account');
        insert acc;
        
        Contact con = new Contact(LastName='Test LastName', AccountId=acc.Id);
        insert con;
        
        System.Debug('Acc: ' + acc);
        System.Debug('Con: ' + con);
        System.Debug('Con.Account: ' + con.Account);
        
        List<Id> listAccIds = new List<Id>();
        listAccIds.add(acc.Id);
        
        test.startTest();
        AccountProcessor.countContacts(listAccIDs);
        test.stopTest();
    }
}