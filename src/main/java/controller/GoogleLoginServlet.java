package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Collections;
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
import org.json.JSONObject;

@WebServlet("/file")
public class GoogleLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String CLIENT_ID = "40875275759-e6m67r02ur0r9hv85n7mn8j62tn9nafr.apps.googleusercontent.com"; 
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = request.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }

        // Print the request body
        System.out.println("Request body: " + sb.toString());

        try {
            JSONObject json = new JSONObject(sb.toString());
            String token = json.getString("token");

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

                response.setContentType("application/json");
                response.getWriter().write("{\"success\": true}");
            } else {
                response.setContentType("application/json");
                response.getWriter().write("{\"success\": false, \"message\": \"Invalid ID token\"}");
            }
        } catch (Exception e) {
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid ID token\"}");
        }
    }
}
