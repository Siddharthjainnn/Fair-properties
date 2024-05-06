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


@WebServlet("/search_category")
public class search_category extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String a = request.getParameter("location");
		String b = request.getParameter("service");
		String c = request.getParameter("budget");
		
		model model=new model();
		ArrayList<PropertyDTO> ok=model.get_particular_property(a,b,c);
		
		
		if(ok!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("property.jsp");
			request.setAttribute("LIST", ok);
			rd.forward(request, response);
		}else {
			response.sendRedirect("pnf.jsp");
		}
	}

}
