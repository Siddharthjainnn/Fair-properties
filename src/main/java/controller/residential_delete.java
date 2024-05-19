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


@WebServlet("/residential_delete")
public class residential_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("property_id");
		String k=(String)request.getParameter("agent_id");
		String k2=(String)request.getParameter("category");
		model model=new model();
	int i=	model.delete_commercial(a);
	
	ArrayList<PropertyDTO> ok=model.get_residential_property(k,k2);
	if(i!=0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("update_residential.jsp");
		request.setAttribute("msg", "delted succefully");
		request.setAttribute("LIST", ok);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("update_residential.jsp");
		request.setAttribute("msg", " not delted ");
		request.setAttribute("LIST", ok);
		rd.forward(request, response);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
