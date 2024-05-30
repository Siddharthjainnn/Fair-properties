<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    /* Style for the loader container */
    #loader {
        display: none; /* Initially hidden */
        position: fixed;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }

    /* Style for the double ring loader */
    .loader-ring {
        display: inline-block;
        position: relative;
        width: 80px;
        height: 80px;
    }

    .loader-ring div {
        box-sizing: border-box;
        display: block;
        position: absolute;
        width: 64px;
        height: 64px;
        margin: 8px;
        border: 8px solid #3498db; /* Blue */
        border-radius: 50%;
        animation: loader-ring 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
        border-color: #3498db transparent transparent transparent; /* Blue */
    }

    .loader-ring div:nth-child(1) {
        animation-delay: -0.45s;
    }

    .loader-ring div:nth-child(2) {
        animation-delay: -0.3s;
    }

    .loader-ring div:nth-child(3) {
        animation-delay: -0.15s;
    }

    @keyframes loader-ring {
        0% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(360deg);
        }
    }

    body {
        background-image: url('./image/Schematiq Mobile App.gif');
        background-size: 100%;
        background-repeat: no-repeat;
        background-position: center;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    @media (max-width: 768px) {
        body {
            background-image: url('./image/Real Estate Agency (1).gif'); /* New URL for tablet and mobile view */
            background-size: 100%;
            height: 90vh;
        }
    }

    @media (max-width: 480px) {
        body {
            background-image: url('./image/Real Estate Agency (1).gif'); /* New URL for mobile view */
             background-size: 100%;
            height: 90vh;
        }
    }
</style>
<script type="text/javascript">
    // JavaScript to show loader after 4 seconds and redirect after 10 seconds
    setTimeout(function(){
        document.getElementById('loader').style.display = 'block';
    }, 3000); // Show loader after 4 seconds

    setTimeout(function(){
        window.location.href = 'agent_login.jsp';
    }, 3800); // Redirect after 10 seconds
</script>
</head>
<body>
    <!-- Loader element -->
    <div id="loader" class="loader-ring">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</body>
</html>
