public class ContactSearch {
    public static List<Contact> searchForContacts(string lastName, string mailingPostalCode){
        List<Contact> lstContact = [Select ID, Name 
                                    FROM Contact 
                                    WHERE 
                                    LastName=:lastName
                                    AND MailingPostalCode=:mailingPostalCode];
        System.debug(lstContact);
        return lstContact;
        
        
    }

}