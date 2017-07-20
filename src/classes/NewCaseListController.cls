public class NewCaseListController {
    public List<Case> getNewCases(){
        
        List<Case> lstCase = [SELECT ID, CaseNumber from Case where status='New'];
        return lstCase;
    }

}