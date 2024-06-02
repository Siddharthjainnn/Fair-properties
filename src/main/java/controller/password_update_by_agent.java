package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.model;


@WebServlet("/password_update_by_agent")
public class password_update_by_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("new_password");
		String b=(String)request.getParameter("user_id");

		model model=new model();
  int i=model.update_agent_passwword(a,b);
  if(i!=0)
  {
	  response.sendRedirect("agent_login.jsp?source=agent");
  }else {
	  response.sendRedirect("pnf.jsp");
  }
	}

}
