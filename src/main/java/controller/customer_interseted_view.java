package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerInterest;
import model.model;


@WebServlet("/customer_interseted_view")
public class customer_interseted_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
		String b=(String)request.getParameter("agent_mail_id");
		model model=new model();
		ArrayList<CustomerInterest> list5=model.get_interseted_agent_property(a);	
		if(list5!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("customer_like_view.jsp");
			request.setAttribute("LIST", list5);
			request.setAttribute("kl", b);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("customer_like_view.jsp");
			request.setAttribute("msg", "No Record Found");
			rd.forward(request, response);

		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
