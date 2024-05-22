
<%@page import="dao.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%
    HttpSession session2 = request.getSession(false);
    if (session2 == null || session2.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String name = (String) session2.getAttribute("name");
    String email = (String) session2.getAttribute("email");
    String pictureUrl = (String) session2.getAttribute("pictureUrl");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
a{
text-decoration: none;
}

</style>
</head>
<body>

<%Customer ak=(Customer)session.getAttribute("m"); %>

<%-- <h1>Welcome, <%= name %></h1>
    <img src="<%= pictureUrl %>" alt="Profile Picture">
    <p>Email: <%= email %></p>
    <form action="LogoutServlet" method="post">
        <button type="submit">Logout</button>
    </form> --%>
   <%if (ak == null){ %>
   
   
    <main>
        <header style="height: 2.5cm;">
            <div class="left-head">
                <div class="logo">
                    <img src="./image/logo.png" alt="">
                </div>

                <nav id="navbar">
                    <div class="close">
                        <img src="./image/close.png" alt="">
                    </div>
                    <div class="menu-bar">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Rent</a></li>
                            <li><a href="#">Sell</a></li>
                            <li><a href="about_us.jsp">why us ?</a></li>
                        </ul>
                    </div>
                    <div class="button">
                            <div class="login-button">
                                <a href="#">log in</a>
                            </div>
                            <div class="create-button">
                                <a href="#">Create Account</a>
                            </div>
                    </div>
                </nav>
            </div>

            <div class="right-head">
            
            
            <!-- Example split danger button -->
<div class="btn-group" style="width:auto;height: 1.4cm;">
  <button type="button" class="btn btn-danger" style="font-size: 0.6cm;"><%= name %></button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 0.6cm;">
    <span class="visually-hidden">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu" style="background-color: transparent;">
    <li><a class="dropdown-item" href="customerprofile.jsp" style="margin-bottom: 0.3cm;">My Profile</a></li>
    <li><a class="dropdown-item" href="logoutctrl">Logout</a></li>
   <!--  <li><a class="dropdown-item" href="#">Something else here</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Separated link</a></li> -->
  </ul>
</div>
                <!-- <a href="category_login.jsp">Log In</a>
                
                <a href="registeration.jsp">Create Account</a> -->
                
               <%--  <a href="customerprofile.jsp"><%=ak.getName() %></a> --%>
                
            </div>
            
            

            <div class="menu">
                <img src="./image/menu.png" alt="">
            </div>
        </header>

   
   <%}else{ %>
   
    <main>
        <header style="height: 2.5cm;">
            <div class="left-head">
                <div class="logo">
                    <img src="./image/logo.png" alt="">
                </div>

                <nav id="navbar">
                    <div class="close">
                        <img src="./image/close.png" alt="">
                    </div>
                    <div class="menu-bar">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Rent</a></li>
                            <li><a href="#">Sell</a></li>
                            <li><a href="about_us.jsp">why us ?</a></li>
                        </ul>
                    </div>
                    <div class="button">
                            <div class="login-button">
                                <a href="#">log in</a>
                            </div>
                            <div class="create-button">
                                <a href="#">Create Account</a>
                            </div>
                    </div>
                </nav>
            </div>

            <div class="right-head">
                <a href="category_login.jsp">Log In</a>
                
                <a href="registeration.jsp">Create Account</a>
                
                <%-- <a href="#"><%=ak.getName() %></a> --%>
                
            </div>
            
            

            <div class="menu">
                <img src="./image/menu.png" alt="">
            </div>
        </header>

   
   
   <%} %>

</body>
</html>
