package controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/add_property_by_agent")
public class add_property_by_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("agent_id");
		String b=(String)request.getParameter("agent_name");
	
		if(a!=null)
		{
//			RequestDispatcher rd=request.getRequestDispatcher("property_by_agent.jsp");
			RequestDispatcher rd=request.getRequestDispatcher("category.jsp");
			request.setAttribute("msg", a);
			request.setAttribute("msg1", b);
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
//		property_name
//		property_id
//		Property_type
//		category
//		price
//		area
//		width
//		length
//		Transaction
//		Ownership
//		cons_year
//		floors
//		direction
//		openside
//		adress
//		area
//		landmark
//		scheme_no
//		ward
//		assembly
//		zipcode
//		city
//		country
//		state
//		security
//		park_area
//		gas_con
//		water_con
//		no_of_lift
//		overlooking
//		elec
//		fur
//		internet
//		owner_name
//		owner_number
//		owner_email
//		agent_name
//		agent_id
//		status
//		font_image
//		image_1
//		image_2
//		image_3
//		image_4
//		video
//		notes
//		rent
		
		
		
		
		
		
		
		
		
		String property_name = request.getParameter("property_name");
		String property_id = request.getParameter("property_id");
		String property_type = request.getParameter("Property_type");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		String area1Param = request.getParameter("area1");
	Double	area1 = Double.parseDouble(area1Param);
		
		String area= request.getParameter("area");
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
		
		
		
		Part font_image = request.getPart("font_image");
        Part image_1 = request.getPart("image_1");
        Part image_2 = request.getPart("image_2");
        Part image_3 = request.getPart("image_3");
        Part image_4 = request.getPart("image_4");
        Part video = request.getPart("video");

        
        
        
        
        
        InputStream is=null;
        InputStream is1=null;
        InputStream is2=null;
        InputStream is3=null;
        InputStream is4=null;
        InputStream is5=null;
		
		if(font_image!=null)
		{
			is=font_image.getInputStream();
			
		}
		
		if(image_1!=null)
		{
			is1=image_1.getInputStream();
			
		}
		if(image_2!=null)
		{
			is2=image_2.getInputStream();
			
		}
		if(image_3!=null)
		{
			is3=image_3.getInputStream();
			
		}
		
		if(image_4!=null)
		{
			is4=image_4.getInputStream();
			
		}
		if(video!=null)
		{
			is5=video.getInputStream();
			
		}
		
        
		
		
		int i=0;
		int j=0;
        model model = new model();
        
        if(category.equals("commercial"))
        {
        	 i = model.add_property_1(property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent,is,is1,is2,is3,is4,is5,area1);

        }else {
        	 j = model.add_property_2(property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent, is, is1, is2, is3, is4, is5, bedrooms, bathrooms, kitchen, living, dining, parking, carpet_area, garden,area1);

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
        	RequestDispatcher rd=request.getRequestDispatcher("commercial_insertion.jsp");
        	request.setAttribute("ok", "property added succesfully");
        	request.setAttribute("msg", agent_id);
        	rd.forward(request, response);
        }
        
        
        
        if(j!=0)
        {
        	RequestDispatcher rd=request.getRequestDispatcher("residential.jsp");
        	request.setAttribute("ok", "property added succesfully");
        	request.setAttribute("msg", agent_id);
        	rd.forward(request, response);
        }
		
	}

}
