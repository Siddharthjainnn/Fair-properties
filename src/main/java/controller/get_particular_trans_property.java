package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.transiction_property;
import model.model;


@WebServlet("/get_particular_trans_property")
public class get_particular_trans_property extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ok=(String)request.getParameter("trans_id");
		String jk=(String)request.getParameter("transition_date");
		model model=new model();
		transiction_property list=model.get_particular_tran_property_a(ok,jk);
		
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("full_transition.jsp");
			request.setAttribute("LIST2", list);
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
