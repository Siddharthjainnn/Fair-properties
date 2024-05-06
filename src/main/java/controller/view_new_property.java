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

@WebServlet("/view_new_property")
public class view_new_property extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String a=(String)request.getParameter("property_id");
	
	model model=new model();
	PropertyDTO ok=model.get_particular_property_view(a);
	
	if(ok!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("view_more_per_id.jsp");
		request.setAttribute("LIST", ok);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("view_more_per_id.jsp");
		request.setAttribute("LIST", "NO PROPERTY TO SHOW");
		rd.forward(request, response);
	}
}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
