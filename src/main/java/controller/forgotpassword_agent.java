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

import dao.agent;
import model.model;

import java.util.Random;

@WebServlet("/forgotpassword_agent")
public class forgotpassword_agent extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	
    	String ee=(String)request.getParameter("email");
    	
    	model model=new model();
    	
    	agent ok=model.getparticular_agent_byemail(ee);
    	if(ok!=null)
    	{
    		
    		
    		
    		 String otp = generateOTP1();
             
             RequestDispatcher rd=request.getRequestDispatcher("otp_confirm.jsp");
             
             request.setAttribute("a2", otp);
             request.setAttribute("a3", ok);
     
             rd.forward(request, response);
             
             
             sendPasswordResetEmail(ee, otp);
             System.out.println("yaha tk aya2 ");
    		
    		
    	}else {
    		
    		RequestDispatcher rd=request.getRequestDispatcher("forgotpasswordagent.jsp");
    		request.setAttribute("a1", "No Account Found");
    		rd.forward(request, response);
    	}
    	
    	
    }
    
    




	public Properties getMailProperties1() {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.office365.com");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.starttls.enable", "true");
        return properties;
    }

	 private void sendPasswordResetEmail(String ee, String otp) {
        Properties properties = getMailProperties1();

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("siddhujain1208@outlook.com", "Siddharthjain123@....");
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("siddhujain1208@outlook.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(ee));
            message.setSubject("Password Reset OTP");
            System.out.println("yaha tk aya 3 ");
            String emailContent = "<html><body>"
                                + "<h2>Password Reset OTP</h2>"
                                + "<p>Hello,</p>"
                                + "<p>Your OTP for resetting the password for Agent Account  is: <strong>" + otp + "</strong></p>"
                                + "<p>If you didn't request this, please ignore this email.</p>"
                                + "<p>Best regards,<br>Fair Property Team</p>"
                                + "</body></html>";

            message.setContent(emailContent, "text/html");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    private String generateOTP1() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder otp = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            otp.append(characters.charAt(random.nextInt(characters.length())));
        }
        System.out.println("yaha tk aya5 ");
        return otp.toString();
    }


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String agentId = request.getParameter("agent_id");
        String password = request.getParameter("password");
        
        
      

        
        System.out.println("yaha tk aya ");
        if (email != null) {
            String otp = generateOTP1();
            sendPasswordResetEmail(email, name, agentId, password, otp);
            RequestDispatcher rd=request.getRequestDispatcher("otp_confirm.jsp");
            request.setAttribute("msg", otp);
            
            
            request.setAttribute("msg1", password);
            request.setAttribute("msg2", agentId);
            rd.forward(request, response);
            System.out.println("yaha tk aya2 ");
        }
    }

    public Properties getMailProperties() {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.office365.com");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.starttls.enable", "true");
        return properties;
    }

    private void sendPasswordResetEmail(String recipientEmail, String name, String agentId, String password, String otp) {
        Properties properties = getMailProperties1();

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("siddhujain1208@outlook.com", "Siddharthjain123@....");
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("siddhujain1208@outlook.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
            message.setSubject("Password Reset OTP");
            System.out.println("yaha tk aya 3 ");
            String emailContent = "<html><body>"
                                + "<h2>Password Reset OTP</h2>"
                                + "<p>Hello " + name + ",</p>"
                                + "<p>Your OTP for resetting the password for Agent ID " + agentId + " is: <strong>" + otp + "</strong></p>"
                                + "<p>If you didn't request this, please ignore this email.</p>"
                                + "<p>Best regards,<br>Fair Property Team</p>"
                                + "</body></html>";

            message.setContent(emailContent, "text/html");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    private String generateOTP() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder otp = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            otp.append(characters.charAt(random.nextInt(characters.length())));
        }
        System.out.println("yaha tk aya5 ");
        return otp.toString();
    }
}
