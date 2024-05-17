package controller;

import java.io.IOException;
import java.util.ArrayList;
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

import dao.agent;
import model.model;


@WebServlet("/reject_agent_by_admin")
public class reject_agent_by_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
		String b="rejected";
		
		String c=(String)request.getParameter("agent_user_id");
		String d=(String)request.getParameter("agent_login_id");
		String e=(String)request.getParameter("agent_password");
		String f=(String)request.getParameter("agent_name");
		model model=new model();
		int i=model.update_status_agent(a,b);
		ArrayList<agent> list=model.get_agent_request();
		if(i!=0)
		{
			sendOrderConfirmationEmail(c, d, e, f, a, b);
			RequestDispatcher rd=request.getRequestDispatcher("new_agent_request.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			response.sendRedirect("pnf.jsp");
			
		}
	}
		

		public Properties getMailProperties() {
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
		        message.setSubject("Notification: Rejection of Agent Registration Request");
	String ok="hello to everyone";
		       
				// Set the email content (HTML content in this example).
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
	        + "                                                    Dear " + f + ",<br><br>"
	        + "                                                    We regret to inform you that your request to register as an agent with Fair Property has been rejected due to some issues. We appreciate your interest, and we encourage you to try again in the future.<br><br>"
	        + "                                                    Thank you for considering Fair Property.<br><br>"
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
