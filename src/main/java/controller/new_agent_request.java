package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import dao.agent;
import model.model;


@WebServlet("/new_agent_request")
public class new_agent_request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("source");
		model model=new model();
		ArrayList<agent> list=model.get_agent_request();//submitted
		ArrayList<agent> list1=model.get_agent_request1();//rejected
		ArrayList<agent> list2=model.get_agent_request2();//need more info
		ArrayList<agent> list3=model.get_agent_request3();//confirm
		
		
		if(list!=null)
			
		{
			
		RequestDispatcher rd=request.getRequestDispatcher("new_agent_request.jsp");
		request.setAttribute("LIST", list);
		request.setAttribute("LIST1", list1);
		request.setAttribute("LIST2", list2);
		request.setAttribute("LIST3", list3);
		request.setAttribute("source", a);
		
		rd.forward(request, response);
		
		}else {
			
			response.sendRedirect("pnf.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
