<%@page import="java.util.ArrayList"%>
<%@page import="dao.transiction_property"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%     ArrayList<transiction_property> list = (ArrayList<transiction_property>) request.getAttribute("LIST2"); %>
<center><h2>All Property Transitions For Particular Property</h2></center>

<br>
<hr>
<br>
<div class="container-fluid" style="padding-left: 6%;padding-right: 6%;">
<table class="table" border="1px ">
  <thead>
    <tr>
            <th scope="col">Transition ID</th>
            <th scope="col">Property ID</th>
            <th scope="col">Transition Date</th>
             <th scope="col">Current Agent</th>
            <th scope="col">Property Category</th>
            <th scope="col">View</th>
   
    </tr>
  </thead>
  <tbody>
        <%
           
            if (list != null && !list.isEmpty()) {
                for (transiction_property lklk : list) {
        %>
        <tr>
           <td><%= lklk.getTransitionId() %></td>
            <td><%= lklk.getPropertyId() %></td>      
            <td><%= lklk.getTransitionDate() %></td>
            <td><%=lklk.getCurrentAgentId() %></td>
            <td><%= lklk.getPropertyCategory() %></td>
            <td><a class="btn btn-primary" href="get_particular_trans_property?trans_id=<%= lklk.getTransitionId() %>&transition_date=<%= lklk.getTransitionDate() %>">VIEW</a></td>
            
            <!-- Add more table cells for other properties -->
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="2">No data available.</td>
        </tr>
        <%
            }
        %>
   </tbody>
</table>
</div>
</body>
</html>