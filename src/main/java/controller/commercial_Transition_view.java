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
import dao.transiction_property;
import model.model;


@WebServlet("/commercial_Transition_view")
public class commercial_Transition_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("property_id");
		String k=(String)request.getParameter("agent_id");
		String k2=(String)request.getParameter("category");
		
		if(k2.equals("residential")) {
			
			
			
			
			
			
			model model=new model();
			
			ArrayList<transiction_property>	 kn=model.get_property_transition_view(a);
			
			if(kn!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("PropertyTransitions_view.jsp");
			

				
				request.setAttribute("LIST2", kn);
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				rd.forward(request, response);
			}
			
			
			
			
			
			
			
			
			
			
		}else {
			model model=new model();
			
		ArrayList<transiction_property>	 kn=model.get_property_transition_view(a);
			
			if(kn!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("PropertyTransitions_view.jsp");
				
				
				request.setAttribute("LIST2", kn);
				
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				request.setAttribute("LIST2", kn);
				rd.forward(request, response);
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
