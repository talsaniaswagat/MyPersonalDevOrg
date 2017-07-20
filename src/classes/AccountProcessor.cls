public class AccountProcessor {
    @future
    public static void countContacts(List<Id> listAccIDs){
        List<Account> listAcc = [SELECT ID, Name, (SELECT ID FROM Contacts) FROM Account WHERE ID in :listAccIDs];
        
        System.Debug('ListAcc: ' + listAcc);
        
        for(Account acc : listAcc){
            integer count = 0;
            
            System.Debug('Acc.Contacts: ' + acc.Contacts);
            
            for(Contact con : acc.Contacts){
            	count++;    
            }
            
            acc.Number_of_Contacts__c = count;
        }
        
        update listAcc;
    }
}