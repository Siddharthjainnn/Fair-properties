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

@MultipartConfig(maxFileSize = 1603000000)
@WebServlet("/add_image_customer")
public class add_image_customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	        
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("customer_id");
		System.out.println(a+"hello");
		  Part profilePicturePart = request.getPart("image");
		  InputStream is=null;
			
			if(profilePicturePart!=null)
			{
				is=profilePicturePart.getInputStream();
				
			}
	        
		
		   model model=new model();
	        
	        int j=model.add_photo_customer(a,is);
			
			  if(j!=0) { 
		RequestDispatcher rd=request.getRequestDispatcher("more_details_customer.jsp");
			 request.setAttribute("ll", "profile added succesfully"); 
			 rd.forward(request,response); 
			 }
			 
}
}
