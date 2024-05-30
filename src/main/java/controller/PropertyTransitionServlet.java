package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PropertyDTO;
import dao.transiction_property;
import model.model;


@WebServlet("/PropertyTransitionServlet")
public class PropertyTransitionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String transitionId = request.getParameter("transitionId");
        String propertyId = request.getParameter("propertyId");
        String propertyType = request.getParameter("propertyType");
        String oldOwnerName = request.getParameter("oldOwnerName");
        String oldOwnerEmail = request.getParameter("oldOwnerEmail");
        String oldOwnerPhoneNo = request.getParameter("oldOwnerPhoneNo");
        String currentOwnerName = request.getParameter("currentOwnerName");
        String currentOwnerEmail = request.getParameter("currentOwnerEmail");
        String currentOwnerPhoneNo = request.getParameter("currentOwnerPhoneNo");
        String newOwnerName = request.getParameter("newOwnerName");
        String newOwnerEmail = request.getParameter("newOwnerEmail");
        String newOwnerPhoneNo = request.getParameter("newOwnerPhoneNo");
        String status = request.getParameter("status");
        String currentPrice = request.getParameter("currentPrice");
        String oldPrice = request.getParameter("oldPrice");
        String newPrice = request.getParameter("newPrice");
        String currentAgentId = request.getParameter("currentAgentId");
        String oldRent = request.getParameter("oldRent");
        String newRent = request.getParameter("newRent");
        String currentRent = request.getParameter("currentRent");
        String oldLeaseEndDate = request.getParameter("oldLeaseEndDate");
        String currentLeaseEndDate = request.getParameter("currentLeaseEndDate");
        String propertyCategory = request.getParameter("propertyCategory");

        model model=new model();
        
        int i=model.add_Property_TransitionServlet(transitionId, propertyId, propertyType, oldOwnerName, oldOwnerEmail, oldOwnerPhoneNo, currentOwnerName, currentOwnerEmail, currentOwnerPhoneNo, newOwnerName, newOwnerEmail, newOwnerPhoneNo, status, currentPrice, oldPrice, newPrice, currentAgentId, oldRent, newRent, currentRent, oldLeaseEndDate, currentLeaseEndDate, propertyCategory);
        
        PropertyDTO ok=model.get_commercial_property_2(propertyId);
		transiction_property kn=model.get_particular_tran_property(propertyId);
        if(i!=0)
        {
        	RequestDispatcher rd=request.getRequestDispatcher("PropertyTransitions.jsp");
        	request.setAttribute("LIST", ok);
			
			request.setAttribute("LIST2", kn);
        	request.setAttribute("msg", "record inserted succesfully");
        	rd.forward(request, response);
        }else {
        	RequestDispatcher rd=request.getRequestDispatcher("PropertyTransitions.jsp");
        	request.setAttribute("LIST", ok);
			
			request.setAttribute("LIST2", kn);
        	request.setAttribute("msg", "record Not inserted ");
        	rd.forward(request, response);
        }
	}

}
