<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Property</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<% String aa=(String)request.getAttribute("msg"); %>
<% String ak=(String)request.getAttribute("ok"); %>
<%if (ak!=null){ %>

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
   <h5 style="color: green;"><%=ak %></h5>
  </div>
</div>

<%} %>


<%@ page import="java.util.Random" %>
<%@ page import="java.util.UUID" %>

<%
    // Generate a random 3-digit number
    Random rand = new Random();
    int randomNumber = rand.nextInt(900) + 100; // Generates a random number between 100 and 999

    // Generate a random 4-character string
    String uuid = UUID.randomUUID().toString().toUpperCase().replaceAll("[^A-Z]", "").substring(0, 4);

    // Combine the random string and random number to form the property ID
    String propertyId = uuid + String.format("%03d", randomNumber);
%>


    <div class="container">
        <h2>Add Property</h2>
        <form action="add_property_by_agent" method="POST">
        <div class="form-group">
                <label for="propertyName">Property Id:</label>
                <input type="text" class="form-control" id="propertyName" name="propertyid" value="<%= propertyId %>" readonly="readonly" required>
            </div>
            <div class="form-group">
                <label for="propertyName">Property Name:</label>
                <input type="text" class="form-control" id="propertyName" name="propertyName" required>
            </div>
            <div class="form-group">
                <label for="propertyType">Property Type:</label>
                <input type="text" class="form-control" id="propertyType" name="propertyType" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" class="form-control" id="location" name="location" required>
            </div>
            <div class="form-group">
                <label for="landmark">Landmark:</label>
                <input type="text" class="form-control" id="landmark" name="landmark">
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" class="form-control" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="bedrooms">Bedrooms:</label>
                <input type="number" class="form-control" id="bedrooms" name="bedrooms">
            </div>
            <div class="form-group">
                <label for="bathrooms">Bathrooms:</label>
                <input type="number" class="form-control" id="bathrooms" name="bathrooms">
            </div>
            <div class="form-group">
                <label for="areaSqft">Area (sqft):</label>
                <input type="number" class="form-control" id="areaSqft" name="areaSqft">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label for="listedDate">Listed Date:</label>
                <input type="date" class="form-control" id="listedDate" name="listedDate" required>
            </div>
            <div class="form-group">
                <label for="agentId">Agent ID:</label>
                <input type="text" class="form-control" id="agentId" name="agentId" value="<%=aa %>" required readonly="readonly">
            </div>
            <div class="form-group">
                <label for="country">Country:</label>
                <input type="text" class="form-control" id="country" name="country">
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" class="form-control" id="city" name="city">
            </div>
            <div class="form-group">
                <label for="postalCode">Postal Code:</label>
                <input type="text" class="form-control" id="postalCode" name="postalCode">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
