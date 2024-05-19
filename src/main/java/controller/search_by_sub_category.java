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


@WebServlet("/search_by_sub_category")
public class search_by_sub_category extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("sub_category");
		
		model ok=new model();
		
		ArrayList<PropertyDTO> list=ok.get_property_by_sub_category(a);
		
		if(ok!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("property.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("property.jsp");
			request.setAttribute("msg", "sorry No Record Found ");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
