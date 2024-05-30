package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.model;


@WebServlet("/get_adhar_agent")
public class get_adhar_agent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getAttribute("agent_id");
		model model=new model();
		
		byte[] img=	model.get_adhar_agent(a);
		ServletOutputStream sos=null;
		if(img!=null)
		{
			sos=response.getOutputStream();
			sos.write(img);
		}
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}