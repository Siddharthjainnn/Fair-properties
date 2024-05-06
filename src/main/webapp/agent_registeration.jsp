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
    margin-top:20px;
    background-color: #f2f3f8;
}
.card {
    margin-bottom: 1.5rem;
    box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e5e9f2;
    border-radius: .2rem;
}
label{

font-weight: 1000;
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

    		<div class="row h-100">
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
</body>
</html>