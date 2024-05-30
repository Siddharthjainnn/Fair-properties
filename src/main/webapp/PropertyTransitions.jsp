<%@page import="dao.transiction_property"%>
<%@page import="java.util.Random"%>
<%@page import="dao.PropertyDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Transitions</title>

<style>body{
    background:#eee;
}

.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}

.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.5rem 1.5rem;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<%transiction_property klkl=(transiction_property)request.getAttribute("LIST2"); %>

<%if (klkl==null){ %>






<%PropertyDTO lklk=(PropertyDTO)request.getAttribute("LIST");  %>
<%String m=(String)request.getAttribute("msg"); %>
<%if(m!=null){ %>
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
    Inserted Successfully !!
  </div>
</div>
<%} %>
 <form action="PropertyTransitionServlet" method="post">
    <div class="container-fluid">

       
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Property Transitions</h2>
            <div class="hstack gap-3">
              
              <button type="submit" style="width: 5cm;height: 1.3cm;" class="btn btn-primary btn-sm btn-icon-text"><i class="bi bi-save"></i> <span class="text">Save</span></button>
            </div>
          </div>
        
          <!-- Main content -->
          <div class="row">
            <!-- Left side -->
            <div class="col-lg-12">
              <!-- Basic information -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">General Information</h3>


<%
    // Generate 4 random alphabets
    Random random = new Random();
    StringBuilder alphabets = new StringBuilder();
    for (int i = 0; i < 4; i++) {
        alphabets.append((char) ('A' + random.nextInt(26)));
    }

    // Generate 4 random digits
    StringBuilder digits = new StringBuilder();
    for (int i = 0; i < 4; i++) {
        digits.append(random.nextInt(10));
    }

    // Combine alphabets and digits
    String otp = alphabets.toString() + digits.toString();
%>

                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Transition Id</label>
                        <input type="text" class="form-control" value="<%=otp %>" readonly="readonly" name="transitionId">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Property Id</label>
                          <input type="text" class="form-control" value="<%=lklk.getPropertyId() %>" readonly="readonly" name="propertyId">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Property Type</label>
                          <input type="text" class="form-control" value="<%=lklk.getPropertyType() %>" readonly="readonly" name="propertyType">
                        </div>
                      </div>

                  </div>


                  <div class="row">
                  
                  
                  <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Old Owner Name</label>
                        <input type="text" class="form-control" name="oldOwnerName">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Old Owner Email</label>
                        <input type="email" class="form-control" name="oldOwnerEmail">
                      </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Old Owner Phone No</label>
                          <input type="text" class="form-control" name="oldOwnerPhoneNo">
                        </div>
                      </div>
                      
                      <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Current Owner Name</label>
                        <input type="text" class="form-control" value="<%=lklk.getOwnerName() %>" readonly="readonly" name="currentOwnerName">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb3">
                          <label class="form-label">Current Owner Email</label>
                          <input type="text" class="form-control" value="<%=lklk.getOwnerEmail() %>" readonly="readonly" name="currentOwnerEmail">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Current Owner Phone No</label>
                          <input type="text" class="form-control" value="<%=lklk.getOwnerNumber() %>" readonly="readonly" name="currentOwnerPhoneNo">
                        </div>
                      </div>

                  </div>
                  
                  
                  
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">New Owner Name</label>
                        <input type="text" class="form-control" name="newOwnerName">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Email</label>
                          <input type="text" class="form-control" name="newOwnerEmail">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Phone No</label>
                          <input type="text" class="form-control" name="newOwnerPhoneNo">
                        </div>
                      </div>

                  </div>
                  
                  
                  

                  <div class="row">
                    
                    <div class="col-lg-2">
                      <div class="mb-3">
                        <label class="form-label">Status</label>
                        <input type="text" class="form-control" value="<%=lklk.getStatus() %>" readonly="readonly" name="status">
                      </div>
                    </div>

                    <div class="col-lg-2">
                      <div class="mb-3">
                        <label class="form-label">Current Price</label>
                        <input type="text" class="form-control" value="<%=lklk.getPrice() %>" readonly="readonly" name="currentPrice">
                      </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Price</label>
                          <input type="text" class="form-control" name="oldPrice">
                        </div>
                      </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Price</label>
                          <input type="text" class="form-control" name="newPrice">
                        </div>
                      </div>
  
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Current Agent Id</label>
                          <input type="text" class="form-control" value="<%=lklk.getAgentId() %>" readonly="readonly" name="currentAgentId">
                        </div>
                      </div>
  
                    </div>
                    
                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Rent</label>
                          <input type="text" class="form-control" name="oldRent">
                        </div>
                      </div>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Rent</label>
                          <input type="text" class="form-control" name="newRent">
                        </div>
                      </div>
                      <% if (lklk.getRent().equals("Yes")) { %>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current Rent</label>
                          <input type="text" class="form-control" value="<%= lklk.getRent() %>" readonly="readonly" name="currentRent">
                        </div>
                      </div>
                      <% } else { %>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current On Rent?</label>
                          <input type="text" class="form-control" value="<%= lklk.getRent() %>" readonly="readonly" >
                        </div>
                      </div>
                      <% } %>

                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Old Lease End Date</label>
                            <input type="date" class="form-control" name="oldLeaseEndDate">
                          </div>
                        </div>
  
                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Current Lease End Date</label>
                            <input type="date" class="form-control"  name="currentLeaseEndDate">
                          </div>
                        </div>
    
                          <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Property Category</label>
                            <input type="text" class="form-control" value="<%= lklk.getCategory() %>" readonly="readonly" name="propertyCategory">
                          </div>
                        </div>
  
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </form>
    </div>

<%}else{ %>



<%PropertyDTO lklk=(PropertyDTO)request.getAttribute("LIST");  %>
<%String m=(String)request.getAttribute("msg"); %>
<%if(m!=null){ %>
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
    Inserted Successfully !!
  </div>
</div>
<%} %>
 <form action="PropertyTransitionServlet" method="post">
    <div class="container-fluid">

       
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Property Transitions </h2><i>Last Updated : <%=klkl.getTransitionDate() %></i>
            <div class="hstack gap-3">
              
              <button type="submit" style="width: 5cm;height: 1.3cm;" class="btn btn-primary btn-sm btn-icon-text"><i class="bi bi-save"></i> <span class="text">Save</span></button>
            </div>
          </div>
        
          <!-- Main content -->
          <div class="row">
            <!-- Left side -->
            <div class="col-lg-12">
              <!-- Basic information -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">General Information</h3>




                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Transition Id</label>
                        <input type="text" class="form-control" value="<%=klkl.getTransitionId()%>" readonly="readonly" name="transitionId">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Property Id</label>
                          <input type="text" class="form-control" value="<%=klkl.getPropertyId() %>" readonly="readonly" name="propertyId">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Property Type</label>
                          <input type="text" class="form-control" value="<%=klkl.getPropertyType() %>" readonly="readonly" name="propertyType">
                        </div>
                      </div>

                  </div>


                  <div class="row">
                  
                  
                  <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Old Owner Name</label>
                        <input type="text" class="form-control" name="oldOwnerName" value="<%=klkl.getOldOwnerName()%>">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Old Owner Email</label>
                        <input type="email" class="form-control" name="oldOwnerEmail" value="<%=klkl.getOldOwnerEmail()%>">
                      </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Old Owner Phone No</label>
                          <input type="text" class="form-control" name="oldOwnerPhoneNo" value="<%=klkl.getOldOwnerPhoneNo()%>">
                        </div>
                      </div>
                      
                      <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Current Owner Name</label>
                        <input type="text" class="form-control" value="<%=klkl.getCurrentOwnerName() %>" readonly="readonly" name="currentOwnerName">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb3">
                          <label class="form-label">Current Owner Email</label>
                          <input type="text" class="form-control" value="<%=klkl.getCurrentOwnerEmail() %>" readonly="readonly" name="currentOwnerEmail">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Current Owner Phone No</label>
                          <input type="text" class="form-control" value="<%=klkl.getCurrentOwnerPhoneNo() %>" readonly="readonly" name="currentOwnerPhoneNo">
                        </div>
                      </div>

                  </div>
                  
                  
                  
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">New Owner Name</label>
                        <input type="text" class="form-control" name="newOwnerName" value="<%=klkl.getNewOwnerName()%>">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Email</label>
                          <input type="text" class="form-control" name="newOwnerEmail" value="<%=klkl.getNewOwnerEmail()%>">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Phone No</label>
                          <input type="text" class="form-control" name="newOwnerPhoneNo" value="<%=klkl.getNewOwnerPhoneNo()%>">
                        </div>
                      </div>

                  </div>
                  
                  
                  

                  <div class="row">
                    
                    <div class="col-lg-2">
                      <div class="mb-3">
                        <label class="form-label">Status</label>
                        <input type="text" class="form-control" value="<%=klkl.getStatus() %>" readonly="readonly" name="status">
                      </div>
                    </div>

                    <div class="col-lg-2">
                      <div class="mb-3">
                        <label class="form-label">Current Price</label>
                        <input type="text" class="form-control" value="<%=klkl.getCurrentPrice() %>" readonly="readonly" name="currentPrice">
                      </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Price</label>
                          <input type="text" class="form-control" name="oldPrice" value="<%=klkl.getOldPrice()%>">
                        </div>
                      </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Price</label>
                          <input type="text" class="form-control" name="newPrice" value="<%=klkl.getNewPrice()%>">
                        </div>
                      </div>
  
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current Agent Id</label>
                          <input type="text" class="form-control" value="<%=lklk.getAgentId() %>" readonly="readonly" name="currentAgentId">
                        </div>
                      </div>
  
  <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label"> Agent Id (Last Updated)</label>
                          <input type="text" class="form-control" value="<%=klkl.getCurrentAgentId() %>" readonly="readonly" >
                        </div>
                      </div>
  
                    </div>
                    
                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Rent</label>
                          <input type="text" class="form-control" name="oldRent" value="<%=klkl.getOldRent()%>">
                        </div>
                      </div>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Rent</label>
                          <input type="text" class="form-control" name="newRent" value="<%=klkl.getNewRent()%>">
                        </div>
                      </div>
                      <% if (lklk.getRent().equals("Yes")) { %>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current Rent</label>
                          <input type="text" class="form-control" value="<%= klkl.getCurrentRent() %>" readonly="readonly" name="currentRent">
                        </div>
                      </div>
                      <% } else { %>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current On Rent?</label>
                          <input type="text" class="form-control" value="<%= lklk.getRent() %>" readonly="readonly" >
                        </div>
                      </div>
                      <% } %>

                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Old Lease End Date</label>
                            <input type="date" class="form-control" name="oldLeaseEndDate" value="<%=klkl.getOldLeaseEndDate()%>">
                          </div>
                        </div>
  
                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Current Lease End Date</label>
                            <input type="date" class="form-control"  name="currentLeaseEndDate" value="<%=klkl.getCurrentLeaseEndDate()%>">
                          </div>
                        </div>
    
                          <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Property Category</label>
                            <input type="text" class="form-control" value="<%= lklk.getCategory() %>" readonly="readonly" name="propertyCategory">
                          </div>
                        </div>
  
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </form>
    </div>
    
    <%} %>
</body>
</html>