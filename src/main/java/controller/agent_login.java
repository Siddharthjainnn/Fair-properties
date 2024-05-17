package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin;
import dao.agent;
import model.model;


@WebServlet("/agent_login")
public class agent_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a = (String) request.getParameter("user_id");
		String b = (String) request.getParameter("password");

		model model = new model();
		
		
		agent ok=model.get_agent_login_2(a,b);

		if(ok!=null)
		{

				response.sendRedirect("agent.jsp");
			
					request.setAttribute("kk", ok);		
					

					HttpSession session = request.getSession();
					session.setAttribute("m", ok);
				
					
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("agent_login.jsp");
			request.setAttribute("kk", "invallied username or password");	
			rd.forward(request, response);
		}
	}


}
