package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.agent;
import model.model;


@WebServlet("/particular_ageny_info")
public class particular_ageny_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String a=(String)request.getParameter("agent_id");
	 
	 model model=new model();
	 
	 agent list=model.get_particular_agent(a);
	 
	 if(list!=null)
	 {
		 RequestDispatcher rd=request.getRequestDispatcher("particular_agent_info.jsp");
		 request.setAttribute("LIST", list);
		 rd.forward(request, response);
	 }else {
		 response.sendRedirect("pnf.jsp");
	 }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
