package controller;



import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Collections;

@WebServlet("/googlelogin")
public class googlelogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String CLIENT_ID = "40875275759-d882qctntsnt8mgjuf5duukeer5k1hep.apps.googleusercontent.com"; // Replace with your actual client ID
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtain token from the request
        String token = request.getParameter("id_token");

        // Verify token
        GoogleIdTokenVerifier verifier;
        try {
            verifier = new GoogleIdTokenVerifier.Builder(GoogleNetHttpTransport.newTrustedTransport(), JSON_FACTORY)
                    .setAudience(Collections.singletonList(CLIENT_ID))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp"); // Redirect to login page if verification fails
            return;
        }

        GoogleIdToken idToken;
        try {
            idToken = verifier.verify(token);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp"); // Redirect to login page if verification fails
            return;
        }

        if (idToken != null) {
            // Get user information from the token payload
            GoogleIdToken.Payload payload = idToken.getPayload();
            String userId = payload.getSubject();
            String email = payload.getEmail();
            String name = (String) payload.get("name");
            String pictureUrl = (String) payload.get("picture");

            // Store user details in session
            HttpSession session = request.getSession();
            session.setAttribute("userId", userId);
            session.setAttribute("email", email);
            session.setAttribute("name", name);
            session.setAttribute("pictureUrl", pictureUrl);

            // Redirect to home page
            response.sendRedirect("home.jsp");
        } else {
            // Redirect to login page if token is invalid
            response.sendRedirect("login.jsp");
        }
    }
}
