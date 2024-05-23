package controller;

import java.io.IOException;
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

@WebServlet("/customer_intersted")
public class customer_intersted extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("customer_id");
		String b=(String)request.getParameter("customer_mail_id");
		String c=(String)request.getParameter("proprty_id");
		String d=(String)request.getParameter("property_name");
		String e=(String)request.getParameter("customer_name");
		String f=(String)request.getParameter("agent_id");
		
		
		
		
		
		
		
		
		model model=new model();
		

		 String recipientEmail = b; // Retrieve customer's email.
			/* String orderDetails = generateOrderDetails(); */ // Create the order details content.
		    sendOrderConfirmationEmail(recipientEmail,a,b,c,d,e);
		    
		    model.customer_interseted_in_property(a,b,c,d,e,f);

		    RequestDispatcher dispatcher = request.getRequestDispatcher("thankyou.jsp");
		    dispatcher.forward(request, response);

	}
	public Properties getMailProperties() {
	    Properties properties = new Properties();
	    properties.put("mail.smtp.host", "Outlook.com");
	    properties.put("mail.smtp.auth", "true");
	    properties.put("mail.smtp.port", "587");
	    properties.put("mail.smtp.starttls.enable", "true");// Your SMTP port
	    return properties;
	}


	private void sendOrderConfirmationEmail(String recipientEmail,String a,String b,String c,String d,String e) {
		
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
	        message.setSubject("Notification: Thanks for your interest in Property");
String ok="hello to everyone";
	       
			// Set the email content (HTML content in this example).
	        message.setContent(
	        		"<html><body><table class=\"body-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\">\r\n"
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
	        		+ "                                                    Respected  : "+ e+"("+a+")<strong style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">1\r\n"
	        		+ "                                Your  request for your intersted property No : "+c+"</strong> Is sent to your mail id: "+b+" our agent will conatact you shortly for the property name "+d+".\r\n"
	        		+ "                                                </td>\r\n"
	        		+ "                                            </tr>\r\n"
	        		+ "                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
	        		+ "                                                <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n"
	        		+ "                                                   Please let us know if you have any questions or if there's anything else we can assist you with. Our team is here to help you find your dream property.\r\n"
	        		+ "                                                </td>\r\n"
	        		+ "                                            </tr>\r\n"
	        		+ "                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
	        		+ "                                                <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n"
	        		+ "                                                    <a href=\"http://localhost:8080/Bitsquad_real_estate/home.jsp\" class=\"btn-primary\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #FFF; text-decoration: none; line-height: 2em; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; text-transform: capitalize; background-color: #f1556c; margin: 0; border-color: #f1556c; border-style: solid; border-width: 8px 16px;\">\r\n"
	        		+ "                                    more related property</a>\r\n"
	        		+ "                                                </td>\r\n"
	        		+ "                                            </tr>\r\n"
	        		+ "                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
	        		+ "                                                <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n"
	        		+ "                                                    Thanks for choosing <b>Fair Property</b> .\r\n"
	        		+ "                                                </td>\r\n"
	        		+ "                                            </tr>\r\n"
	        		+ "                                        </tbody>\r\n"
	        		+ "                                    </table>\r\n"
	        		+ "                                </td>\r\n"
	        		+ "                            </tr>\r\n"
	        		+ "                        </tbody>\r\n"
	        		+ "                    </table>\r\n"
	        		+ "                    <div class=\"footer\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\">\r\n"
	        		+ "                        <table width=\"100%\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
	        		+ "                            <tbody>\r\n"
	        		+ "                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n"
	        		+ "                                    <td class=\"aligncenter content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\"><a href=\"#\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">Unsubscribe</a> from these alerts.\r\n"
	        		+ "                                    </td>\r\n"
	        		+ "                                </tr>\r\n"
	        		+ "                            </tbody>\r\n"
	        		+ "                        </table>\r\n"
	        		+ "                    </div>\r\n"
	        		+ "                </div>\r\n"
	        		+ "            </td>\r\n"
	        		+ "            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\"></td>\r\n"
	        		+ "        </tr>\r\n"
	        		+ "    </tbody>\r\n"
	        		+ "</table></body></html>", "text/html");

	        // Send the email.
	        Transport.send(message);
	    } catch (MessagingException f) {
	        f.printStackTrace();
	        // Handle email sending errors
	    }
	}

		
	


	


		
		
		
		
		
		
		
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
