package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.model;


@WebServlet("/customer_registeration")
public class customer_registeration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String customerName=(String)request.getParameter("customerName");
		String customerMobile=(String)request.getParameter("customerMobile");
		String customerEmail=(String)request.getParameter("customerEmail");
		String customerId=(String)request.getParameter("customerId");
		String password="sxr123";
LocalDateTime currentDateTime = LocalDateTime.now();
        
        // Converting LocalDateTime to String
        String ok = currentDateTime.toString();
		
		
		model model=new model();
		
		int i=model.add_customer(customerName,customerId,customerEmail,customerMobile,password,ok);
		
		
		System.out.println(i);
		if(i!=0)
			
		{
			sendOrderConfirmationEmail(customerEmail, customerName, customerId, customerMobile, password, ok);
			
			RequestDispatcher rd=request.getRequestDispatcher("more_details_customer.jsp");
			request.setAttribute("msg", customerName);
			request.setAttribute("msg1", customerMobile);
			request.setAttribute("msg2", customerEmail);
			request.setAttribute("msg3", customerId);
			rd.forward(request, response);
		}
	}	public Properties getMailProperties() {
	    Properties properties = new Properties();
	    properties.put("mail.smtp.host", "Outlook.com");
	    properties.put("mail.smtp.auth", "true");
	    properties.put("mail.smtp.port", "587");
	    properties.put("mail.smtp.starttls.enable", "true");// Your SMTP port
	    return properties;
	}


	private void sendOrderConfirmationEmail(String recipientEmail,String d,String e,String f,String a,String b) {
		
		Properties properties = getMailProperties();

	    // Create a session with the email server.
	    Session session = Session.getInstance(properties, new Authenticator() {
	        @Override
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication("siddhujain1208@outlook.com","Siddharthjain123@....");
	        }
	    });

	    try {
	    	
	        // Create a MimeMessage.
	        MimeMessage message = new MimeMessage(session);

	        
	        message.setFrom(new InternetAddress("siddhujain1208@outlook.com"));

	        // Set the recipient's email address.
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

	        // Set the email subject.
	        message.setSubject("Congratulations! You're now connected with Fair Property");
String ok="hello to everyone";
	       
//Set the email content (HTML content in this example).
String emailContent = "<html><body><table class=\"body-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\">\r\n"
     + "    <tbody>\r\n"
     + "        <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
     + "            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\"></td>\r\n"
     + "            <td class=\"container\" width=\"600\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"\r\n"
     + "                valign=\"top\">\r\n"
     + "                <div class=\"content\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\r\n"
     + "                    <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"\r\n"
     + "                        bgcolor=\"#fff\">\r\n"
     + "                        <tbody>\r\n"
     + "                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
     + "                                <td class=\"\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: #38414a; margin: 0; padding: 20px;\"\r\n"
     + "                                    align=\"center\" bgcolor=\"#71b6f9\" valign=\"top\">\r\n"
     + "                                    <a href=\"#\" style=\"font-size:32px;color:#fff;\">Fair Property</a> <br>\r\n"
     + "                                    <span style=\"margin-top: 10px;display: block;\">Where Your Real Estate Goals Become Reality.</span>\r\n"
     + "                                </td>\r\n"
     + "                            </tr>\r\n"
     + "                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
     + "                                <td class=\"content-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\">\r\n"
     + "                                    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
     + "                                        <tbody>\r\n"
     + "                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
     + "                                                <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n"
     + "                                                    Dear " + d + ",<br><br>"
     + "                                                    Congratulations! You have successfully connected with Fair Property. Below are your login details:<br><br>"
     + "                                                    User ID: " + e + "<br>"
     + "                                                    Password: " + a + "<br><br>"
     + "                                                    Thank you for choosing Fair Property!<br><br>"
     + "                                                    Best regards,<br>"
     + "                                                    Fair Property Team\r\n"
     + "                                                </td>\r\n"
     + "                                            </tr>\r\n"
     + "                                        </tbody>\r\n"
     + "                                    </table>\r\n"
     + "                                </td>\r\n"
     + "                            </tr>\r\n"
     + "                        </tbody>\r\n"
     + "                    </table>\r\n"
     + "                </div>\r\n"
     + "            </td>\r\n"
     + "            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\"></td>\r\n"
     + "        </tr>\r\n"
     + "    </tbody>\r\n"
     + "</table></body></html>";  


message.setContent(emailContent, "text/html");

	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        

	        
	        
	        
	        

	        // Send the email.
	        Transport.send(message);

}  catch (MessagingException l) {
    l.printStackTrace();
    // Handle email sending errors
}
}
}