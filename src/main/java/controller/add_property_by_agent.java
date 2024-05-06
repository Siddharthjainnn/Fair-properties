package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.model;


@WebServlet("/add_property_by_agent")
public class add_property_by_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
	
		if(a!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("property_by_agent.jsp");
			request.setAttribute("msg", a);
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String propertyid=request.getParameter("propertyid");
		String propertyName = request.getParameter("propertyName");
        String propertyType = request.getParameter("propertyType");
        String location = request.getParameter("location");
        String landmark = request.getParameter("landmark");
        String price = request.getParameter("price");
        String bedroomsStr = request.getParameter("bedrooms");
        String bathroomsStr = request.getParameter("bathrooms");

        // Convert strings to integers
        int bedrooms = Integer.parseInt(bedroomsStr);
        int bathrooms = Integer.parseInt(bathroomsStr);
        Double areaSqft = Double.parseDouble(request.getParameter("areaSqft"));

        String description = request.getParameter("description");
        String listedDate = request.getParameter("listedDate");
        String agentId = request.getParameter("agentId");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String postalCode = request.getParameter("postalCode");
        
        model mode=new model();
        
        int i=model.add_property(propertyid,propertyName, propertyType, location, landmark, price, bedrooms, bathrooms, areaSqft, description, listedDate, agentId, country, city, postalCode);
        
        if(i!=0)
        {
        	RequestDispatcher rd=request.getRequestDispatcher("property_by_agent.jsp");
        	request.setAttribute("ok", "property added succesfully");
        	request.setAttribute("msg", agentId);
        	rd.forward(request, response);
        }
		
	}

}
