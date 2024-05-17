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


@WebServlet("/residential_update")
public class residential_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k=(String)request.getParameter("agent_id");
		String k1=(String)request.getParameter("agent_name"); 
		String k2=(String)request.getParameter("category");
		System.out.println("step 1 agentid="+k);
		System.out.println("step 1 agentid="+k2);
		model model=new model();
		ArrayList<PropertyDTO> ok=model.get_residential_property(k,k2);
		System.out.println("mere pass kuchc aya h ="+ok);
		if(ok!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("update_residential.jsp");
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
