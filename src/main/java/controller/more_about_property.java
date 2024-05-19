package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PropertyDTO;
import model.model;

@WebServlet("/more_about_property")
public class more_about_property extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String property_id=(String)request.getParameter("property_id");
		model ok=new model();
		
		PropertyDTO list=ok.get_commercial_property_2(property_id);
		if(list!=null)
		{
			
		RequestDispatcher rd=request.getRequestDispatcher("more_details.jsp");	
		request.setAttribute("LIST", list);
		rd.forward(request, response);
		}else {
			
			response.sendRedirect("pnf.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
