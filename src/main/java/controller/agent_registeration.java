package controller;

import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.connector.Request;

import model.model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/agent_registeration")
public class agent_registeration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/*
		 * 
		 * String agentId = request.getParameter("agentId"); String name =
		 * request.getParameter("name"); String email = request.getParameter("email");
		 * String phone = request.getParameter("phone"); String address =
		 * request.getParameter("address"); String companyName =
		 * request.getParameter("companyName"); String licenseNumber =
		 * request.getParameter("licenseNumber"); String specialization =
		 * request.getParameter("specialization"); int experience =
		 * Integer.parseInt(request.getParameter("experience")); String languagesSpoken
		 * = request.getParameter("languagesSpoken"); double commissionRate =
		 * Double.parseDouble(request.getParameter("commissionRate")); Part
		 * profilePicturePart = request.getPart("image"); String socialMediaLinks =
		 * request.getParameter("socialMediaLinks"); String notes =
		 * request.getParameter("notes");
		 */
        
        
        
        
        String agentid=request.getParameter("agentId");
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String licenseNumber = request.getParameter("licenseNumber");
        String specialization = request.getParameter("specialization");
        String experience = request.getParameter("experience");
        String languagesSpoken = request.getParameter("languagesSpoken");
        String commissionRate = request.getParameter("commissionRate");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String salesPerformance = request.getParameter("salesperformance");
        String address = request.getParameter("address");
        String address1 = request.getParameter("address1");
        String country = request.getParameter("country");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String zipcode = request.getParameter("zipcode");
		/* String status = request.getParameter("status"); */
        String status="Submitted";
        String adharcard = request.getParameter("adharcard");
        String pancard=request.getParameter("pancard");
        String notes=request.getParameter("notes");
        Part profile = request.getPart("image");
        Part adharcarddoc = request.getPart("adharcardimage");
        Part pancarddoc = request.getPart("pancarddoc");
        
        
        
        
        
        
        
        InputStream is=null;
        InputStream is1=null;
        InputStream is2=null;
		
		if(profile!=null)
		{
			is=profile.getInputStream();
			
		}
		
		if(adharcarddoc!=null)
		{
			is1=adharcarddoc.getInputStream();
			
		}
		if(pancarddoc!=null)
		{
			is2=pancarddoc.getInputStream();
			
		}
        
		
		
		
		
		
		
        model model=new model();
        
        int j=model.add_agent_1(agentid, fullName, email, phone, licenseNumber, specialization,
                experience, languagesSpoken, commissionRate, dob, gender,
                salesPerformance, address, address1, country, state, city,
                zipcode, status, adharcard, pancard, notes,
                is, is1, is2);
        
        if(j!=0)
		{
        	
        	
        	
			
//			RequestDispatcher rx=request.getRequestDispatcher("add_Product_admin_9.jsp");
//			request.setAttribute("msg", "product added succesffuly");
	sendOrderConfirmationEmail(email, fullName, agentid, phone, licenseNumber, notes);
//			rx.forward(request, response);
	RequestDispatcher rd=request.getRequestDispatcher("agent_login.jsp?source=agent");
	request.setAttribute("msg23", "inserted scussfully");
	rd.forward(request, response);
	/* response.sendRedirect("agent_module.jsp"); */
        	
        	
        	
        	
		}else {
			response.sendRedirect("dupliacte_email.jsp");
//			RequestDispatcher rx=request.getRequestDispatcher("add_Product_admin_9.jsp");
//			request.setAttribute("msg", "product not added ");
//		
//			rx.forward(request, response);
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
	        message.setSubject("Confirmation of Agent Registration Request Received 🏡");
String ok="hello to everyone";
	       
			// Set the email content (HTML content in this example).
	        message.setContent( "<html><body><table class=\"body-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\">\r\n"
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
	                + "                                                    Dear " + a + ",<br><br>"
	                + "                                                    Your request to register as an agent with Fair Property has been successfully received. Once your application is reviewed and approved, we will notify you by email for further process.<br><br>"
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
	                + "</table></body></html>"   , "text/html");
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        

	        
	        
	        
	        

	        // Send the email.
	        Transport.send(message);

}  catch (MessagingException f) {
    f.printStackTrace();
    // Handle email sending errors
}
	}
}
