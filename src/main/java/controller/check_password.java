package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/check_password")
public class check_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String otp2=(String)request.getParameter("otp2");
		String pass=(String)request.getParameter("pass");
		String agentid=(String)request.getParameter("agentid");
		String a=(String)request.getParameter("1");
		String b=(String)request.getParameter("2");
		String c=(String)request.getParameter("3");
		String d=(String)request.getParameter("4");
		String e=(String)request.getParameter("5");
		
		String concatenatedString = a + b + c + d + e;
		
		System.out.println(concatenatedString);
		
		System.out.println("-------------------");
		System.out.println(otp2);
		
		if(concatenatedString.equals(otp2))
		{
			RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			request.setAttribute("msg", agentid);
			request.setAttribute("msg1", pass);
			rd.forward(request, response);
		}else {
			
			RequestDispatcher rd=request.getRequestDispatcher("otp_confirm.jsp");
			request.setAttribute("msg4","otp you enter was wrong please retry");
			rd.forward(request, response);
		}

		
	}

}