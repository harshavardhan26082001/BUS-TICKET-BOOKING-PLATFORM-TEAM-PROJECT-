

package com.mycompany.kalki;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;


public class sendemail
 {
    public void mail(String to,String number)

    {
        
  
      
      //String to = "kalkisumanth@gmail.com";
      String from = "kalkisumanth@gmail.com";
      String host = "localhost";
      Properties properties = System.getProperties();
      properties.setProperty("mail.smtp.host", host);
      Session session = Session.getDefaultInstance(properties);

      try {
         
         MimeMessage message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
         message.setSubject("This is the Subject Line!");
         message.setText(number);
         Transport.send(message);
         System.out.println("Sent message successfully....");
        // response.sendRedirect("randomnum.jsp");
      } catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
}

