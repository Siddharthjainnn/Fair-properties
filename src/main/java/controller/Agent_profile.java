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


@WebServlet("/Agent_profile")
public class Agent_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
		model model=new model();
		agent list=model.get_particular_agent(a);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("agent_profile.jsp");
			request.setAttribute("LIST",list );
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
