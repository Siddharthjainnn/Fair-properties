<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">



	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body{
    font-family: 'Poppins', sans-serif;
    overflow: hidden;
}

.wave{
	position: fixed;
	bottom: 0;
	left: 0;
	height: 100%;
	z-index: -1;
}

.container{
    width: 100vw;
    height: 100vh;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap :7rem;
    padding: 0 2rem;
}

.img{
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.login-content{
	display: flex;
	justify-content: flex-start;
	align-items: center;
	text-align: center;
}

.img img{
	width: 500px;
}

form{
	width: 360px;
}

.login-content img{
    height: 100px;
}

.login-content h2{
	margin: 15px 0;
	color: #333;
	text-transform: uppercase;
	font-size: 2.9rem;
}

.login-content .input-div{
	position: relative;
    display: grid;
    grid-template-columns: 7% 93%;
    margin: 25px 0;
    padding: 5px 0;
    border-bottom: 2px solid #d9d9d9;
}

.login-content .input-div.one{
	margin-top: 0;
}

.i{
	color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
}

.i i{
	transition: .3s;
}

.input-div > div{
    position: relative;
	height: 45px;
}

.input-div > div > h5{
	position: absolute;
	left: 10px;
	top: 50%;
	transform: translateY(-50%);
	color: #999;
	font-size: 18px;
	transition: .3s;
}

.input-div:before, .input-div:after{
	content: '';
	position: absolute;
	bottom: -2px;
	width: 0%;
	height: 2px;
	background-color: #38d39f;
	transition: .4s;
}

.input-div:before{
	right: 50%;
}

.input-div:after{
	left: 50%;
}

.input-div.focus:before, .input-div.focus:after{
	width: 50%;
}

.input-div.focus > div > h5{
	top: -5px;
	font-size: 15px;
}

.input-div.focus > .i > i{
	color: #38d39f;
}

.input-div > div > input{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	background: none;
	padding: 0.5rem 0.7rem;
	font-size: 1.2rem;
	color: #555;
	font-family: 'poppins', sans-serif;
}

.input-div.pass{
	margin-bottom: 4px;
}

a{
	display: block;
	text-align: right;
	text-decoration: none;
	color: #999;
	font-size: 0.9rem;
	transition: .3s;
}

a:hover{
	color: #38d39f;
}

.btn{
	display: block;
	width: 100%;
	height: 50px;
	border-radius: 25px;
	outline: none;
	border: none;
	background-image: linear-gradient(to right, #32be8f, #38d39f, #32be8f);
	background-size: 200%;
	font-size: 1.2rem;
	color: #fff;
	font-family: 'Poppins', sans-serif;
	text-transform: uppercase;
	margin: 1rem 0;
	cursor: pointer;
	transition: .5s;
}
.btn:hover{
	background-position: right;
}


@media screen and (max-width: 1050px){
	.container{
		grid-gap: 5rem;
	}
}

@media screen and (max-width: 1000px){
	form{
		width: 290px;
	}

	.login-content h2{
        font-size: 2.4rem;
        margin: 8px 0;
	}

	.img img{
		width: 400px;
	}
}

@media screen and (max-width: 900px){
	.container{
		grid-template-columns: 1fr;
	}

	.img{
		display: none;
	}

	.wave{
		display: none;
	}

	.login-content{
		justify-content: center;
	}
}
	</style>
	
	<script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body>

<%String lk=request.getParameter("kk"); 
if(lk!=null)
{
%> 
<h1><center><%=lk %></center></h1>  
<%} %> 
<img class="wave" src="./image/wave.png">
	<div class="container">
		<div class="img">
			<img src="./image/bg.svg">
		</div>
		<div class="login-content">
			<form action="customer_loginctrl" method="post">
				<img src="./image/avatar.svg">
				<h2 class="title">Welcome</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="user_id">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password">
            	   </div>
            	</div>
            	
            	<span>
            	

         <div id="g_id_onload"
         data-client_id="822779823535-sudg9mqhhdm7figehb7le4vob1c7ouqm.apps.googleusercontent.com"
         data-login_uri="http://localhost:8080/Bitsquad_real_estate/file"
         data-auto_prompt="false">
    </div>
    <div id="buttonDiv" class="g_id_signin" data-type="standard"></div>

    <script>
    function handleCredentialResponse(response) {
        console.log("Encoded JWT ID token: " + response.credential);
        fetch('/Bitsquad_real_estate/file', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ token: response.credential }) // Correct JSON formatting
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                window.location.href = "/Bitsquad_real_estate/home.jsp";
            } else {
                console.error('Login failed:', data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }

    window.onload = function () {
        google.accounts.id.initialize({
            client_id: "822779823535-sudg9mqhhdm7figehb7le4vob1c7ouqm.apps.googleusercontent.com",
            callback: handleCredentialResponse
        });
        google.accounts.id.renderButton(
            document.getElementById("buttonDiv"),
            { theme: "outline", size: "large" }  // customization attributes
        );
        google.accounts.id.prompt(); // also display the One Tap dialog
    };
    </script>
          
          
          
          
          
          
            	
            	<a href="#">Forgot Password?</a>
            	<a href="#" id="newCustomerLink" style="text-decoration: underline; color: blue; cursor: pointer;">New Customer?</a>
            	</span>
            	
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>
    
    
    
    
    
     <%
        // Generate random alphabetic characters
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        StringBuilder sb = new StringBuilder();
        java.util.Random random = new java.util.Random();
        for (int i = 0; i < 3; i++) {
            char c = alphabet.charAt(random.nextInt(alphabet.length()));
            sb.append(c);
        }

        // Generate random numeric characters
        String numeric = "0123456789";
        for (int i = 0; i < 4; i++) {
            char c = numeric.charAt(random.nextInt(numeric.length()));
            sb.append(c);
        }

        // Output the generated customer ID
        String customerId = sb.toString();
    %>

<div id="newCustomerModal" class="modal" style="display: none; position: fixed; z-index: 1; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0, 0, 0, 0.4);">
  <div class="modal-content" style="background-color: #fefefe; margin: 15% auto; padding: 20px; border: 1px solid #888; width: 20%;">
    <span class="close" style="color: #aaa; float: right; font-size: 28px; font-weight: bold; cursor: pointer;">&times;</span>
    <form id="customerForm" action="customer_registeration" method="post">
      <label for="customerId">Customer ID:</label>
      <input type="text" id="customerId" name="customerId" style="margin-bottom: 10px; width: 100%;height: 1cm;font-size: medium;" value="<%= customerId %>" readonly="readonly"><br>

      <label for="customerName">Customer Name:</label>
      <input type="text" id="customerName" name="customerName" style="margin-bottom: 10px; width: 100%;height: 1cm;"><br>

      <label for="customerMobile">Customer Mobile:</label>
      <input type="text" id="customerMobile" name="customerMobile" style="margin-bottom: 10px; width: 100%;height: 1cm;"><br>

      <label for="customerEmail">Customer Email:</label>
      <input type="email" id="customerEmail" name="customerEmail" style="margin-bottom: 10px; width: 100%;height: 1cm;"><br>

      <input type="submit" value="Submit" style="background-color: #4CAF50; color: white; padding: 10px 15px; border: none; cursor: pointer; width: 100%; border-radius: 4px;">
    </form>
  </div>
</div>
    <script>
    
    document.getElementById("newCustomerLink").addEventListener("click", function(event) {
    	  event.preventDefault();
    	  document.getElementById("newCustomerModal").style.display = "block";
    	});

    	document.getElementsByClassName("close")[0].addEventListener("click", function() {
    	  document.getElementById("newCustomerModal").style.display = "none";
    	});

    	window.addEventListener("click", function(event) {
    	  var modal = document.getElementById("newCustomerModal");
    	  if (event.target == modal) {
    	    modal.style.display = "none";
    	  }
    	});

    </script>
    <script>
    const inputs = document.querySelectorAll(".input");


    function addcl(){
    	let parent = this.parentNode.parentNode;
    	parent.classList.add("focus");
    }

    function remcl(){
    	let parent = this.parentNode.parentNode;
    	if(this.value == ""){
    		parent.classList.remove("focus");
    	}
    }


    inputs.forEach(input => {
    	input.addEventListener("focus", addcl);
    	input.addEventListener("blur", remcl);
    });

    </script>
</body>
</html>