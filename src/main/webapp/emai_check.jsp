<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{}
@media only screen and (max-width: 767px) {
    .container {
        height: 100vh; /* Full height on mobile view */
    }
}


@media only screen and (min-width: 768px){
body:not(.layout-admin) .section, body:not(.layout-admin) section {
    padding: 100px 0;
    
}
}

.d-middle {
    align-items: center;
    display: flex;
    justify-content: center;
}

.opacity-8,.overlay-opacity-8:after {
    opacity: .8
}

opacity-8, .overlay-opacity-8:after {
    opacity: .8;
}
.overlay-dark-hover:hover:after, .overlay-dark:after {
    background: #131f43;
}
.overlay-dark-hover:after, .overlay-dark:after, .overlay-light-hover:after, .overlay-light:after {
    bottom: 0;
    content: "";
    height: 100%;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    width: 100%;
    z-index: 0;
}

.bg-theme-color-light {
    background-color: rgba(87,79,236,.04)!important;
}
.bg-cover {
    background-position: 50%!important;
    background-repeat: no-repeat!important;
    background-size: cover!important;
  /*   height: 45cm; */
    
}
.overlay-dark, .overlay-dark-hover, .overlay-light, .overlay-light-hover {
    position: relative;
}
#overlay-default, .overlay-dark, .overlay-dark-hover:after, .overlay-default, .overlay-light, .overlay-light-hover:after {
    transition: all .2s ease;
}
.section, section {
    position: relative;
    word-break: break-word;
}

.overlay-dark>*, .overlay-light>* {
    position: relative;
    z-index: 1;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>



<div class="section bg-theme-color-light overlay-dark overlay-opacity-8 bg-cover lazy" data-loaded="true" style="background-image: url(https://bootdey.com/img/Content/bg1.jpg);">
    			
				<div class="container" style="height: 14.3cm;" > 

					<div class="row text-center-md text-center-xs d-middle justify-content-start" style="margin-top: 8cm;" >
						
						<div class="col-12 col-lg-6 mb-5 text-white aos-init aos-animate" data-aos="fade-in" data-aos-delay="0" data-aos-offset="0" >

							<!-- main title -->
							<h1 class="display-4 fw-bold mb-0">
								<span class="d-inline-block">

									<span id="family-count" class="h6 fw-normal d-block text-align-end text-center-xs" style="font-size: x-large;">
    We have <span id="agent-count" style="color: red;">0</span> agents in our family
</span>

<script>
document.addEventListener("DOMContentLoaded", function() {
    const targetNumber = 102;
    const duration = 5000; // Animation duration in milliseconds

    let currentNumber = 0; // Start counting from 0
    const spanElement = document.getElementById('agent-count');

    const startTime = performance.now();

    function updateNumber(timestamp) {
        const progress = timestamp - startTime;

        if (progress < duration && currentNumber <= targetNumber) {
            currentNumber = Math.floor((progress / duration) * targetNumber);
            spanElement.textContent = currentNumber;
            requestAnimationFrame(updateNumber);
        } else {
            spanElement.textContent = targetNumber;
        }
    }

    requestAnimationFrame(updateNumber);
});
</script>
<span>
									<span class="text-danger">Fair </span> Property Pvt Ltd
								</span>
							</h1>
							
							<!-- slogan -->
							<p class="h3 fw-normal mb-0">
								Welcome To Agent Module
							</p>

						</div>

						<div class="col-12 col-lg-6 text-align-end text-center-md text-center-xs aos-init aos-animate" data-aos="fade-in" data-aos-delay="50" data-aos-offset="0">

							<div class="d-inline-block bg-white shadow-primary-xs rounded p-4 p-md-5 w-100 max-w-450 text-align-start">
								
								<h2 class="h5 mb-5">
									<i class="fi fi-homeadvisor"></i> 
									<span class="d-inline-block px-2">Want To Register</span>
								</h2>

								<form novalidate="" class="bs-validate" method="get" action="check_duplicate">


									

									
									

									<div class="form-floating mb-3">
										<input placeholder="Address or Zipcode" id="s_address" type="text"  class="form-control" name="email_id">
										<label for="s_address">Enter Email Id</label>
									</div>


									<button type="submit" class="btn w-100 btn-lg btn-danger bg-gradient-danger">
										<i class="fi fi-search"></i>
										Submit
									</button>
								</form>

							</div>

						</div>

					</div>

				</div>

			</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>