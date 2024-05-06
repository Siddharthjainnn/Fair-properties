package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.model;


@WebServlet("/logoutctrl")
public class logoutctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		   model model=new model();
			
			session.invalidate();
			
			System.out.println("i have done ");
			response.sendRedirect("home.jsp");
			System.out.println("i have redirect it ");
			
			response.setHeader("cache-control", "no-store");
			response.setHeader("pragma", "no-cache");
			response.setHeader("expire", "0");
			
		}

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
