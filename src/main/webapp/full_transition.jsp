<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.transiction_property"%>
<%@page import="java.util.Random"%>
<%@page import="dao.PropertyDTO"%>

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

<%transiction_property lklk=(transiction_property)request.getAttribute("LIST2"); %>


    <div class="container-fluid">

       
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Property Transitions </h2><i>Last Updated : <%=lklk.getTransitionDate() %></i>
            <div class="hstack gap-3">
              
             <!--  <button type="submit" style="width: 5cm;height: 1.3cm;" class="btn btn-primary btn-sm btn-icon-text"><i class="bi bi-save"></i> <span class="text">Save</span></button>
 -->            </div>
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
                        <input type="text" class="form-control" value="<%=lklk.getTransitionId()%>" readonly="readonly" name="transitionId">
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
                        <input type="text" class="form-control" name="oldOwnerName" value="<%=lklk.getOldOwnerName()%>" readonly="readonly">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Old Owner Email</label>
                        <input type="email" class="form-control" name="oldOwnerEmail" value="<%=lklk.getOldOwnerEmail()%>" readonly="readonly">
                      </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Old Owner Phone No</label>
                          <input type="text" class="form-control" name="oldOwnerPhoneNo" value="<%=lklk.getOldOwnerPhoneNo()%>" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Current Owner Name</label>
                        <input type="text" class="form-control" value="<%=lklk.getCurrentOwnerName() %>" readonly="readonly" name="currentOwnerName">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb3">
                          <label class="form-label">Current Owner Email</label>
                          <input type="text" class="form-control" value="<%=lklk.getCurrentOwnerEmail() %>" readonly="readonly" name="currentOwnerEmail">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Current Owner Phone No</label>
                          <input type="text" class="form-control" value="<%=lklk.getCurrentOwnerPhoneNo() %>" readonly="readonly" name="currentOwnerPhoneNo">
                        </div>
                      </div>

                  </div>
                  
                  
                  
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">New Owner Name</label>
                        <input type="text" class="form-control" name="newOwnerName" value="<%=lklk.getNewOwnerName()%>" readonly="readonly">
                      </div>
                    </div>

                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Email</label>
                          <input type="text" class="form-control" name="newOwnerEmail" value="<%=lklk.getNewOwnerEmail()%>" readonly="readonly">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">New Owner Phone No</label>
                          <input type="text" class="form-control" name="newOwnerPhoneNo" value="<%=lklk.getNewOwnerPhoneNo()%>" readonly="readonly">
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
                        <input type="text" class="form-control" value="<%=lklk.getCurrentPrice() %>" readonly="readonly" name="currentPrice">
                      </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Price</label>
                          <input type="text" class="form-control" name="oldPrice" value="<%=lklk.getOldPrice()%>" readonly="readonly">
                        </div>
                      </div>

                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Price</label>
                          <input type="text" class="form-control" name="newPrice" value="<%=lklk.getNewPrice()%>" readonly="readonly">
                        </div>
                      </div>
  
                      
  
  <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label"> Agent Id (Last Updated)</label>
                          <input type="text" class="form-control" value="<%=lklk.getCurrentAgentId() %>" readonly="readonly" >
                        </div>
                      </div>
  
                    </div>
                    
                    <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Old Rent</label>
                          <input type="text" class="form-control" name="oldRent" readonly="readonly" value="<%=lklk.getOldRent()%>">
                        </div>
                      </div>
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">New Rent</label>
                          <input type="text" class="form-control" name="newRent" readonly="readonly" value="<%=lklk.getNewRent()%>">
                        </div>
                      </div>
                      
                      <div class="col-lg-2">
                        <div class="mb-3">
                          <label class="form-label">Current Rent</label>
                          <input type="text" class="form-control" value="<%= lklk.getCurrentRent() %>" readonly="readonly" name="currentRent">
                        </div>
                      </div>
                  
                      
                   

                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Old Lease End Date</label>
                            <input type="date" class="form-control" name="oldLeaseEndDate" readonly="readonly" value="<%=lklk.getOldLeaseEndDate()%>">
                          </div>
                        </div>
  
                      <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Current Lease End Date</label>
                            <input type="date" class="form-control"  name="currentLeaseEndDate" readonly="readonly" value="<%=lklk.getCurrentLeaseEndDate()%>">
                          </div>
                        </div>
    
                          <div class="col-lg-2">
                          <div class="mb-3">
                            <label class="form-label">Property Category</label>
                            <input type="text" class="form-control" value="<%= lklk.getPropertyCategory() %>" readonly="readonly" name="propertyCategory">
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
    
 
</body>
</html>