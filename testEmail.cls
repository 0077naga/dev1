public class testEmail {
    public string toaddress{get;set;}
    public string subject{get;set;}
    public string body{get;set;}
    public PageReference show(){
        messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
        string[] toAddress=new string[]{'tomail'};
            mail.setToAddresses(toAddress);
        mail.setSubject('please validate the record');
        mail.setPlainTextBody('hi How are you');
        list<messaging.SingleEmailMessage> msg =new list<messaging.SingleEmailMessage>();
        msg.add(mail);
        messaging.sendEmail(msg);
        return null;
        
        
    }

}