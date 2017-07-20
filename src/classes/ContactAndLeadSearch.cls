public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(string keyword){
        List<List<SObject>> lst = [FIND :keyword
                                  IN NAME FIELDS
                                  RETURNING Contact(ID, Name), Lead(ID, Name)];
        List<Contact> lstAcc = (List<Contact>)lst[0];
        List<Lead> lstLead = (List<Lead>)lst[1];
        
        System.debug('Found the following Contacts.');
        for(Contact c : lstAcc){
            System.debug(c.Name);
        }
        
        System.debug('Found the following Leads.');
        for(Lead l : lstLead){
            System.debug(l.Name);
        }
        return lst;
    }

}