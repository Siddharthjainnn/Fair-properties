<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Sign-In</title>
    <!-- Include Google Sign-In JavaScript library -->
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body>
    <!-- Google Sign-In button -->
    <div id="g_id_onload"
        data-client_id="635625593012-9tffosqrp870bun9ape5062b1maedhor.apps.googleusercontent.com" 
        data-callback="handleCredentialResponse">
    </div>
    <div class="g_id_signin" data-type="standard"></div>

    <script>
        function handleCredentialResponse(response) {
            console.log("Encoded JWT ID token: " + response.credential);
            // Send the token to your backend
            fetch('/google-oauth', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ token: response.credential })
            })
            .then(response => response.json())
            .then(data => {
                // Handle response
                if (data.success) {
                    window.location.href = "/home";
                } else {
                    console.error('Login failed');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    </script>
</body>
</html>
