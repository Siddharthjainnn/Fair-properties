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


@WebServlet("/commercial_transitions")
public class commercial_transitions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k=(String)request.getParameter("agent_id");
		String k1=(String)request.getParameter("agent_name"); 
		String k2=(String)request.getParameter("category");
		
		
		if(k2.equals("commercial")) {
			model model=new model();
			ArrayList<PropertyDTO> ok=model.get_commercial_property(k,k2);
			if(ok!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("commercial_Transitions.jsp");
				request.setAttribute("LIST", ok);
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				rd.forward(request, response);
			}
			
		}else {
			
			model model=new model();
			ArrayList<PropertyDTO> ok=model.get_commercial_property(k,k2);
			if(ok!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("residential_Transitions.jsp");
				request.setAttribute("LIST", ok);
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				rd.forward(request, response);
			}
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
