package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PropertyDTO;
import model.model;


@WebServlet("/commercial_view")
public class commercial_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k=(String)request.getParameter("property_id");
		
		
		model model=new model();
		PropertyDTO ok=model.get_commercial_property_2(k);
		if(ok!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("commercial_agent.jsp");
			request.setAttribute("LIST", ok);
			rd.forward(request, response);
		}else {
			
			RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
			request.setAttribute("no", "no Record Found");
			rd.forward(request, response);
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
