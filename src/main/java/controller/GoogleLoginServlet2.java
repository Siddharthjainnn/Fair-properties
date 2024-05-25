package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

import dao.CustomerInterest;
import dao.LoginActivity;
import dao.PropertyDTO;
import dao.agent;
import model.model;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;

@WebServlet("/file2")
public class GoogleLoginServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String CLIENT_ID = "822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com"; // Replace with your actual client ID
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        model model = new model();
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = request.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }

        String requestBody = sb.toString();
        System.out.println("Request body: " + requestBody); // Debugging output

        JSONObject json;
        try {
            json = new JSONObject(requestBody);
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid JSON format\"}");
            return;
        }

        String token = json.optString("token");
        if (token.isEmpty()) {
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Token is missing\"}");
            return;
        }

        GoogleIdTokenVerifier verifier;
        try {
            verifier = new GoogleIdTokenVerifier.Builder(GoogleNetHttpTransport.newTrustedTransport(), JSON_FACTORY)
                    .setAudience(Collections.singletonList(CLIENT_ID))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Verification setup failed\"}");
            return;
        }

        GoogleIdToken idToken;
        try {
            idToken = verifier.verify(token);
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Token verification failed\"}");
            return;
        }

        if (idToken != null) {
            GoogleIdToken.Payload payload = idToken.getPayload();
            String userId = payload.getSubject();
            String email = payload.getEmail();
            String name = (String) payload.get("name");
            String pictureUrl = (String) payload.get("picture");

            HttpSession session = request.getSession();
            session.setAttribute("userId", userId);
            session.setAttribute("email", email);
            session.setAttribute("name", name);
            session.setAttribute("pictureUrl", pictureUrl);

           agent  kl=   model.getparticular_agent_byemail(email);
           
            
           LocalDate startDate = LocalDate.now().withDayOfMonth(1);
	        LocalDate endDate = LocalDate.now().withDayOfMonth(LocalDate.now().lengthOfMonth());
	        ArrayList<LoginActivity> list4 =model.getLoginActivityCountForDate(startDate, endDate);
	        
	        
	        LocalDate startDate1 = LocalDate.now().with(java.time.DayOfWeek.MONDAY);
	        LocalDate endDate1 = LocalDate.now().with(java.time.DayOfWeek.SUNDAY);

	        ArrayList<LoginActivity> list3 = model.getLoginActivityCountForDate1(startDate1, endDate1);

	        
	        LocalDate today = LocalDate.now();
	        ArrayList<LoginActivity> list2 =model.getLoginActivities2(LocalDate.now());
	        
	        
	        
	        ArrayList<LoginActivity> list=model.getLoginActivities();
			ArrayList<CustomerInterest> list5=model.get_interseted_agent_property(kl.getAgentId());
		ArrayList<PropertyDTO> list6=model.get_more_property_by_agent(kl.getAgentId());
            session.setAttribute("m", kl);
            session.setAttribute("aa", list);
			session.setAttribute("aa1", list2);
			session.setAttribute("aa2", list3);
			session.setAttribute("aa3", list4);
			session.setAttribute("aa4", list5);
			session.setAttribute("aa5", list6);
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": true}");
        } else {
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid ID token\"}");
        }
    }
}
