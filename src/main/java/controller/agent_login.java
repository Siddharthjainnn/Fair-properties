package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin;
import dao.CustomerInterest;
import dao.LoginActivity;
import dao.PropertyDTO;
import dao.agent;
import model.model;


@WebServlet("/agent_login")
public class agent_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a = (String) request.getParameter("user_id");
		String b = (String) request.getParameter("password");

		model model = new model();
		
		
		agent ok=model.get_agent_login_2(a,b);
		ArrayList<LoginActivity> list=model.getLoginActivities();
		ArrayList<CustomerInterest> list5=model.get_interseted_agent_property(a);
	ArrayList<PropertyDTO> list6=model.get_more_property_by_agent(a);
		
		

		if(ok!=null)
		{

				response.sendRedirect("agent.jsp");
				
				LocalDate startDate = LocalDate.now().withDayOfMonth(1);
		        LocalDate endDate = LocalDate.now().withDayOfMonth(LocalDate.now().lengthOfMonth());
		        ArrayList<LoginActivity> list4 =model.getLoginActivityCountForDate(startDate, endDate);
		        
		        
		        LocalDate startDate1 = LocalDate.now().with(java.time.DayOfWeek.MONDAY);
		        LocalDate endDate1 = LocalDate.now().with(java.time.DayOfWeek.SUNDAY);

		        ArrayList<LoginActivity> list3 = model.getLoginActivityCountForDate1(startDate1, endDate1);

		        
		        LocalDate today = LocalDate.now();
		        ArrayList<LoginActivity> list2 =model.getLoginActivities2(LocalDate.now());
			
					request.setAttribute("kk", ok);		
					

					HttpSession session = request.getSession();
					session.setAttribute("m", ok);
					session.setAttribute("aa", list);
					session.setAttribute("aa1", list2);
					session.setAttribute("aa2", list3);
					session.setAttribute("aa3", list4);
					session.setAttribute("aa4", list5);
					session.setAttribute("aa5", list6);
					
					
					
				
					
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("agent_login.jsp");
			request.setAttribute("kk", "invallied username or password");	
			rd.forward(request, response);
		}
	}


}
