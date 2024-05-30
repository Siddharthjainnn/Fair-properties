<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.agent"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
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

.form-control{
font-weight: 1000;
}
</style>
</head>
<body>


<%agent list=(agent)request.getAttribute("LIST"); %>


		
		<div class="container-fluid">


  <!-- Title -->
  <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
    
    <div class="hstack gap-3">
      
      <a href="update_agent_info?agent_id=<%=list.getAgentId() %>" class="btn btn-primary btn-sm btn-icon-text" style="width: 6cm;height: 1cm;font-size: large;font-weight: 700" ><i class="bi bi-save"></i> <span class="text">Do You Want To Update ?</span></a>
    </div>
  </div>

  <!-- Main content -->
  <div class="row">
    <!-- Left side -->
    <div class="col-lg-8">
      <!-- Basic information -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6 mb-4">Basic information</h3>
          <div class="row">
          
          
           <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Agent Id</label>
                <input type="text" class="form-control" name="agentId" value="<%=list.getAgentId() %>" readonly>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" class="form-control" name="name" required="required" value="<%=list.getFullName() %>" readonly>
              </div>
            </div>
           
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" required="required" readonly="readonly" value="<%=list.getEmail() %>" >
              </div>
            </div>
          </div>
          <div class="row">
             <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Phone number</label>
                <input type="text" class="form-control" name="phone" required="required" readonly="readonly"  value="<%=list.getPhone() %>">
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">License Number</label>
                <input type="text" class="form-control" name="licenseNumber" required="required" readonly="readonly" value="<%=list.getLicenseNumber() %>" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Specialization</label>
                <input type="text" class="form-control" name="specialization" required="required" readonly="readonly" value="<%=list.getSpecialization()%>">
              </div>
            </div>
          </div>
          
          
          
          <div class="row">
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Experience(Year)</label>
                <input type="text" class="form-control" name="experience" required="required" value="<%=list.getExperience() %>" readonly="readonly" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Languages spoken</label>
                <input type="text" class="form-control" name="languagesSpoken" required="required" value="<%=list.getLanguagesSpoken() %>" readonly="readonly" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Commission Rate(%)</label>
                <input type="text" class="form-control" name="commissionRate" required="required"  readonly="readonly" value="<%=list.getCommissionRate()%>">
              </div>
            </div>
          </div>
          
          
           <div class="row">
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Date of Birth</label>
                <input type="date" class="form-control" name="dob" required="required" readonly="readonly" value="<%=list.getDob() %>" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Gender</label>
              <input type="text" readonly="readonly" value="<%=list.getGender()%>" class="form-control" readonly >
              </div>
              
              
               
         
              
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Sales Performance (Number of Properties Sold)</label>
                <input type="text" class="form-control" name="salesperformance" required="required" readonly="readonly" value="<%=list.getSpecialization()%>">
              </div>
            </div>
          </div>
          
          
        </div>
      </div>
      <!-- Address -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6 mb-4">Address</h3>
          <div class="mb-3">
            <label class="form-label">Permanent Address</label>
            <input type="text" class="form-control" name="address" required="required" readonly="readonly" value="<%=list.getAddress()%>">
          </div>
          <div class="mb-3">
            <label class="form-label">Residential Address</label>
            <input type="text" class="form-control" name="address1" required="required" readonly="readonly" value="<%=list.getAddress1() %>" >
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">Country</label>
               <input type="text" class="form-control" value="<%=list.getCountry()%>" readonly="readonly">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">State</label>
                             <input type="text" value="<%=list.getState()%>" readonly="readonly" class="form-control"> 
                              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">City</label>
                
                <input type="text" value="<%=list.getCity()%>" class="form-control" readonly="readonly">
                              </div>
            </div>
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">ZIP code</label>
                <input type="text" class="form-control" name="zipcode" value="<%=list.getZipcode() %>"  readonly="readonly">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Right side -->
    <div class="col-lg-4">
      <!-- Status -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Status</h3>
          <input type="text" class="form-control" name="status" value="<%=list.getStatus() %>" required="required" readonly >
        </div>
      </div>
      <!-- Avatar -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Professional Photo</h3>
           <center><img src="./get_image_agent?agent_id=<%=list.getAgentId()%>" style="width: 7cm;height: 300px;"></center>
        </div>
      </div>
      
      
      <div class="card mb-4">
        <div class="card-body">
        
        <h3 class="h6">Aadhaar Card Number</h3>
        <input class="form-control" type="text"  name="adharcard" value="<%=list.getAdharcard() %>"  readonly="readonly">
        <br>
          <h3 class="h6">Aadhaar Card Document</h3>
        <center>  <img src="./get_adhar_agent?agent_id=<%=list.getAgentId()%>" style="width: 100%;height: 300px;"></center>
        </div>
      </div>
      
      <div class="card mb-4">
        <div class="card-body">
        <h3 class="h6">Pan Card Number</h3>
        <input class="form-control" type="text" name="pancard" value="<%=list.getPancard() %>" readonly="readonly" >
        <br>
          <h3 class="h6">Pan Card Document</h3>
        <center> <img src="./get_pancard_agent?agent_id=<%=list.getAgentId()%>" style="width: 100%;height: 300px;"></center>
        </div>
      </div>
      
      <!-- Notes -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Notes</h3>
          <input class="form-control" rows="3" name="notes" value="<%=list.getNotes() %>" readonly="readonly" style="height: 2cm;" ></input>
        </div>
      </div>
      <!-- Notification settings -->
      
      
    </div>
  </div>
</div>


		
		
		
		
		
		
		
		
		
		
		
		


<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>