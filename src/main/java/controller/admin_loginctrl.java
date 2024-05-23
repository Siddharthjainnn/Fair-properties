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
import dao.LoginActivity;
import model.model;




@WebServlet("/admin_loginctrl")
public class admin_loginctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a = (String) request.getParameter("user_id");
		String b = (String) request.getParameter("password");

		model model = new model();
		
		
		Admin ok=model.get_admin_login_2(a,b);
		ArrayList<LoginActivity> list=model.getLoginActivities();

		if(ok!=null)
		{

			
			LocalDate startDate = LocalDate.now().withDayOfMonth(1);
	        LocalDate endDate = LocalDate.now().withDayOfMonth(LocalDate.now().lengthOfMonth());
	        ArrayList<LoginActivity> list4 =model.getLoginActivityCountForDate(startDate, endDate);
	        
	        
	        LocalDate startDate1 = LocalDate.now().with(java.time.DayOfWeek.MONDAY);
	        LocalDate endDate1 = LocalDate.now().with(java.time.DayOfWeek.SUNDAY);

	        ArrayList<LoginActivity> list3 = model.getLoginActivityCountForDate1(startDate1, endDate1);

	        
	        LocalDate today = LocalDate.now();
	        ArrayList<LoginActivity> list2 =model.getLoginActivities2(LocalDate.now());
	        
				response.sendRedirect("admin.jsp");
			
//					request.setAttribute("kk", ok);		
//					request.setAttribute("aa", list);
//					request.setAttribute("aa1", list2);
//					request.setAttribute("aa2", list3);
//					request.setAttribute("aa3", list4);

					HttpSession session = request.getSession();
					session.setAttribute("m", ok);
					
					session.setAttribute("kk", ok);		
					session.setAttribute("aa", list);
					session.setAttribute("aa1", list2);
					session.setAttribute("aa2", list3);
					session.setAttribute("aa3", list4);

				
					
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("kk", "invallied username or password");	
			rd.forward(request, response);
		}
	}

}
