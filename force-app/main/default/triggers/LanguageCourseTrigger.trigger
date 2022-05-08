trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    String msg = '';
    String subject = 'Language Course Changes';
    String email = 'urielcaracuel@gmail.com';

    if (Trigger.isInsert){
        msg += 'New courses were added!\n';
    }

    if (Trigger.isUpdate){
        msg += 'These courses were updated!\n';

    }

    if (Trigger.isDelete){
        msg += 'These courses are no longer available.\n';
    }

    for (Language_Course__c lc : Trigger.New){
        msg += lc.Name + '\n';
    }

    msg += 'Thanks for your attention.';

    EmailManager.sendMail(email,subject,msg);
}