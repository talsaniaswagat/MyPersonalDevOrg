@isTest
public class TestRestrictContactByName {
	@isTest static void TestBeforeInsert()
    {
        List<Contact> lstcontact = new List<Contact>();
        Contact contact1 = new Contact(FirstName='Test', LastName='InvalidName');
        Contact contact2 = new Contact(FirstName='Test', LastName='Valid');
        
        lstcontact.add(contact1);
        lstcontact.add(contact2);
        
      	test.startTest();
        insert lstcontact;
        test.stopTest();
    }
    
    @isTest static void TestBeforeUpdate()
    {
        List<Contact> lstcontact = new List<Contact>();
        Contact contact1 = new Contact(FirstName='Test1', LastName='Valid');
        Contact contact2 = new Contact(FirstName='Test2', LastName='Valid');
        
        lstcontact.add(contact1);
        lstcontact.add(contact2);
        insert lstcontact;
        
        lstcontact = [SELECT ID FROM Contact where LastName='Valid'];
        for(Contact c : lstcontact)
        {
            c.LastName='InvalidName';
        }
        
        update lstcontact;
    }
}