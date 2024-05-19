package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.PropertyDTO;
import model.model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/commercial_update")
public class commercial_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k=(String)request.getParameter("agent_id");
		String k1=(String)request.getParameter("agent_name"); 
		String k2=(String)request.getParameter("category");
		
		
		if(k2.equals("commercial")) {
			model model=new model();
			ArrayList<PropertyDTO> ok=model.get_commercial_property(k,k2);
			if(ok!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("update_commercial.jsp");
				request.setAttribute("LIST", ok);
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				rd.forward(request, response);
			}
			
		}else {
			
			model model=new model();
			ArrayList<PropertyDTO> ok=model.get_commercial_property(k,k2);
			if(ok!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("update_commercial.jsp");
				request.setAttribute("LIST", ok);
				rd.forward(request, response);
			}else {
				
				RequestDispatcher rd=request.getRequestDispatcher("category_view.jsp");
				request.setAttribute("no", "no Record Found");
				rd.forward(request, response);
			}
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String property_name = request.getParameter("property_name");
		String property_id = request.getParameter("property_id");
		String property_type = request.getParameter("Property_type");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		String area = request.getParameter("area");
		String width = request.getParameter("width");
		String length = request.getParameter("length");
		String transaction = request.getParameter("Transaction");
		String ownership = request.getParameter("Ownership");
		String cons_year = request.getParameter("cons_year");
		String floors = request.getParameter("floors");
		String direction = request.getParameter("direction");
		String openside = request.getParameter("openside");
		String address = request.getParameter("adress");
		String landmark = request.getParameter("landmark");
		String scheme_no = request.getParameter("scheme_no");
		String ward = request.getParameter("ward");
		String assembly = request.getParameter("assembly");
		String zipcode = request.getParameter("zipcode");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String security = request.getParameter("security");
		String park_area = request.getParameter("park_area");
		String gas_con = request.getParameter("gas_con");
		String water_con = request.getParameter("water_con");
		String no_of_lift = request.getParameter("no_of_lift");
		String overlooking = request.getParameter("overlooking");
		String elec = request.getParameter("elec");
		String fur = request.getParameter("fur");
		String internet = request.getParameter("internet");
		String owner_name = request.getParameter("owner_name");
		String owner_number = request.getParameter("owner_number");
		String owner_email = request.getParameter("owner_email");
		String agent_name = request.getParameter("agent_name");
		String agent_id = request.getParameter("agent_id");
		String status = request.getParameter("status");
		
		
		
		
		String bedrooms=request.getParameter("bedrooms");
		String bathrooms=request.getParameter("bathrooms");
		String kitchen=request.getParameter("kitchen");
		String living=request.getParameter("living");
		String dining=request.getParameter("dining");

		String parking=request.getParameter("parking");
		String carpet_area=request.getParameter("carpet_area");
		String garden=request.getParameter("garden");

		// For image and video, you might need to handle them differently based on your database and how you're storing/retrieving blobs.
		// Retrieving images and videos from blobs would involve reading from InputStreams.

		String notes = request.getParameter("notes");
		
		String rent =(String)request.getParameter("rent");
		
		
		
		
		
        
		
		
		int i=0;
		int j=0;
        model model = new model();
        
        if(category.equals("commercial"))
        {
        	 i = model.update_property_1(property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent);

        }else {
        	 j = model.update_property_2(property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent, bedrooms, bathrooms, kitchen, living, dining, parking, carpet_area, garden);

        }
        
        
        
		
		

		//		String propertyid=request.getParameter("propertyid");
//		String propertyName = request.getParameter("propertyName");
//        String propertyType = request.getParameter("propertyType");
//        String location = request.getParameter("location");
//        String landmark = request.getParameter("landmark");
//        String price = request.getParameter("price");
//        String bedroomsStr = request.getParameter("bedrooms");
//        String bathroomsStr = request.getParameter("bathrooms");
//
//        // Convert strings to integers
//        int bedrooms = Integer.parseInt(bedroomsStr);
//        int bathrooms = Integer.parseInt(bathroomsStr);
//        Double areaSqft = Double.parseDouble(request.getParameter("areaSqft"));
//
//        String description = request.getParameter("description");
//        String listedDate = request.getParameter("listedDate");
//        String agentId = request.getParameter("agentId");
//        String country = request.getParameter("country");
//        String city = request.getParameter("city");
//        String postalCode = request.getParameter("postalCode");
//        
//        model mode=new model();
//        
//        int i=model.add_property(propertyid,propertyName, propertyType, location, landmark, price, bedrooms, bathrooms, areaSqft, description, listedDate, agentId, country, city, postalCode);
//        
        
        if(i!=0)
        {
        	PropertyDTO ok=model.get_commercial_property_2(property_id);
        	RequestDispatcher rd=request.getRequestDispatcher("commercial_update_new.jsp");
        	request.setAttribute("ok", "property Updated succesfully");
			/* request.setAttribute("msg", agent_id); */
        	request.setAttribute("LIST", ok);
        	rd.forward(request, response);
        }
        
        
        
        if(j!=0)
        {
        	PropertyDTO ok=model.get_commercial_property_2(property_id);
        	RequestDispatcher rd=request.getRequestDispatcher("residential_update_new.jsp");
        	request.setAttribute("ok", "property added succesfully");
			/* request.setAttribute("msg", agent_id); */
        	request.setAttribute("LIST", ok);
        	rd.forward(request, response);
        }
		
	}

}
