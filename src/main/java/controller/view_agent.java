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
import dao.agent;
import model.model;


@WebServlet("/view_agent")
public class view_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
	     String b=(String)request.getParameter("property_id");
	     model ok=new model();
	     
	     agent list=ok.get_particular_agent(a);
	     PropertyDTO list1=ok.get_commercial_property_2(b);
	ArrayList<PropertyDTO>list2=ok.get_more_property_by_agent(a);
	     if(list!=null)
	     {
	    	 RequestDispatcher rd=request.getRequestDispatcher("agent_property_view.jsp");
	    	 request.setAttribute("LIST", list);
	    	 request.setAttribute("LIST1", list1);
	    	 request.setAttribute("LIST2", list2);
	    	 rd.forward(request, response);
	     }else {
	    	 response.sendRedirect("pnf.jsp");
	     }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
