package model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dao.Admin;
import dao.Customer;
import dao.PropertyDTO;
import dao.agent;

public class model {
	public static Connection create_connection()
	 {
		 Connection con=null;
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_master","root","root");
		} catch (Exception e) {
			e.printStackTrace();	}
		 return con;
	 }

	public Admin get_admin_login_2(String a, String b) {
		Admin ok=null;
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("select * from admin_1 where user_id=? and password=?");
			ps.setString(1, a);
			ps.setString(2, b);
			System.out.println(a+" "+b);
		ResultSet rs=	ps.executeQuery();
		System.out.println("till this done");
		
		while(rs.next())
		{
			System.out.println("till this done");
			ok=new Admin(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
		System.out.println(rs.getString("name")+"  "+ rs.getString("user_id")+"  "+ rs.getString("password")+"  "+ rs.getString("gender"));
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ok;
	}

	public ArrayList<PropertyDTO> get_particular_property(String a, String b, String c) {
ArrayList<PropertyDTO> list=new ArrayList<>();
Connection con=null;
try {
	con=create_connection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM properties WHERE location = ? AND property_type = ? AND price = ? ");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
			
			ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			  PropertyDTO property = new PropertyDTO(
                      rs.getInt("property_id"),
                      rs.getString("property_name"),
                      rs.getString("property_type"),
                      rs.getString("location"),
                      rs.getString("landmark"),
                      rs.getDouble("price"),
                      rs.getInt("bedrooms"),
                      rs.getInt("bathrooms"),
                      rs.getDouble("area_sqft"),
                      rs.getString("description"),
                      rs.getDate("listed_date"),
                      rs.getInt("agent_id"),
                     rs.getString("country"),
                      rs.getString("city"),
                      rs.getString("postal_code")
              );

			list.add(property);
		}
} catch (Exception e) {
	e.printStackTrace();
}
return list;
}

	public Customer get_customer_login_2(String a, String b) {
		Customer ok=null;
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("select * from Customer where Username=? and Password=?");
			ps.setString(1, a);
			ps.setString(2, b);
			System.out.println(a+" "+b);
		ResultSet rs=	ps.executeQuery();
		System.out.println("till this done");
		
		while(rs.next())
		{
			System.out.println("till this done");
			ok=new Customer(rs.getInt("CustomerID"),
		            rs.getString("Name"),
		            rs.getString("Email"),
		            rs.getString("Phone"),
		            rs.getString("Address"),
		            rs.getString("City"),
		            rs.getString("State"),
		            rs.getString("PostalCode"),
		            rs.getString("Country"),
		            rs.getDate("DateOfBirth"),
		            rs.getString("Gender"),
		            rs.getString("Username"),
		            rs.getString("Password")
		           );
		
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ok;
	}

	public PropertyDTO get_particular_property_view(String a) {
		PropertyDTO list=null;
		Connection con=null;
		try {
			con=create_connection();
					PreparedStatement ps=con.prepareStatement("SELECT * FROM properties WHERE property_id=?");
				ps.setString(1, a);
				
					
					ResultSet rs=	ps.executeQuery();
				while(rs.next())
				{
					   list = new PropertyDTO(
		                      rs.getInt("property_id"),
		                      rs.getString("property_name"),
		                      rs.getString("property_type"),
		                      rs.getString("location"),
		                      rs.getString("landmark"),
		                      rs.getDouble("price"),
		                      rs.getInt("bedrooms"),
		                      rs.getInt("bathrooms"),
		                      rs.getDouble("area_sqft"),
		                      rs.getString("description"),
		                      rs.getDate("listed_date"),
		                      rs.getInt("agent_id"),
		                     rs.getString("country"),
		                      rs.getString("city"),
		                      rs.getString("postal_code")
		              );

					
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		}

	public int add_agent(String agentId, String name, String email, String phone, String address, String companyName,
			String licenseNumber, String specialization, int experience, String languagesSpoken, double commissionRate,
			InputStream is, String socialMediaLinks, String notes) {
		int i=0;
		Connection con=null;
		
		try {
			con=create_connection();
			PreparedStatement stmt=con.prepareStatement("INSERT INTO AgentRegistration (AgentID, Name, EmailAddress, PhoneNumber, Address, CompanyName, LicenseNumber, Specialization, Experience, LanguagesSpoken, CommissionRate, ProfilePicture, SocialMediaLinks, Notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			
            stmt.setString(1, agentId);
            stmt.setString(2, name);
            stmt.setString(3, email);
            stmt.setString(4, phone);
            stmt.setString(5, address);
            stmt.setString(6, companyName);
            stmt.setString(7, licenseNumber);
            stmt.setString(8, specialization);
            stmt.setInt(9, experience);
            stmt.setString(10, languagesSpoken);
            stmt.setDouble(11, commissionRate);
            stmt.setBlob(12, is);
            stmt.setString(13, socialMediaLinks);
            stmt.setString(14, notes);
			
			
			
		i=	stmt.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return i;
	}

	public ArrayList<agent> get_agent_request() {
		ArrayList<agent> list=new ArrayList<>();
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement stmt=con.prepareStatement("SELECT * FROM AgentRegistration where Status=?");
			String a="pending";
			stmt.setString(1, a);
			
			ResultSet rs=stmt.executeQuery();
			
			while (rs.next()) {
				agent aa=new agent(rs.getString("Status"),rs.getString("Specialization"),      
					    rs.getString("SocialMediaLinks"),    
					       
					    rs.getString("PhoneNumber"),         
					    rs.getString("Password"),            
					    rs.getString("Notes"),               
					    rs.getString("Name"),                
					    rs.getString("LicenseNumber"),       
					    rs.getString("LanguagesSpoken"),     
					    rs.getInt("Experience"),             
					    rs.getString("EmailAddress"),        
					    rs.getString("CompanyName"),         
					    rs.getDouble("CommissionRate"),      
					    rs.getString("AgentID"),             
					    rs.getString("Address")      
					   
					    
					    );
				
				list.add(aa);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public agent get_particular_agent(String a) {
		agent aa=null;
		
		Connection con=null;
		try {
			con=create_connection();
					PreparedStatement ps=con.prepareStatement("SELECT * FROM AgentRegistration WHERE AgentID=?");
				ps.setString(1, a);
				
					
					ResultSet rs=	ps.executeQuery();
				while(rs.next())
				{
					   aa = new agent(
							   rs.getString("Status"),rs.getString("Specialization"),      
							    rs.getString("SocialMediaLinks"),    
							       
							    rs.getString("PhoneNumber"),         
							    rs.getString("Password"),            
							    rs.getString("Notes"),               
							    rs.getString("Name"),                
							    rs.getString("LicenseNumber"),       
							    rs.getString("LanguagesSpoken"),     
							    rs.getInt("Experience"),             
							    rs.getString("EmailAddress"),        
							    rs.getString("CompanyName"),         
							    rs.getDouble("CommissionRate"),      
							    rs.getString("AgentID"),             
							    rs.getString("Address") 
		              );

					
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return aa;
		}

	public byte[] get_ajent_img(String a) {
		byte img[]=null;
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM AgentRegistration WHERE AgentID=?");
			ps.setString(1, a);
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			img=rs.getBytes("ProfilePicture");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return img;
	
}

	public int update_status_agent(String a,String b) {
		int i=0;
		Connection con=null;
		
		try {
			con=create_connection();
			PreparedStatement stmt=con.prepareStatement("UPDATE AgentRegistration SET Status = ? WHERE AgentID = ?");
			
			stmt.setString(1, b);
            stmt.setString(2, a);
            
            
			
			
			
		i=	stmt.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return i;
	}

	public agent get_agent_login_2(String a, String b) {
		agent aa=null;
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("select * from AgentRegistration where AgentID=? and Password=?");
			ps.setString(1, a);
			ps.setString(2, b);
			System.out.println(a+" "+b);
		ResultSet rs=	ps.executeQuery();
		System.out.println("till this done");
		
		while(rs.next())
		{
			System.out.println("till this done");
			 aa = new agent(
					   rs.getString("Status"),rs.getString("Specialization"),      
					    rs.getString("SocialMediaLinks"),    
					       
					    rs.getString("PhoneNumber"),         
					    rs.getString("Password"),            
					    rs.getString("Notes"),               
					    rs.getString("Name"),                
					    rs.getString("LicenseNumber"),       
					    rs.getString("LanguagesSpoken"),     
					    rs.getInt("Experience"),             
					    rs.getString("EmailAddress"),        
					    rs.getString("CompanyName"),         
					    rs.getDouble("CommissionRate"),      
					    rs.getString("AgentID"),             
					    rs.getString("Address") 
            );
		//System.out.println(rs.getString("name")+"  "+ rs.getString("user_id")+"  "+ rs.getString("password")+"  "+ rs.getString("gender"));
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return aa;
	}

	public static int add_property(String propertyid,String propertyName, String propertyType, String location, String landmark, String price, int bedrooms, int bathrooms, double areaSqft, String description, String listedDate, String agentId, String country, String city, String postalCode) {
		int i=0;
		Connection con=null;
		
		try {
			con=create_connection();
			PreparedStatement stmt=con.prepareStatement("INSERT INTO properties (property_id,property_name, property_type, location, landmark, price, bedrooms,bathrooms, area_sqft, description, listed_date, agent_id, country, city, postal_code)VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			stmt.setString(1, propertyid);
			stmt.setString(2, propertyName);
            stmt.setString(3, propertyType);
            stmt.setString(4, location);
            stmt.setString(5, landmark);
            stmt.setString(6, price);
            stmt.setInt(7, bedrooms);
            stmt.setInt(8, bathrooms);
            stmt.setDouble(9, areaSqft);
            stmt.setString(10, description);
            stmt.setString(11, listedDate);
            stmt.setString(12, agentId);
            stmt.setString(13, country);
            stmt.setString(14, city);
            stmt.setString(15, postalCode);

			
			
			
		i=	stmt.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return i;
	}
}

