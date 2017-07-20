public class AccountHandler {
    public static Account insertNewAccount(String AccountName){
        try{
        	Account acc = new Account(Name=AccountName);
        
        	insert acc;
            
            return acc;
        }
        catch(DmlException ex){
            System.debug('A DML exception has occurred: ' + ex.getMessage());
            return null;
        }
    }
}