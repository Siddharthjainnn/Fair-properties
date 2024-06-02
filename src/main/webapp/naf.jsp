<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-image: url("./image/FAIR PROPERTY PVT LTD.gif");
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
<script>
    // JavaScript function to redirect after 5 seconds
    function redirectToHome() {
        setTimeout(function() {
            window.location.href = 'agent_login?source=agent';
        }, 5000);
    }
    // Call the function when the page loads
    window.onload = redirectToHome;
</script>
</head>
<body>
</body>
</html>
