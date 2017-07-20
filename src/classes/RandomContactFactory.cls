public class RandomContactFactory {
	public static List<Contact> generateRandomContacts(integer noOfContacts, string lastName)
    {
        List<Contact> lstContact = new List<Contact>();
        
        for(Integer i=0;i<noOfContacts;i++)
        {
            Contact c = new Contact(FirstName='Test'+i, LastName= lastName);
            lstContact.add(c);
        }
        
        return lstContact;
    }
}