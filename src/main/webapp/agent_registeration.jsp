<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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

.backdrop {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black */
    backdrop-filter: blur(5px); /* Add blur effect */
    display: none; /* Initially hidden */
}
.loader {
    display: none;
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    border: 16px solid #f3f3f3; /* Light grey */
    border-top: 16px solid #3498db; /* Blue */
    border-radius: 50%;
    width: 120px;
    height: 120px;
    animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

.blur {
    filter: blur(1px);
}
</style>
</head>
<body>
<%String email=(String)request.getAttribute("k"); %>
<div class="container-fluid">
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="./image/Fair Property Pvt Ltdnew.png" class="d-block w-100" alt="..." style="height: 15cm;">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="./image/Fair Property Pvt Ltd (1).png" class="d-block w-100" alt="..." style="height: 15cm;">
    </div>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>

<br>
 <%
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String digits = "0123456789";
        
        String randomUserId = "";
        
        for (int i = 0; i < 3; i++) {
            randomUserId += alphabet.charAt((int) (Math.random() * alphabet.length()));
        }
        
        for (int i = 0; i < 3; i++) {
            randomUserId += digits.charAt((int) (Math.random() * digits.length()));
        }
    %>


		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		 <div class="loader" id="loader"></div>
		
		
		
		<form  id="agentRegistrationForm" action="agent_registeration" method="post" enctype="multipart/form-data" >
		
		<div class="container-fluid">


  <!-- Title -->
  
  <!-- Main content -->
  <div class="row">
    <!-- Left side -->
    <div class="col-lg-8">
      <!-- Basic information -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6 mb-4">Basic Information</h3>
          <div class="row">
          
          
           <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Agent Id</label>
                <input type="text" class="form-control" name="agentId" value="<%= randomUserId %>" readonly>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="mb-3">
               <label class="form-label">Full Name<span style="color: red;"> *</span></label>
    <input type="text" class="form-control" id="name" name="name" required="required">
    <div id="nameError" class="invalid-feedback"></div>
              </div>
            </div>
           
            
            <div class="col-lg-4">
              <div class="mb-3">
                 <label class="form-label">Email<span style="color: red;"> *</span></label>
    <input type="email" class="form-control" value="<%=email %>" id="email" name="email" required="required">
    <div id="emailError" class="invalid-feedback"></div>
              </div>
            </div>
          </div>
          <div class="row">
             <div class="col-lg-4">
              <div class="mb-3">
               <label class="form-label">Phone Number<span style="color: red;"> *</span></label>
    <input type="text" class="form-control" id="phone" name="phone" required="required">
    <div id="phoneError" class="invalid-feedback"></div>
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                 <label class="form-label">Agent License Number (Optional)</label>
    <input type="text" class="form-control" id="licenseNumber" placeholder="If Not Please Enter NA" name="licenseNumber"  maxlength="20">
    <div id="licenseNumberError" class="invalid-feedback"></div>
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Specialization</label>
                
                
                <select class="form-select" name="specialization"  >
             <option value="" disabled selected>Select your specialization</option>
             
              <option value="commercial">Commercial</option>
                <option value="industrial">Industrial</option>
                <option value="land">Land</option>
                <option value="rental">Rental</option>
                <option value="investment">Investment</option>
                <option value="residential-commercial">Residential + Commercial</option>
<option value="residential-industrial">Residential + Industrial</option>
<option value="residential-land">Residential + Land</option>
<option value="residential-rental">Residential + Rental</option>
<option value="residential-investment">Residential + Investment</option>
<option value="commercial-industrial">Commercial + Industrial</option>
<option value="commercial-land">Commercial + Land</option>
<option value="commercial-rental">Commercial + Rental</option>
<option value="commercial-investment">Commercial + Investment</option>
<option value="industrial-land">Industrial + Land</option>
<option value="industrial-rental">Industrial + Rental</option>
<option value="industrial-investment">Industrial + Investment</option>
<option value="land-rental">Land + Rental</option>
<option value="land-investment">Land + Investment</option>
<option value="rental-investment">Rental + Investment</option>

<option value="residential-commercial-industrial">Residential + Commercial + Industrial</option>
<option value="residential-commercial-land">Residential + Commercial + Land</option>
<option value="residential-commercial-rental">Residential + Commercial + Rental</option>
<option value="residential-commercial-investment">Residential + Commercial + Investment</option>
<option value="residential-industrial-land">Residential + Industrial + Land</option>
<option value="residential-industrial-rental">Residential + Industrial + Rental</option>
<option value="residential-industrial-investment">Residential + Industrial + Investment</option>
<option value="residential-land-rental">Residential + Land + Rental</option>
<option value="residential-land-investment">Residential + Land + Investment</option>
<option value="residential-rental-investment">Residential + Rental + Investment</option>
<option value="commercial-industrial-land">Commercial + Industrial + Land</option>
<option value="commercial-industrial-rental">Commercial + Industrial + Rental</option>
<option value="commercial-industrial-investment">Commercial + Industrial + Investment</option>
<option value="commercial-land-rental">Commercial + Land + Rental</option>
<option value="commercial-land-investment">Commercial + Land + Investment</option>
<option value="commercial-rental-investment">Commercial + Rental + Investment</option>
<option value="industrial-land-rental">Industrial + Land + Rental</option>
<option value="industrial-land-investment">Industrial + Land + Investment</option>
<option value="industrial-rental-investment">Industrial + Rental + Investment</option>
<option value="land-rental-investment">Land + Rental + Investment</option>

<option value="residential-commercial-industrial-land">Residential + Commercial + Industrial + Land</option>
<option value="residential-commercial-industrial-rental">Residential + Commercial + Industrial + Rental</option>
<option value="residential-commercial-industrial-investment">Residential + Commercial + Industrial + Investment</option>
<option value="residential-commercial-land-rental">Residential + Commercial + Land + Rental</option>
<option value="residential-commercial-land-investment">Residential + Commercial + Land + Investment</option>
<option value="residential-commercial-rental-investment">Residential + Commercial + Rental + Investment</option>
<option value="residential-industrial-land-rental">Residential + Industrial + Land + Rental</option>
<option value="residential-industrial-land-investment">Residential + Industrial + Land + Investment</option>
<option value="residential-industrial-rental-investment">Residential + Industrial + Rental + Investment</option>
<option value="residential-land-rental-investment">Residential + Land + Rental + Investment</option>
<option value="commercial-industrial-land-rental">Commercial + Industrial + Land + Rental</option>
<option value="commercial-industrial-land-investment">Commercial + Industrial + Land + Investment</option>
<option value="commercial-industrial-rental-investment">Commercial + Industrial + Rental + Investment</option>
<option value="commercial-land-rental-investment">Commercial + Land + Rental + Investment</option>
<option value="industrial-land-rental-investment">Industrial + Land + Rental + Investment</option>
                
          </select>
                
              </div>
            </div>
          </div>
          
          
          
          <div class="row">
            <div class="col-lg-3">
              <div class="mb-3">
                <label class="form-label">Experience(Year)</label>
                <input type="text" class="form-control" name="experience"  >
              </div>
            </div>
            
            
            
            <div class="col-lg-3">
              <div class="mb-3">
                <label class="form-label">Commission Rate(%)</label>
                <input type="text" class="form-control" name="commissionRate" >
              </div>
            </div>
            
            
            <div class="col-lg-3">
              <div class="mb-3">
                <label class="form-label">Date Of Birth</label>
    <input type="date" class="form-control" id="dob" name="dob" >
    <div id="dobError" class="invalid-feedback"></div>

               <div id="dobError" class="invalid-feedback"></div>
              </div>
            </div>
            
            <div class="col-lg-3">
              <div class="mb-3">
                <label class="form-label">Gender</label>
               <select class="form-select" name="gender" required="required" >
            <option value="Male" selected="">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
          </select>
              </div>
              
          </div>
          
          
           
            
           
          </div>
          <input type="hidden" class="form-control" name="salesperformance" >
          <input type="hidden" class="form-control" name="languagesSpoken"   >
          
        </div>
      </div>
      <!-- Address -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6 mb-4">Address</h3>
          <div class="mb-3">
            <label class="form-label">Permanent Address</label>
            <input type="text" class="form-control" name="address" required="required">
          </div>
          <div class="mb-3">
            <label class="form-label">Residential Address</label>
            <input type="text" class="form-control" name="address1" required="required"  >
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">Country</label>
                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="country">
                  
                  <option value="India">India</option>
                  
                </select><span class="select2 select2-container select2-container--bootstrap-5" dir="ltr" data-select2-id="select2-data-2-46y9" style="width: 391px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-vp8l-container" aria-controls="select2-vp8l-container"><span class="select2-selection__rendered" id="select2-vp8l-container" role="textbox" aria-readonly="true" title="Select country"><span class="select2-selection__placeholder">Select Country</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">State</label>
                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select state" data-select2-id="select2-data-4-680y" tabindex="-1" aria-hidden="true" name="state">
                  
                  <option value="Madhya Pradesh">Madhya Pradesh</option>
                  
                </select><span class="select2 select2-container select2-container--bootstrap-5" dir="ltr" data-select2-id="select2-data-5-np4c" style="width: 391px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-2fn7-container" aria-controls="select2-2fn7-container"><span class="select2-selection__rendered" id="select2-2fn7-container" role="textbox" aria-readonly="true" title="Select state"><span class="select2-selection__placeholder">Select State</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="mb-3">
                <label class="form-label">City</label>
                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select city" data-select2-id="select2-data-7-809c" tabindex="-1" aria-hidden="true" name="city">
                  
                  <option value="Indore">Indore</option>
                  <option value="Ujjain">Ujjain</option>
                  <option value="Dewas">Dewas</option>
                  
                </select><span class="select2 select2-container select2-container--bootstrap-5" dir="ltr" data-select2-id="select2-data-8-3peu" style="width: 391px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-jdfi-container" aria-controls="select2-jdfi-container"><span class="select2-selection__rendered" id="select2-jdfi-container" role="textbox" aria-readonly="true" title="Select city"><span class="select2-selection__placeholder">Select City</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="mb-3">
                 <label class="form-label">ZIP Code<span style="color: red;"> *</span></label>
    <input type="text" class="form-control" name="zipcode">
    <div id="zipError" class="invalid-feedback"></div>
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
          <input type="text" class="form-control" name="status" value="Draft" required="required" readonly >
        </div>
      </div>
      <!-- Avatar -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Professional Photo</h3>
          <input class="form-control" type="file"name="image" >
        </div>
      </div>
      
      
      <div class="card mb-4">
        <div class="card-body">
        
      
        <h3 class="h6">Aadhaar Card Number<span style="color: red;"> *</span></h3>
    <input class="form-control" type="text" name="adharcard" >
    <div id="aadhaarError" class="invalid-feedback"></div>
        <br>
          <h3 class="h6">Aadhaar Card Document</h3>
          <input class="form-control" type="file" name="adharcardimage">
        </div>
      </div>
      
      <div class="card mb-4">
        <div class="card-body">
        <h3 class="h6">Pan Card Number<span style="color: red;"> *</span></h3>
    <input class="form-control" type="text" name="pancard">
    <div id="panError" class="invalid-feedback"></div>
        <br>
          <h3 class="h6">Pan Card Document</h3>
          <input class="form-control" type="file" name="pancarddoc">
        </div>
      </div>
      
      <!-- Notes -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Notes</h3>
          <textarea style="height: 1.3cm;" class="form-control" rows="3" name="notes" ></textarea>
        </div>
      </div>
      <!-- Notification settings -->
      
      <!-- <button type="submit" class="btn btn-light btn-sm btn-icon-text" style="width: 4cm;height: 1cm;"><i class="bi bi-x"></i> <span class="text">Draft</span></button> -->
      
      
<!--       <div style=" bottom: 1cm;margin-left: 9cm;">
      
  <div style="display: flex; align-items: center; gap: 10px;">
    <a class="btn btn-danger" href="agent_login.jsp" style="display: inline-flex; align-items: center; height: 1.4cm; line-height: 1.4cm;">Cancel</a>
  <button id="saveButton" type="submit" class="btn btn-primary btn-sm btn-icon-text" style="width: 8cm; height: 1.4cm; display: inline-flex; align-items: center;">
    <i class="bi bi-save"></i>
    <span class="text" style="font-size: large;width: 7cm;" >Submit </span>
  </button>

</div>

</div> -->
<div class="card mb-4" style="justify-content: flex-end;align-items:flex-end;background-color: transparent;" >
        <div class="card-body" style="justify-content: center;align-items: center;">
        <a class="btn btn-danger" href="agent_login.jsp" style="display: inline-flex; align-items: center; height: 1.4cm; line-height: 1.4cm;">Cancel</a>
          <button id="saveButton" type="submit" class="btn btn-primary btn-sm btn-icon-text" style="width: 8cm; height: 1.4cm; display: inline-flex; align-items: center;">
    <i class="bi bi-save"></i>
    <span class="text" style="font-size: large;width: 7cm;" >Submit </span>
  </button>
        </div>
      </div>

  
    </div>
  </div>
</div>


    

      



		
		
		
		
		
		
		
		
		
		
		
		</form>
		<script>
document.getElementById('agentRegistrationForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent default form submission to show the loader
    document.getElementById('loader').style.display = 'block';
    document.getElementById('loader').style.zIndex = '1000';
    document.getElementById('agentRegistrationForm').classList.add('blur');

    // Submit the form programmatically
    event.target.submit(); 
    
});
</script>

		<script>
    // Function to validate the Full Name.
    function fullNameValidation() {
    var nameInput = document.getElementById("name");
    var nameError = document.getElementById("nameError");

    // Check if the name input is empty
    if (nameInput.value.trim() === "") {
        nameError.textContent = "Please enter your full name.";
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

// Add event listener to trigger validation on input change
document.getElementById("name").addEventListener("input", function() {
    fullNameValidation();
});
// Function to validate the gmail.
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
// Function to validate the Phone Number.
function phoneValidation() {
    var phoneInput = document.getElementById("phone");
    var phoneError = document.getElementById("phoneError");

    // Check if the phone number input is empty
    if (phoneInput.value.trim() === "") {
        phoneError.textContent = "Please enter your phone number.";
        phoneInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (!isValidPhone(phoneInput.value.trim())) {
        // Check if the phone number is not valid
        phoneError.textContent = "Please enter a valid phone number of 10 Numbers.";
        phoneInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        phoneError.textContent = ""; // Clear the error message
        phoneInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the phone number is valid
function isValidPhone(phone) {
    // Regular expression to validate phone number format
    var phoneRegex = /^\d{10}$/;
    return phoneRegex.test(phone);
}

// Add event listener to trigger validation on input change
document.getElementById("phone").addEventListener("input", function() {
    phoneValidation();
});

// Function to validate the license number
function licenseNumberValidation() {
      var licenseNumberInput = document.getElementById("licenseNumber");
      var licenseNumberError = document.getElementById("licenseNumberError");
      var licenseNumber = licenseNumberInput.value.trim();

      // Check if the license number input is empty
      if (licenseNumber === "") {
        licenseNumberError.textContent = "Please enter your license number.";
        licenseNumberInput.classList.add("is-invalid");
        return false; // Prevent form submission
      } else if (!isValidLicenseNumber(licenseNumber)) {
        // Check if the license number is not valid
        licenseNumberError.textContent = "Please enter a valid license number.";
        licenseNumberInput.classList.add("is-invalid");
        return false; // Prevent form submission
      } else {
        licenseNumberError.textContent = ""; // Clear the error message
        licenseNumberInput.classList.remove("is-invalid");
        return true; // Allow form submission
      }
    }

    // Function to check if the license number is valid
    function isValidLicenseNumber(licenseNumber) {
      // Regular expression to validate license number format (1-20 alphanumeric characters)
      var licenseNumberRegex = /^[a-zA-Z0-9]{1,20}$/;
      return licenseNumberRegex.test(licenseNumber);
    }

    // Add event listener to trigger validation on input change
    document.getElementById("licenseNumber").addEventListener("input", function() {
      licenseNumberValidation();
    });

// Function to validate the date of birth.
function dateOfBirthValidation() {
    var dobInput = document.getElementById("dob");
    var dobError = document.getElementById("dobError");
    var dob = dobInput.value.trim();

    // Check if the date of birth input is empty
    if (dob === "") {
        dobError.textContent = "Please enter your date of birth.";
        dobInput.classList.add("is-invalid");
        return false; // Prevent form submission
    }

    var selectedDate = new Date(dob);
    var currentDate = new Date();
    var maxDate = new Date(currentDate.getFullYear() - 100, currentDate.getMonth(), currentDate.getDate());

    // Check if the selected date is today's date or beyond 100 years ago
    if (selectedDate >= currentDate || selectedDate <= maxDate) {
        // Show error message
        dobError.textContent = "Please select a date that is not today and not more than 100 years ago.";
        dobInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        dobError.textContent = ""; // Clear the error message
        dobInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Add event listener to trigger validation on input change
document.getElementById("dob").addEventListener("input", function() {
    dateOfBirthValidation();
});

function zipCodeValidation() {
    var zipInput = document.getElementsByName("zipcode")[0]; // Assuming there's only one input with name "zipcode"
    var zipValue = zipInput.value.trim();
    var zipError = document.getElementById("zipError");

    // Regular expression to validate 6 numbers only
    var zipRegex = /^\d{6}$/;

    // Check if the ZIP code input is empty or doesn't match the pattern
    if (zipValue === "" || !zipRegex.test(zipValue)) {
        zipError.textContent = "Please enter 6 numbers for the ZIP code.";
        zipInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        zipError.textContent = ""; // Clear the error message
        zipInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Add event listener to trigger validation on input change
document.getElementsByName("zipcode")[0].addEventListener("input", function() {
zipCodeValidation();
});

document.getElementsByName("zipcode")[0].addEventListener("keypress", function(event) {
    if (this.value.length >= 6) {
        event.preventDefault();
    }
});


function aadhaarCardValidation() {
    var aadhaarInput = document.getElementsByName("adharcard")[0]; // Assuming there's only one input with name "adharcard"
    var aadhaarValue = aadhaarInput.value.trim();
    var aadhaarError = document.getElementById("aadhaarError");

    // Regular expression to validate exactly 12 digits
    var aadhaarRegex = /^\d{12}$/;

    // Check if the Aadhaar Card input is empty or doesn't match the pattern
    if (aadhaarValue === "" || !aadhaarRegex.test(aadhaarValue)) {
        aadhaarError.textContent = "Please enter 12 digits for the Aadhaar Card Number.";
        aadhaarInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        aadhaarError.textContent = ""; // Clear the error message
        aadhaarInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
    
}

// Add event listener to trigger validation on input change
document.getElementsByName("adharcard")[0].addEventListener("input", function() {
   aadhaarCardValidation();
});

// Add event listener to restrict input after 12 digits
document.getElementsByName("adharcard")[0].addEventListener("keypress", function(event) {
    if (this.value.length >= 12) {
        event.preventDefault();
    }
});

function panCardValidation() {
    var panInput = document.getElementsByName("pancard")[0]; // Assuming there's only one input with name "pancard"
    var panValue = panInput.value.trim().toUpperCase(); // Convert to uppercase for consistent validation
    var panError = document.getElementById("panError");

    // Regular expression to validate PAN card number format
    var panRegex = /^[A-Z]{5}[0-9]{4}[A-Z]$/;

    // Check if the PAN card input is empty or doesn't match the pattern
    if (panValue === "" || !panRegex.test(panValue)) {
        panError.textContent = "Please enter a valid PAN Card Number.";
        panInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        panError.textContent = ""; // Clear the error message
        panInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Add event listener to trigger validation on input change
document.getElementsByName("pancard")[0].addEventListener("input", function() {
    panCardValidation();
    
});
document.getElementsByName("pancard")[0].addEventListener("keypress", function(event) {
    if (this.value.length >= 10) {
        event.preventDefault();
    }
});



</script>
<script>
    document.getElementById('agentRegistrationForm').addEventListener('submit', function(event) {
        // Your custom function
        function customValidationFunction() {
            // Implement your validation logic here
            // Return true if valid, false otherwise
            return false; // or false
        }

        // Call your custom function
        if (!fullNameValidation() || !emailValidation()|| !phoneValidation() || !dateOfBirthValidation() || !zipCodeValidation() || !aadhaarCardValidation() || !panCardValidation()  ) {
            // If the function returns false, prevent the form from submitting
            event.preventDefault();
            alert('Validation failed. Please check your inputs.');
        }
        // If the function returns true, the form will be submitted as usual
    });
</script>



</body>

</html>