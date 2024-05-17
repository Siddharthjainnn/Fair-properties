<%@page import="dao.PropertyDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commercial Property</title>

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
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<%PropertyDTO pro=(PropertyDTO)request.getAttribute("LIST"); %>
<%String k=(String)request.getParameter("agent_id"); %>
<%String k1=(String)request.getParameter("agent_name"); %>
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

<form action="add_property_by_agent" method="post" enctype="multipart/form-data">
    <div class="container-fluid" style="padding-left: 5%;padding-right: 5%;">

       
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="../../pages/admin/customers.html" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Commercial Property</h2>
            <div class="hstack gap-3">
              
             <!--  <button type="submit" class="btn btn-primary btn-sm btn-icon-text" style="width: 4cm;height: 1cm;"><i class="bi bi-save"></i> <span class="text">Save</span></button> -->
            </div>
          </div>
        
          <!-- Main content -->
          <div class="row">
            <!-- Left side -->
            <div class="col-lg-8">
              <!-- Basic information -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Property information</h3>

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


                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Property Name</label>
                        <input type="text" class="form-control" name="property_name" value="<%=pro.getPropertyName() %>" readonly="readonly" >
                        <input type="hidden" class="form-control" value="<%=pro.getPropertyId()%>" name="property_id">
                      </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label" for="Property Type">Property Type</label>
                          
                          
                          <input type="text" class="form-control" value="commercial" name="category" value="<%=pro.getPropertyType() %>" readonly="readonly" >
                        </div>
                      </div>

                      <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Price(Rs)</label>
                          <input type="text" class="form-control"  name="price" required="required" readonly="readonly"  value="<%=pro.getPrice()%>">
                        </div>
                      </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Area(Sq.feet)</label>
                        <input type="text" class="form-control" name="area" required="required" >
                      </div>
                    </div>
                  </div>


                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Length</label>
                        <input type="text" class="form-control" name="length" required="required" readonly="readonly"  value="<%=pro.getLength()%>">
                      </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Width</label>
                          <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getWidth()%>">
                        </div>
                      </div>

                      <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Type Of Ownership</label>
                          <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOwnership()%>">
                        </div>
                      </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Transaction Type</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getTransaction()%>">
                      </div>
                    </div>
                  </div>



                  
                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Construction Year <span style="color: red;"> *</span></label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getConsYear()%>">
                        <div id="consYearError" class="invalid-feedback"></div>
                      </div>
                    </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Numbers Of Floors</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getFloors()%>">
                      </div>
                    </div>


                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Direction</label>
                         <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getDirection()%>">

                        </div>
                      </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                            <label class="form-label">Numbers Of Open Sides <span style="color: red;"> *</span></label>
                            <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOpenside()%>">
                            <div id="opensideError" class="invalid-feedback"></div>
                        </div>
                      </div>

  




                    
                    </div>
                </div>





                


            </div>
           

              

              


              <!-- Address -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Address Information</h3>
                  <div class="mb-3">
                    <label class="form-label">Street/Address</label>
                    <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getAddress()%>" >
                  </div>
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Area</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getArea()%>">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Landmark</label>
                          <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getLandmark()%>">
                        </div>
                      </div>
                      



                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Ward Number</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getWard()%>">
                    </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Scheme No</label>
                       <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getSchemeNo()%>">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Assembly</label>
                          <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getAssembly()%>">

                        </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">City</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getCity()%>">
                      </div>
                    </div>
                  </div>
      
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Zip Code</label>
                       <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getZipcode()%>">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">State</label>
                          <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getState()%>">

                          </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Country</label>
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getCountry()%>">
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              






              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Feature & Amenities</h3>


                    <div class="row">
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Parking Area</label>
                           <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getParkArea()%>">
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Security</label>
                           <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getSecurity()%>">
                          </div>
                        </div>
    
                        <div class="col-lg-4">
                            <div class="mb-3">
                              <label class="form-label">Gas Connection</label>
                             <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getGasCon()%>">
                            </div>
                          </div>
      
    
    
    
    
                        
                        </div>



                        
                        

                        





                        <div class="row">
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Water Connection</label>
                               <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getWaterCon()%>">
                              </div>
                            </div>
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Number Of Lift's </label>
                                <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getNoOfLift()%>">
                              </div>
                            </div>
        
                            <div class="col-lg-4">
                                <div class="mb-3">
                                 <label class="form-label">Overlooking</label>
            <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOverlooking()%>">

                                </div>
                              </div>
          
        
        
        
        
                            
                            </div>










                            <div class="row">
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">Electricity Connection</label>
                                   <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getElec()%>">
                                  </div>
                                </div>
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">Interior</label>
                                    <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  >
                                  </div>
                                </div>
            
                                <div class="col-lg-4">
                                    <div class="mb-3">
                                      <label class="form-label">Internet Availablity</label>
             <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getInternet()%>">
                                    </div>
                                  </div>
              
            
            
            
            
                                
                                </div>
                            
        





                    
                  
                </div>





                


              </div>



              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Owner Information</h3>

                        <div class="row">
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Name <span style="color: red;"> *</span></label>
                                <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOwnerName()%>">
                                 <div id="nameError" class="invalid-feedback"></div>
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Phone number <span style="color: red;"> *</span></label>
                                <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOwnerNumber()%>">
                                <div id="phoneError" class="invalid-feedback"></div>
                              </div>
                            </div>
        
                            <div class="col-lg-3">
                                <div class="mb-3">
                                    <label class="form-label">Email <span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getOwnerEmail()%>">
                                    <div id="emailError" class="invalid-feedback"></div>
                                </div>
                              </div>

                              <div class="col-lg-3">
                                <div class="mb-3">
                                  <label class="form-label">Agent Name</label>
                                  <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getAgentName()%>">
                                  <input type="hidden" class="form-control" value="" name="agent_id">
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
                  <input class="form-control" type="text" value="Draft" name="status" readonly="readonly">
                </div>
              </div>
              <!-- Avatar -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Front Image</h3>
                  <input class="form-control" type="file" name="font_image">
                </div>


                <div class="card-body">
                    <h3 class="h6">Image 1</h3>
                    <input class="form-control" type="file" name="image_1">
                  </div>


                  <div class="card-body">
                    <h3 class="h6">Image 2</h3>
                    <input class="form-control" type="file" name="image_2">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 3</h3>
                    <input class="form-control" type="file" name="image_3">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 4</h3>
                    <input class="form-control" type="file" name="image_4">
                  </div>
              </div>

              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">video</h3>
                  <input class="form-control" type="file" name="video">
                </div>
              </div>
              <!-- Notes -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Notes</h3>
                  <input class="form-control" rows="3" name="notes" value="<%=pro.getNotes()%>" readonly="readonly"></input>
                </div>
              </div>
             <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">More Option</h3>
                  <ul class="list-group list-group-flush mx-n2">
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">Available For Rent</h6>
                        <small>Also Show Same Property For Rent</small>
                      </div>
                      <div class="form-check form-switch">
                        <input type="text" class="form-control"  name="width" required="required" readonly="readonly"  value="<%=pro.getRent()%>">
                      </div>
                    </li>
                    <!-- <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">Tips and tutorials</h6>
                        <small>Tips on getting more out of the platform.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch" checked="">
                      </div>
                    </li>
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">User Research</h6>
                        <small>Get involved in our beta testing program.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch">
                      </div>
                    </li> -->
                  </ul>
                </div>
              </div>
         
            </div>
          </div>
        </div>
       </form>
      
<script>

    function nameValidation() {
        var nameInput = document.getElementById("name");
        var nameError = document.getElementById("nameError");
    
        // Check if the name input is empty
        if (nameInput.value.trim() === "") {
            nameError.textContent = "Please enter your name.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else if (/^\d+$/.test(nameInput.value.trim())) {
            // Check if the name contains only numbers
            nameError.textContent = "Name should not contain numbers.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else if (!/^[a-zA-Z\s]+$/.test(nameInput.value.trim())) {
            // Check if the name contains any special characters
            nameError.textContent = "Name should not contain any other characters.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else {
            nameError.textContent = ""; // Clear the error message
            nameInput.classList.remove("is-invalid");
            return true; // Allow form submission
        }
 
    }
    document.getElementById("name").addEventListener("input", function() {
    nameValidation();
    
});
function phoneValidation(event) {
    var phoneInput = document.getElementById("phone");
    var phoneError = document.getElementById("phoneError");
    var key = event.keyCode || event.charCode;

    // Check if the entered key is a number and if the total length is less than 10
    if ((key >= 48 && key <= 57) && phoneInput.value.length < 10) {
        phoneError.textContent = ""; // Clear the error message
        phoneInput.classList.remove("is-invalid");
        return true;
    } else if (phoneInput.value.length >= 10) {
        // Prevent further input if length is already 10
        event.preventDefault();
        return false;
    } else {
        phoneError.textContent = "Please enter a valid phone number of 10 Numbers.";
        phoneInput.classList.add("is-invalid");
        event.preventDefault();
        return false;
    }
}

// Add event listener for keypress to restrict input and trigger validation
document.getElementById("phone").addEventListener("keypress", phoneValidation);

function emailValidation() {
    var emailInput = document.getElementById("email");
    var emailError = document.getElementById("emailError");

    
    // Check if the email input is empty
    if (emailInput.value.trim() === "") {
        emailError.textContent = "Please enter your email address.";
        emailInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (!isValidEmail(emailInput.value.trim())) {
        // Check if the email address is not valid
        emailError.textContent = "Please enter a valid email address.";
        emailInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        emailError.textContent = ""; // Clear the error message
        emailInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the email address is valid
function isValidEmail(email) {
    // Regular expression to validate email format
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
// Add event listener to trigger validation on input change
document.getElementById("email").addEventListener("input", function() {
    emailValidation();
});
function opensideValidation() {
    var opensideInput = document.getElementById("openside");
    var opensideError = document.getElementById("opensideError");

    // Check if the openside input is empty
    if (opensideInput.value.trim() === "") {
        opensideError.textContent = "Please enter the number of open sides.";
        opensideInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (!isValidNumber(opensideInput.value.trim())) {
        // Check if the input is not a valid number
        opensideError.textContent = "Please enter a valid number greater than 0.";
        opensideInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        opensideError.textContent = ""; // Clear the error message
        opensideInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the input is a valid number greater than 0
function isValidNumber(number) {
    return !isNaN(number) && Number(number) > 0;
}

// Add event listener to trigger validation on input change
document.getElementById("openside").addEventListener("input", function() {
    opensideValidation();
});
function constructionYearValidation() {
    var consYearInput = document.getElementById("cons_year");
    var consYearError = document.getElementById("consYearError");

    // Check if the construction month input is empty
    if (consYearInput.value.trim() === "") {
        consYearError.textContent = "Please select the construction month.";
        consYearInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (isCurrentOrFutureMonth(consYearInput.value.trim())) {
        // Check if the selected month is the current or a future month
        consYearError.textContent = "Please select a construction month earlier than the current one.";
        consYearInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        consYearError.textContent = ""; // Clear the error message
        consYearInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the selected month is the current or a future month
function isCurrentOrFutureMonth(yearMonth) {
    var currentDate = new Date();
    var selectedDate = new Date(yearMonth + "-01");

    // Check if the selected date is the current month or a future month
    if (
        (selectedDate.getFullYear() === currentDate.getFullYear() &&
            selectedDate.getMonth() === currentDate.getMonth()) ||
        selectedDate > currentDate
    ) {
        return true;
    }
    return false;
}

// Add event listener to trigger validation on input change
document.getElementById("cons_year").addEventListener("input", function() {
    constructionYearValidation();
});




</script> 
</body>
</html>
