package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/edit_trans_property_by_agent")
public class edit_trans_property_by_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
		String b=(String)request.getParameter("agent_name");
	
		if(a!=null)
		{
//			RequestDispatcher rd=request.getRequestDispatcher("property_by_agent.jsp");
			RequestDispatcher rd=request.getRequestDispatcher("category_view_trans.jsp");
			request.setAttribute("msg", a);
			request.setAttribute("msg1", b);
			rd.forward(request, response);
		}
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
