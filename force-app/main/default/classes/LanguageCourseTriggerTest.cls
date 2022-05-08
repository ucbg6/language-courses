@IsTest
public class LanguageCourseTriggerTest {
    @IsTest 
    static void testEmail(){
        Language_Course_Instructor__c instructor = new Language_Course_Instructor__c(Name='Test Instructor');
        Language_Course__c course = new Language_Course__c(Name='Test Course', Course_Instructor__c = instructor.Id);
        insert instructor;
        insert course;
        Test.startTest();

        Test.stopTest();
        // System.assert(result.isSuccess(),'ok');
    }
}
