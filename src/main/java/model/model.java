package model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
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
		ArrayList<PropertyDTO> properties = new ArrayList<>();
	    Connection con = null;

	    try {
	        con = create_connection();
	        PreparedStatement ps=con.prepareStatement("SELECT * FROM property_12 WHERE area = ? AND category = ? AND price <= ?");
	        ps.setString(1, a);
	        ps.setString(2, b);
	        ps.setString(3, c);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            PropertyDTO property = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );

	            properties.add(property);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return properties;
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

//	public PropertyDTO get_particular_property_view(String a) {
//		PropertyDTO list=null;
//		Connection con=null;
//		try {
//			con=create_connection();
//					PreparedStatement ps=con.prepareStatement("SELECT * FROM properties WHERE property_id=?");
//				ps.setString(1, a);
//				
//					
//					ResultSet rs=	ps.executeQuery();
//				while(rs.next())
//				{
//					   list = new PropertyDTO(
//		                      rs.getInt("property_id"),
//		                      rs.getString("property_name"),
//		                      rs.getString("property_type"),
//		                      rs.getString("location"),
//		                      rs.getString("landmark"),
//		                      rs.getDouble("price"),
//		                      rs.getInt("bedrooms"),
//		                      rs.getInt("bathrooms"),
//		                      rs.getDouble("area_sqft"),
//		                      rs.getString("description"),
//		                      rs.getDate("listed_date"),
//		                      rs.getInt("agent_id"),
//		                     rs.getString("country"),
//		                      rs.getString("city"),
//		                      rs.getString("postal_code")
//		              );
//
//					
//				}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//		}

		/*
		 * public int add_agent(String agentId, String name, String email, String phone,
		 * String address, String companyName, String licenseNumber, String
		 * specialization, int experience, String languagesSpoken, double
		 * commissionRate, InputStream is, String socialMediaLinks, String notes) { int
		 * i=0; Connection con=null;
		 * 
		 * try { con=create_connection(); PreparedStatement stmt=con.
		 * prepareStatement("INSERT INTO AgentRegistration (AgentID, Name, EmailAddress, PhoneNumber, Address, CompanyName, LicenseNumber, Specialization, Experience, LanguagesSpoken, CommissionRate, ProfilePicture, SocialMediaLinks, Notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
		 * );
		 * 
		 * 
		 * stmt.setString(1, agentId); stmt.setString(2, name); stmt.setString(3,
		 * email); stmt.setString(4, phone); stmt.setString(5, address);
		 * stmt.setString(6, companyName); stmt.setString(7, licenseNumber);
		 * stmt.setString(8, specialization); stmt.setInt(9, experience);
		 * stmt.setString(10, languagesSpoken); stmt.setDouble(11, commissionRate);
		 * stmt.setBlob(12, is); stmt.setString(13, socialMediaLinks);
		 * stmt.setString(14, notes);
		 * 
		 * 
		 * 
		 * i= stmt.executeUpdate();
		 * 
		 * } catch (Exception e2) { e2.printStackTrace(); } return i; }
		 */

	public ArrayList<agent> get_agent_request() {
		ArrayList<agent> list=new ArrayList<>();
		Connection con=null;
		try {
			con=create_connection();
			PreparedStatement stmt=con.prepareStatement("SELECT * FROM AgentRegistration where Status=?");
			String a="Submitted";
			stmt.setString(1, a);
			
			ResultSet rs=stmt.executeQuery();
			
			while (rs.next()) {
				agent aa = new agent(
					    rs.getString("agent_id"),
					    rs.getString("full_name"),
					    rs.getString("email"),
					    rs.getString("phone"),
					    rs.getString("license_number"),
					    rs.getString("specialization"),
					    rs.getString("experience"),
					    rs.getString("languages_spoken"),
					    rs.getString("commission_rate"),
					    rs.getString("dob"),
					    rs.getString("gender"),
					    rs.getString("sales_performance"),
					    rs.getString("address"),
					    rs.getString("address1"),
					    rs.getString("country"),
					    rs.getString("state"),
					    rs.getString("city"),
					    rs.getString("zipcode"),
					    rs.getString("status"),
					    rs.getString("adharcard"),
					    rs.getString("pancard"),
					    rs.getString("notes"),
					    rs.getString("password"),
					    rs.getTimestamp("created_on")
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
					PreparedStatement ps=con.prepareStatement("SELECT * FROM AgentRegistration WHERE agent_id=?");
				ps.setString(1, a);
				
					
					ResultSet rs=	ps.executeQuery();
				while(rs.next())
				{
					 aa = new agent(
						    rs.getString("agent_id"),
						    rs.getString("full_name"),
						    rs.getString("email"),
						    rs.getString("phone"),
						    rs.getString("license_number"),
						    rs.getString("specialization"),
						    rs.getString("experience"),
						    rs.getString("languages_spoken"),
						    rs.getString("commission_rate"),
						    rs.getString("dob"),
						    rs.getString("gender"),
						    rs.getString("sales_performance"),
						    rs.getString("address"),
						    rs.getString("address1"),
						    rs.getString("country"),
						    rs.getString("state"),
						    rs.getString("city"),
						    rs.getString("zipcode"),
						    rs.getString("status"),
						    rs.getString("adharcard"),
						    rs.getString("pancard"),
						    rs.getString("notes"),
						    rs.getString("password")
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
			PreparedStatement ps=con.prepareStatement("SELECT * FROM AgentRegistration WHERE agent_id=?");
			ps.setString(1, a);
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			img=rs.getBytes("profile");
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
			PreparedStatement stmt=con.prepareStatement("UPDATE AgentRegistration SET Status = ? WHERE agent_id = ?");
			
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
			PreparedStatement ps=con.prepareStatement("select * from AgentRegistration where agent_id=? and Password=?");
			ps.setString(1, a);
			ps.setString(2, b);
			System.out.println(a+" "+b);
		ResultSet rs=	ps.executeQuery();
		System.out.println("till this done");
		
		while(rs.next())
		{
			System.out.println("till this done");
			 aa = new agent(
				    rs.getString("agent_id"),
				    rs.getString("full_name"),
				    rs.getString("email"),
				    rs.getString("phone"),
				    rs.getString("license_number"),
				    rs.getString("specialization"),
				    rs.getString("experience"),
				    rs.getString("languages_spoken"),
				    rs.getString("commission_rate"),
				    rs.getString("dob"),
				    rs.getString("gender"),
				    rs.getString("sales_performance"),
				    rs.getString("address"),
				    rs.getString("address1"),
				    rs.getString("country"),
				    rs.getString("state"),
				    rs.getString("city"),
				    rs.getString("zipcode"),
				    rs.getString("status"),
				    rs.getString("adharcard"),
				    rs.getString("pancard"),
				    rs.getString("notes"),
				    rs.getString("password")
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

	public int add_customer(String customerName, String customerId, String customerEmail, String customerMobile, String password, String ok) {
		int i=0;
Connection con=null;
		
		try {
			con=create_connection();
			
			
			
			PreparedStatement stmt=con.prepareStatement("INSERT INTO customer(Name, Email, Phone,Username, Password, RegistrationDate)VALUES (?,?, ?, ?, ?, ?)");
			
			stmt.setString(1, customerName);
			stmt.setString(2, customerEmail);
            stmt.setString(3, customerMobile);
            stmt.setString(4, customerId);
            stmt.setString(5, password);
            stmt.setString(6, ok);
           

			
			
			
		i=	stmt.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return i;
	}

	public int add_photo_customer(String a, InputStream is) {
		int i=0;
		Connection con=null;
				
				try {
					con=create_connection();
					
					
					
					PreparedStatement stmt=con.prepareStatement("UPDATE customer SET Image = ? WHERE Username = ?");
					
					 stmt.setBlob(1, is);
					stmt.setString(2, a);
		           
		           

					
					
					
				i=	stmt.executeUpdate();
				
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				return i;
			}

	

	public int add_agent_1(String agentid, String fullName, String email, String phone, String licenseNumber,
	        String specialization, String experience, String languagesSpoken, String commissionRate, String dob,
	        String gender, String salesPerformance, String address, String address1, String country, String state,
	        String city, String zipcode, String status, String adharcard, String pancard, String notes, InputStream is,
	        InputStream is1, InputStream is2) {
	    int i = 0;
	    Connection con = null;

	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("INSERT INTO AgentRegistration (agent_id,full_name, email, phone, license_number, specialization, experience, languages_spoken, commission_rate, dob, gender, sales_performance, address, address1, country, state, city, zipcode, status, adharcard, pancard, notes, adharcard_image, pancard_doc, profile) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
System.out.println("INSERT INTO AgentRegistration agent_id="+agentid+",full_name="+fullName);
	        stmt.setString(1, agentid);
	        stmt.setString(2, fullName);
	        stmt.setString(3, email);
	        stmt.setString(4, phone);
	        stmt.setString(5, licenseNumber);
	        stmt.setString(6, specialization);
	        stmt.setString(7, experience);
	        stmt.setString(8, languagesSpoken);
	        stmt.setString(9, commissionRate);
	        stmt.setString(10, dob);
	        stmt.setString(11, gender);
	        stmt.setString(12, salesPerformance);
	        stmt.setString(13, address);
	        stmt.setString(14, address1);
	        stmt.setString(15, country);
	        stmt.setString(16, state);
	        stmt.setString(17, city);
	        stmt.setString(18, zipcode);
	        stmt.setString(19, status);
	        stmt.setString(20, adharcard);
	        stmt.setString(21, pancard);
	        stmt.setString(22, notes);
	        stmt.setBlob(23, is1); // adharcard_image
	        stmt.setBlob(24, is2); // pancard_doc
	        stmt.setBlob(25, is);  // profile

	        i = stmt.executeUpdate();

	    } catch (Exception e2) {
	        e2.printStackTrace();
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return i;
	}

	public static int add_property_1(String property_name, String property_id, String property_type, String category,
	        String price, String area, String width, String length, String transaction, String ownership,
	        String cons_year, String floors, String direction, String openside, String address, String landmark,
	        String scheme_no, String ward, String assembly, String zipcode, String city, String country, String state,
	        String security, String park_area, String gas_con, String water_con, String no_of_lift, String overlooking,
	        String elec, String fur, String internet, String owner_name, String owner_number, String owner_email,
	        String agent_name, String agent_id, String status, String notes, String rent, InputStream is,
	        InputStream is1, InputStream is2, InputStream is3, InputStream is4, InputStream is5) {

	    int i = 0;
	    Connection con = null;
	    
	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("INSERT INTO property_12 (property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent, font_image, image_1, image_2, image_3, image_4, video) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

	        stmt.setString(1, property_name);
	        stmt.setString(2, property_id);
	        stmt.setString(3, property_type);
	        stmt.setString(4, category);
	        stmt.setString(5, price);
	        stmt.setString(6, area);
	        stmt.setString(7, width);
	        stmt.setString(8, length);
	        stmt.setString(9, transaction);
	        stmt.setString(10, ownership);
	        stmt.setString(11, cons_year);
	        stmt.setString(12, floors);
	        stmt.setString(13, direction);
	        stmt.setString(14, openside);
	        stmt.setString(15, address);
	        stmt.setString(16, landmark);
	        stmt.setString(17, scheme_no);
	        stmt.setString(18, ward);
	        stmt.setString(19, assembly);
	        stmt.setString(20, zipcode);
	        stmt.setString(21, city);
	        stmt.setString(22, country);
	        stmt.setString(23, state);
	        stmt.setString(24, security);
	        stmt.setString(25, park_area);
	        stmt.setString(26, gas_con);
	        stmt.setString(27, water_con);
	        stmt.setString(28, no_of_lift);
	        stmt.setString(29, overlooking);
	        stmt.setString(30, elec);
	        stmt.setString(31, fur);
	        stmt.setString(32, internet);
	        stmt.setString(33, owner_name);
	        stmt.setString(34, owner_number);
	        stmt.setString(35, owner_email);
	        stmt.setString(36, agent_name);
	        stmt.setString(37, agent_id);
	        stmt.setString(38, "pending");
	        stmt.setString(39, notes);
	        stmt.setString(40, rent);

	        // Set InputStream parameters for images and video
	        stmt.setBlob(41, is);
	        stmt.setBlob(42, is1);
	        stmt.setBlob(43, is2);
	        stmt.setBlob(44, is3);
	        stmt.setBlob(45, is4);
	        stmt.setBlob(46, is5);

	        i = stmt.executeUpdate();

	    } catch (Exception e2) {
	        e2.printStackTrace();
	    }
	    return i;
	}

	public int add_property_2(String property_name, String property_id, String property_type, String category,
	        String price, String area, String width, String length, String transaction, String ownership,
	        String cons_year, String floors, String direction, String openside, String address, String landmark,
	        String scheme_no, String ward, String assembly, String zipcode, String city, String country, String state,
	        String security, String park_area, String gas_con, String water_con, String no_of_lift, String overlooking,
	        String elec, String fur, String internet, String owner_name, String owner_number, String owner_email,
	        String agent_name, String agent_id, String status, String notes, String rent, InputStream is,
	        InputStream is1, InputStream is2, InputStream is3, InputStream is4, InputStream is5, String bedrooms,
	        String bathrooms, String kitchen, String living, String dining, String parking, String carpet_area,
	        String garden) {
	    int i = 0;
	    Connection con = null;

	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("INSERT INTO property_12 (property_name, property_id, property_type, category, price, area, width, length, transaction, ownership, cons_year, floors, direction, openside, address, landmark, scheme_no, ward, assembly, zipcode, city, country, state, security, park_area, gas_con, water_con, no_of_lift, overlooking, elec, fur, internet, owner_name, owner_number, owner_email, agent_name, agent_id, status, notes, rent, font_image, image_1, image_2, image_3, image_4, video, bedrooms, bathrooms, kitchen, living, dining, parking, carpet_area, garden) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)");

	        stmt.setString(1, property_name);
	        stmt.setString(2, property_id);
	        stmt.setString(3, property_type);
	        stmt.setString(4, category);
	        stmt.setString(5, price);
	        stmt.setString(6, area);
	        stmt.setString(7, width);
	        stmt.setString(8, length);
	        stmt.setString(9, transaction);
	        stmt.setString(10, ownership);
	        stmt.setString(11, cons_year);
	        stmt.setString(12, floors);
	        stmt.setString(13, direction);
	        stmt.setString(14, openside);
	        stmt.setString(15, address);
	        stmt.setString(16, landmark);
	        stmt.setString(17, scheme_no);
	        stmt.setString(18, ward);
	        stmt.setString(19, assembly);
	        stmt.setString(20, zipcode);
	        stmt.setString(21, city);
	        stmt.setString(22, country);
	        stmt.setString(23, state);
	        stmt.setString(24, security);
	        stmt.setString(25, park_area);
	        stmt.setString(26, gas_con);
	        stmt.setString(27, water_con);
	        stmt.setString(28, no_of_lift);
	        stmt.setString(29, overlooking);
	        stmt.setString(30, elec);
	        stmt.setString(31, fur);
	        stmt.setString(32, internet);
	        stmt.setString(33, owner_name);
	        stmt.setString(34, owner_number);
	        stmt.setString(35, owner_email);
	        stmt.setString(36, agent_name);
	        stmt.setString(37, agent_id);
	        stmt.setString(38, "pending");
	        stmt.setString(39, notes);
	        stmt.setString(40, rent);

	        // Set InputStream parameters for images and video
	        stmt.setBlob(41, is);
	        stmt.setBlob(42, is1);
	        stmt.setBlob(43, is2);
	        stmt.setBlob(44, is3);
	        stmt.setBlob(45, is4);
	        stmt.setBlob(46, is5);

	        // Set additional parameters for bedrooms, bathrooms, kitchen, living, dining, parking, carpet_area, and garden
	        stmt.setString(47, bedrooms);
	        stmt.setString(48, bathrooms);
	        stmt.setString(49, kitchen);
	        stmt.setString(50, living);
	        stmt.setString(51, dining);
	        stmt.setString(52, parking);
	        stmt.setString(53, carpet_area);
	        stmt.setString(54, garden);

	        i = stmt.executeUpdate();

	    } catch (Exception e2) {
	        e2.printStackTrace();
	    }
	    return i;
	}

	public int update_agent_passwword(String a, String b) {
		int i=0;
		Connection con=null;
				
				try {
					con=create_connection();
					
					
					System.out.println(a+" "+b);
					PreparedStatement stmt=con.prepareStatement("UPDATE AgentRegistration SET password = ? WHERE agent_id = ?");
					System.out.println("UPDATE AgentRegistration SET password = "+a+" WHERE agent_id = "+b);
					 stmt.setString(1, a);
					stmt.setString(2, b);
		           
		           

					
					
					
				i=	stmt.executeUpdate();
				
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				return i;
			}

	public agent getparticular_agent_byemail(String ee) {
agent aa=null;
		
		Connection con=null;
		try {
			con=create_connection();
					PreparedStatement ps=con.prepareStatement("SELECT * FROM AgentRegistration WHERE email=?");
				ps.setString(1, ee);
				
					
					ResultSet rs=	ps.executeQuery();
				while(rs.next())
				{
					 aa = new agent(
						    rs.getString("agent_id"),
						    rs.getString("full_name"),
						    rs.getString("email"),
						    rs.getString("phone"),
						    rs.getString("license_number"),
						    rs.getString("specialization"),
						    rs.getString("experience"),
						    rs.getString("languages_spoken"),
						    rs.getString("commission_rate"),
						    rs.getString("dob"),
						    rs.getString("gender"),
						    rs.getString("sales_performance"),
						    rs.getString("address"),
						    rs.getString("address1"),
						    rs.getString("country"),
						    rs.getString("state"),
						    rs.getString("city"),
						    rs.getString("zipcode"),
						    rs.getString("status"),
						    rs.getString("adharcard"),
						    rs.getString("pancard"),
						    rs.getString("notes"),
						    rs.getString("password")
						);

					
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return aa;
		}

	public ArrayList<PropertyDTO> get_commercial_property(String agentId, String propertyType) {
	    ArrayList<PropertyDTO> properties = new ArrayList<>();
	    Connection con = null;

	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("SELECT * FROM property_12 WHERE agent_id = ? AND category = ?");
	        System.out.println("SELECT * FROM property_12 WHERE agent_id = "+agentId+" AND category = "+propertyType);
	        stmt.setString(1, agentId);
	        stmt.setString(2, propertyType);

	        ResultSet rs = stmt.executeQuery();

	        while (rs.next()) {
	            PropertyDTO property = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );

	            properties.add(property);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return properties;
	}

	public PropertyDTO get_particular_property_view(String a) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<PropertyDTO> get_residential_property(String agentId, String propertyType) {
	    ArrayList<PropertyDTO> properties = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        con = create_connection();
	        String query = "SELECT * FROM property_12 WHERE agent_id = ? AND category = ?";
	        ps = con.prepareStatement(query);
	        ps.setString(1, agentId);
	        ps.setString(2, propertyType);

	        System.out.println("Executing query: " + query.replace("?", "%s").formatted(agentId, propertyType));

	        rs = ps.executeQuery();

	        while (rs.next()) {
	            PropertyDTO property = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );
	            System.out.println("Retrieved property: " + property.getAgentName());
	            properties.add(property);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    System.out.println("mein return kr raha hu ");
	    return properties;
	    
	}

	public PropertyDTO get_commercial_property_2(String k) {
		PropertyDTO po=null;
		Connection con=null;

	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("SELECT * FROM property_12 WHERE property_id = ? ");
	        System.out.println("SELECT * FROM property_12 WHERE property_id =  "+k);
	        stmt.setString(1, k);
	       

	        ResultSet rs = stmt.executeQuery();

	        while (rs.next()) {
	             po = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );

	           
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return po;
	}

	public int delete_commercial(String a) {
	    int i = 0;
	    Connection con = null;

	    try {
	        con = create_connection();
	        PreparedStatement stmt = con.prepareStatement("DELETE FROM property_12 WHERE property_id = ?");
	        stmt.setString(1, a);

	        i = stmt.executeUpdate(); // Execute the delete operation and get the number of affected rows

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return i; // Return the number of rows affected
	}

	public int update_property_1(String property_name, String property_id, String property_type, String category,
            String price, String area, String width, String length, String transaction, String ownership,
            String cons_year, String floors, String direction, String openside, String address, String landmark,
            String scheme_no, String ward, String assembly, String zipcode, String city, String country, String state,
            String security, String park_area, String gas_con, String water_con, String no_of_lift, String overlooking,
            String elec, String fur, String internet, String owner_name, String owner_number, String owner_email,
            String agent_name, String agent_id, String status, String notes, String rent) {
int i = 0;
Connection con = null;

try {
con = create_connection();
String sql = "UPDATE property_12 SET property_name = ?, property_type = ?, category = ?, price = ?, area = ?, width = ?, length = ?, transaction = ?, ownership = ?, cons_year = ?, floors = ?, direction = ?, openside = ?, address = ?, landmark = ?, scheme_no = ?, ward = ?, assembly = ?, zipcode = ?, city = ?, country = ?, state = ?, security = ?, park_area = ?, gas_con = ?, water_con = ?, no_of_lift = ?, overlooking = ?, elec = ?, fur = ?, internet = ?, owner_name = ?, owner_number = ?, owner_email = ?, agent_name = ?, agent_id = ?, status = ?, notes = ?, rent = ? WHERE property_id = ?";
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setString(1, property_name);
stmt.setString(2, property_type);
stmt.setString(3, category);
stmt.setString(4, price);
stmt.setString(5, area);
stmt.setString(6, width);
stmt.setString(7, length);
stmt.setString(8, transaction);
stmt.setString(9, ownership);
stmt.setString(10, cons_year);
stmt.setString(11, floors);
stmt.setString(12, direction);
stmt.setString(13, openside);
stmt.setString(14, address);
stmt.setString(15, landmark);
stmt.setString(16, scheme_no);
stmt.setString(17, ward);
stmt.setString(18, assembly);
stmt.setString(19, zipcode);
stmt.setString(20, city);
stmt.setString(21, country);
stmt.setString(22, state);
stmt.setString(23, security);
stmt.setString(24, park_area);
stmt.setString(25, gas_con);
stmt.setString(26, water_con);
stmt.setString(27, no_of_lift);
stmt.setString(28, overlooking);
stmt.setString(29, elec);
stmt.setString(30, fur);
stmt.setString(31, internet);
stmt.setString(32, owner_name);
stmt.setString(33, owner_number);
stmt.setString(34, owner_email);
stmt.setString(35, agent_name);
stmt.setString(36, agent_id);
stmt.setString(37, status);
stmt.setString(38, notes);
stmt.setString(39, rent);
stmt.setString(40, property_id);

i = stmt.executeUpdate(); // Execute the update statement and get the number of affected rows

} catch (Exception e) {
e.printStackTrace();
} finally {
if (con != null) {
try {
con.close();
} catch (Exception e) {
e.printStackTrace();
}
}
}

return i; // Return the number of rows affected
}

	public int update_property_2(String property_name, String property_id, String property_type, String category,
            String price, String area, String width, String length, String transaction, String ownership,
            String cons_year, String floors, String direction, String openside, String address, String landmark,
            String scheme_no, String ward, String assembly, String zipcode, String city, String country, String state,
            String security, String park_area, String gas_con, String water_con, String no_of_lift, String overlooking,
            String elec, String fur, String internet, String owner_name, String owner_number, String owner_email,
            String agent_name, String agent_id, String status, String notes, String rent, String bedrooms,
            String bathrooms, String kitchen, String living, String dining, String parking, String carpet_area,
            String garden) {
int i = 0;
Connection con = null;

try {
con = create_connection();
String sql = "UPDATE property_12 SET property_name = ?, property_type = ?, category = ?, price = ?, area = ?, width = ?, length = ?, transaction = ?, ownership = ?, cons_year = ?, floors = ?, direction = ?, openside = ?, address = ?, landmark = ?, scheme_no = ?, ward = ?, assembly = ?, zipcode = ?, city = ?, country = ?, state = ?, security = ?, park_area = ?, gas_con = ?, water_con = ?, no_of_lift = ?, overlooking = ?, elec = ?, fur = ?, internet = ?, owner_name = ?, owner_number = ?, owner_email = ?, agent_name = ?, agent_id = ?, status = ?, notes = ?, rent = ?, bedrooms = ?, bathrooms = ?, kitchen = ?, living = ?, dining = ?, parking = ?, carpet_area = ?, garden = ? WHERE property_id = ?";
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setString(1, property_name);
stmt.setString(2, property_type);
stmt.setString(3, category);
stmt.setString(4, price);
stmt.setString(5, area);
stmt.setString(6, width);
stmt.setString(7, length);
stmt.setString(8, transaction);
stmt.setString(9, ownership);
stmt.setString(10, cons_year);
stmt.setString(11, floors);
stmt.setString(12, direction);
stmt.setString(13, openside);
stmt.setString(14, address);
stmt.setString(15, landmark);
stmt.setString(16, scheme_no);
stmt.setString(17, ward);
stmt.setString(18, assembly);
stmt.setString(19, zipcode);
stmt.setString(20, city);
stmt.setString(21, country);
stmt.setString(22, state);
stmt.setString(23, security);
stmt.setString(24, park_area);
stmt.setString(25, gas_con);
stmt.setString(26, water_con);
stmt.setString(27, no_of_lift);
stmt.setString(28, overlooking);
stmt.setString(29, elec);
stmt.setString(30, fur);
stmt.setString(31, internet);
stmt.setString(32, owner_name);
stmt.setString(33, owner_number);
stmt.setString(34, owner_email);
stmt.setString(35, agent_name);
stmt.setString(36, agent_id);
stmt.setString(37, status);
stmt.setString(38, notes);
stmt.setString(39, rent);
stmt.setString(40, bedrooms);
stmt.setString(41, bathrooms);
stmt.setString(42, kitchen);
stmt.setString(43, living);
stmt.setString(44, dining);
stmt.setString(45, parking);
stmt.setString(46, carpet_area);
stmt.setString(47, garden);
stmt.setString(48, property_id);

i = stmt.executeUpdate(); // Execute the update statement and get the number of affected rows

} catch (Exception e) {
e.printStackTrace();
} finally {
if (con != null) {
try {
con.close();
} catch (Exception e) {
e.printStackTrace();
}
}
}

return i; // Return the number of rows affected
}

	public ArrayList<PropertyDTO> get_property_by_sub_category(String a) {
		ArrayList<PropertyDTO> properties = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        con = create_connection();
	        String query = "SELECT * FROM property_12 WHERE property_type = ? ";
	        ps = con.prepareStatement(query);
	        ps.setString(1, a);
	        

	     

	        rs = ps.executeQuery();

	        while (rs.next()) {
	            PropertyDTO property = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );
	            System.out.println("Retrieved property: " + property.getAgentName());
	            properties.add(property);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    System.out.println("mein return kr raha hu ");
	    return properties;
	    
	}

	public ArrayList<PropertyDTO> get_more_property_by_agent(String a) {
		ArrayList<PropertyDTO> properties = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        con = create_connection();
	        String query = "SELECT * FROM property_12 WHERE agent_id = ? ";
	        ps = con.prepareStatement(query);
	        ps.setString(1, a);
	        

	     

	        rs = ps.executeQuery();

	        while (rs.next()) {
	            PropertyDTO property = new PropertyDTO(
	                rs.getString("property_name"),
	                rs.getString("property_id"),
	                rs.getString("property_type"),
	                rs.getString("category"),
	                rs.getString("price"),
	                rs.getString("area"),
	                rs.getString("width"),
	                rs.getString("length"),
	                rs.getString("transaction"),
	                rs.getString("ownership"),
	                rs.getString("cons_year"),
	                rs.getString("floors"),
	                rs.getString("direction"),
	                rs.getString("openside"),
	                rs.getString("address"),
	                rs.getString("landmark"),
	                rs.getString("scheme_no"),
	                rs.getString("ward"),
	                rs.getString("assembly"),
	                rs.getString("zipcode"),
	                rs.getString("city"),
	                rs.getString("country"),
	                rs.getString("state"),
	                rs.getString("security"),
	                rs.getString("park_area"),
	                rs.getString("gas_con"),
	                rs.getString("water_con"),
	                rs.getString("no_of_lift"),
	                rs.getString("overlooking"),
	                rs.getString("elec"),
	                rs.getString("fur"),
	                rs.getString("internet"),
	                rs.getString("owner_name"),
	                rs.getString("owner_number"),
	                rs.getString("owner_email"),
	                rs.getString("agent_name"),
	                rs.getString("agent_id"),
	                rs.getString("status"),
	                rs.getString("notes"),
	                rs.getString("rent"),
	                rs.getString("bedrooms"),
	                rs.getString("bathrooms"),
	                rs.getString("kitchen"),
	                rs.getString("living"),
	                rs.getString("dining"),
	                rs.getString("parking"),
	                rs.getString("carpet_area"),
	                rs.getString("garden")
	            );
	            System.out.println("Retrieved property: " + property.getAgentName());
	            properties.add(property);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    System.out.println("mein return kr raha hu ");
	    return properties;
	    
	}

	public void logLoginActivity(String userId, String email, String name) {
		 int i = 0;
	        Connection con = null;

	        try {
	            con = create_connection();
	            PreparedStatement stmt = con.prepareStatement(
	                "INSERT INTO login_activity (user_id,email,name) VALUES (?,?,?)"
	            );
	            stmt.setString(1, userId);
	            stmt.setString(2, email);
	            stmt.setString(3, name);

	            i = stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (con != null) con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return;
		
	}

	public void customer_interseted_in_property(String a, String b, String c, String d, String e, String f) {
		int i = 0;
        Connection con = null;

        try {
            con = create_connection();
            PreparedStatement stmt = con.prepareStatement(
                "INSERT INTO customer_interest (customer_id, customer_mail_id, property_id, property_name, customer_name, agent_id, created_at) VALUES (?, ?, ?, ?, ?, ?, NOW())"
            );
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, e);
            stmt.setString(6, f);

            i = stmt.executeUpdate();
        } catch (SQLException e2) {
            e2.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        return;
	
}

	public ArrayList get_no_of_hit() {
		// TODO Auto-generated method stub
		return null;
	}
}