public class AddPrimaryContact implements Queueable {
    private Contact con {get; set;}
    private String state {get; set;}
    
    public AddPrimaryContact(Contact cont, String statecode){
        this.con = cont;
        this.state = statecode;
    }
    
    public void execute(QueueableContext context) {
		
        List<Account> listAcc = [SELECT ID FROM Account WHERE BillingState=:state LIMIT 200];
        List<Contact> listCon = new List<Contact>();
        
        for(Account acc : listAcc){
            con.AccountId = acc.Id;
            listCon.add(con);
        }
        
        Insert listCon;
        
        
    }

}