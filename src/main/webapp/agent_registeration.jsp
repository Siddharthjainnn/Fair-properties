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
</style>
</head>
<body>

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

    		<%-- <div class="row h-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Get started</h1>
							<p class="lead">
								Start creating the best possible user experience for you customers.
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form   action="agent_registeration" method="post" enctype="multipart/form-data" >
						
						<div class="form-group">
									
									
  <label for="name">Agent Id</label>
						<input type="text" id="agentId" class="form-control form-control-lg" name="agentId" value="<%= randomUserId %>" readonly>
												
							</div>		
									<div class="form-group">
									
									
  <label for="name">Name</label>
  <input type="text" class="form-control form-control-lg" id="name" name="name" required placeholder="Enter your name">
</div>
<div class="form-group">
  <label for="email">Email Address</label>
  <input type="email" class="form-control form-control-lg" id="email" name="email" required placeholder="Enter your email address">
</div>
<div class="form-group">
  <label for="phone">Phone Number</label>
  <input type="tel" class="form-control form-control-lg" id="phone" name="phone" placeholder="Enter your phone number">
</div>
<div class="form-group">
  <label for="address">Address</label>
  <input type="text" class="form-control form-control-lg" id="address" name="address" placeholder="Enter your address">
</div>
<div class="form-group">
  <label for="companyName">Company Name</label>
  <input type="text" class="form-control form-control-lg" id="companyName" name="companyName" placeholder="Enter your company name">
</div>
<div class="form-group">
  <label for="licenseNumber">License Number</label>
  <input type="text" class="form-control form-control-lg" id="licenseNumber" name="licenseNumber" placeholder="Enter your license number">
</div>
<div class="form-group">
  <label for="specialization">Specialization</label>
  <input type="text" class="form-control form-control-lg" id="specialization" name="specialization" placeholder="Enter your specialization">
</div>
<div class="form-group">
  <label for="experience">Experience (years)</label>
  <input type="number" class="form-control form-control-lg" id="experience" name="experience" placeholder="Enter your experience in years">
</div>
<div class="form-group">
  <label for="languagesSpoken">Languages Spoken</label>
  <input type="text" class="form-control form-control-lg" id="languagesSpoken" name="languagesSpoken" placeholder="Enter languages spoken">
</div>
<div class="form-group">
  <label for="commissionRate">Commission Rate (%)</label>
  <input type="number" class="form-control form-control-lg" id="commissionRate" name="commissionRate" step="0.01" placeholder="Enter commission rate">
</div>
<div class="form-group">
  <label for="profilePicture">Profile Picture </label>
 <input type="file" class="form-control form-control-lg"  placeholder=" Enter your photo" name="image">
</div>
<div class="form-group">
  <label for="socialMediaLinks">Social Media Links</label>
  <input type="text" class="form-control form-control-lg" id="socialMediaLinks" name="socialMediaLinks" placeholder="Enter your social media links">
</div>
<div class="form-group">
  <label for="notes">Notes</label>
  <textarea class="form-control form-control-lg" id="notes" name="notes" rows="3" placeholder="Enter any notes"></textarea>
</div>
  <button type="submit" class="btn btn-primary">ADD PRODUCT</button>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		
		
		 --%>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<form   action="agent_registeration" method="post" enctype="multipart/form-data" >
		
		<div class="container-fluid">


  <!-- Title -->
  <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
    
    <div class="hstack gap-3">
      <!-- <button type="submit" class="btn btn-light btn-sm btn-icon-text" style="width: 4cm;height: 1cm;"><i class="bi bi-x"></i> <span class="text">Draft</span></button> -->
      <button type="submit" class="btn btn-primary btn-sm btn-icon-text" style="width: 4cm;height: 1cm;" ><i class="bi bi-save"></i> <span class="text">Save</span></button>
    </div>
  </div>

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
    <input type="email" class="form-control" id="email" name="email" required="required">
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
                 <label class="form-label">License Number<span style="color: red;"> *</span></label>
    <input type="text" class="form-control" id="licenseNumber" name="licenseNumber" required="required" maxlength="20">
    <div id="licenseNumberError" class="invalid-feedback"></div>
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Specialization</label>
                <input type="text" class="form-control" name="specialization" required="required">
              </div>
            </div>
          </div>
          
          
          
          <div class="row">
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Experience(Year)</label>
                <input type="text" class="form-control" name="experience" required="required" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Languages Spoken</label>
                <input type="text" class="form-control" name="languagesSpoken" required="required" >
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Commission Rate(%)</label>
                <input type="text" class="form-control" name="commissionRate" required="required">
              </div>
            </div>
          </div>
          
          
           <div class="row">
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Date Of Birth<span style="color: red;"> *</span></label>
    <input type="date" class="form-control" id="dob" name="dob" required="required">
    <div id="dobError" class="invalid-feedback"></div>

               <div id="dobError" class="invalid-feedback"></div>
              </div>
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Gender</label>
               <select class="form-select" name="gender" required="required" >
            <option value="Male" selected="">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
          </select>
              </div>
              
              
               
         
              
            </div>
            
            <div class="col-lg-4">
              <div class="mb-3">
                <label class="form-label">Sales Performance (Number Of Properties Sold)</label>
                <input type="text" class="form-control" name="salesperformance" required="required">
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
          <textarea class="form-control" rows="3" name="notes" ></textarea>
        </div>
      </div>
      <!-- Notification settings -->
      
      
    </div>
  </div>
</div>


		
		
		
		
		
		
		
		
		
		
		
		</form>
		
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
    // Regular expression to validate license number format (20 numbers only)
    var licenseNumberRegex = /^\d{1,20}$/;
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



</body>

</html>