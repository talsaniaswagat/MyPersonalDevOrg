@isTest
public class TestVerifyDate {
	@isTest static void testDate2LessThan1()
    {
        Date actualDate = VerifyDate.CheckDates(Date.newInstance(2017, 12, 01), Date.newInstance(2017, 01, 01));
        System.assertEquals(Date.newInstance(2017, 12, 31), actualDate);
    }
    
    @isTest static void testDate2GreaterThan1Plus30()
    {
        Date actualDate = VerifyDate.CheckDates(Date.newInstance(2017, 03, 05), Date.newInstance(2017, 05, 08));
        System.assertEquals(Date.newInstance(2017, 03, 31), actualDate);
    }
    
    @isTest static void testDate2GreaterThan1ButLessThan1Plus30()
    {
        Date actualDate = VerifyDate.CheckDates(Date.newInstance(2017, 07, 11), Date.newInstance(2017, 08, 03));
        System.assertEquals(Date.newInstance(2017, 08, 03), actualDate);
    }
}