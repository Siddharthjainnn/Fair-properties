<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/a81368914c.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    overflow: hidden;
    background-image: url("./image/Schematiq Mobile App (1).gif");
    background-repeat: no-repeat;
    background-size: 100%;
}

.wave {
    position: fixed;
    bottom: 0;
    left: 0;
    height: 100%;
    z-index: -1;
}

.container {
    width: 100vw;
    height: 100vh;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 7rem;
    padding: 0 2rem;
}

.img {
    display: flex;
    justify-content: flex-end;
    align-items: center;
}

.login-content {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.img img {
    width: 500px;
}

form {
    width: 360px;
}

.login-content img {
    height: 100px;
}

.login-content h2 {
    margin: 15px 0;
    color: #333;
    text-transform: uppercase;
    font-size: 2.9rem;
}

.input-div {
    position: relative;
    display: grid;
    grid-template-columns: 7% 93%;
    margin: 25px 0;
    padding: 5px 0;
    border-bottom: 2px solid #d9d9d9;
}

.input-div.one {
    margin-top: 0;
}

.i {
    color: #d9d9d9;
    display: flex;
    justify-content: center;
    align-items: center;
}

.i i {
    transition: .3s;
}

.input-div > div {
    position: relative;
    height: 45px;
}

.input-div > div > h5 {
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
    color: #999;
    font-size: 18px;
    transition: .3s;
}

.input-div:before, .input-div:after {
    content: '';
    position: absolute;
    bottom: -2px;
    width: 0%;
    height: 2px;
    background-color: #38d39f;
    transition: .4s;
}

.input-div:before {
    right: 50%;
}

.input-div:after {
    left: 50%;
}

.input-div.focus:before, .input-div.focus:after {
    width: 50%;
}

.input-div.focus > div > h5 {
    top: -5px;
    font-size: 15px;
}

.input-div.focus > .i > i {
    color: #38d39f;
}

.input-div > div > input {
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

.input-div.pass {
    margin-bottom: 4px;
}

a {
    display: block;
    text-align: right;
    text-decoration: none;
    color: #999;
    font-size: 0.9rem;
    transition: .3s;
}

a:hover {
    color: #38d39f;
}
.links {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.links1 {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.links a {
    margin: 0;
    padding: 0;
  
}

.links1 a {
    margin: 0;
    padding: 0;
      
}
.btn {
    display: block;
    width: 100%;
    height: 50px;
    border-radius: 25px;
    outline: none;
    border: none;
    background-image: linear-gradient(to right, #3a7bd5, #00d2ff, #3a7bd5);
    background-size: 200%;
    font-size: 1.2rem;
    color: #fff;
    font-family: 'Poppins', sans-serif;
    text-transform: uppercase;
    margin: 1rem 0;
    cursor: pointer;
    transition: .5s;
}

.btn:hover {
    background-position: right;
}

.g_id_signin {
    width: 100%;
    
}

.g_id_signin > div {
    width: 100% !important;
    display: flex;
    justify-content: center;
    align-items: center;
}

@media screen and (max-width: 1050px) {
    .container {
        grid-gap: 5rem;
    }
    .input {
        color: white;
    }
}

@media screen and (max-width: 1000px) {
    form {
        width: 290px;
    }

    .login-content h2 {
        font-size: 2.4rem;
        margin: 8px 0;
    }

    .img img {
        width: 400px;
    }
    .input {
        color: white;
    }
}

@media screen and (max-width: 900px) {
    .container {
        grid-template-columns: 1fr;
    }

    .img {
        display: none;
    }
    .input {
        color: black;
    }

    .wave {
        display: none;
    }

    .login-content {
        justify-content: center;
    }

    body {
        background: none;
    }

    .login-content {
        margin-left: 0;
        margin-top: 0;
    }

    form {
        width: 90%;
    }
   
}


 .error {
            color: red;
            display: none;
        }
</style>
<script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body>


<%String n=(String)request.getParameter("source"); %>


<%if(n.equals("mobile")){ %>

<%String mmm=(String)request.getAttribute("kk"); %>

<%if (mmm !=null ){ %>
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
  <!-- <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
 -->  <div>
   <h2> <center>Incorrect  Mobile No Or Password.Please Try Again !!</center></h2>
  </div>
</div>


<script>
        // Redirect to home.jsp after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            window.location.href = 'agent_login.jsp?source=mobile';
        }, 6000);
    </script>

<%} %>

<%String kl=(String)request.getAttribute("msg23"); %>

<% if (kl != null) { %>
<br>
<br>
<center>
<h2>
  <div class="alert alert-light" role="alert" style="color: black;font-weight: 1000;">
    Thank you for submitting your agent request. We will notify you by email when the admin approves your request !!.
  </div>
</h2>
</center>

<script>
  setTimeout(function() {
    window.location.href = 'agent_login.jsp?source=agent';
  }, 8000); // 5000 milliseconds = 5 seconds
</script>
<% } %>

<!-- <img class="wave" src="./image/Fair Property.gif">  -->
<div class="container">
    <div class="img">
        <!-- <img src="./image/bg.svg"> -->
    </div>
    <div class="login-content">
        <form id="myForm" action="agent_login?source=mobile" method="post">
            <img src="./image/avatar.svg">
            <h2 class="title" style="font-weight: 1000">Welcome To Agent Login</h2>
   
 <div class="links1" >
 
                <a href="agent_login.jsp?source=email" style="color: black;">Login Using Email Id ?</a>|
               
                <a href="agent_login.jsp?source=agent" style="color: black;">Login Using Agent Id ?</a>
            </div>
  
  <style>
@media (max-width: 600px) {
    .links1 a {
        display: block;
        font-size: 12px;
        margin: 10px 0;
    }
}
</style>
  <br>
            <div class="input-div one">
                <div class="i">
                    <i style="color: black;" class="fas fa-user"></i>
                </div>
               <div class="div">
            <h5 style="color: black;font-weight: 300">Mobile No</h5>
            <input style="color: black;" type="text" class="input" name="user_id" id="phone" required pattern="\d{10}">
            <span class="error" id="error-message">Please enter a valid 10-digit phone number.</span>
        </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i style="color: black;" class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h5 style="color: black;font-weight: 300">Password</h5>
                    <input  style="color: black;" type="password" class="input" name="password">
                </div>
            </div>
            
            <br>
            <div id="g_id_onload"
                 data-client_id="822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com"
                 data-login_uri="http://localhost:8080/Bitsquad_real_estate/file2"
                 data-auto_prompt="false">
            </div>
            <div id="buttonDiv" class="g_id_signin" data-type="standard" data-size="large" data-text="sign_in_with" data-shape="pill"></div>
        
            <div class="links" style="margin-top: 1cm;margin-bottom: 1cm;">
                <!-- <a href="agent_registeration.jsp" style="color: black;">Want To Register?</a> -->
                <a href="emai_check.jsp" style="color: black;">Want To Register?</a>
                <a href="forgotpasswordagent.jsp" style="color: black;">Forgot Password?</a>
            </div>
            <input type="submit" class="btn" value="Login">
        </form>
    </div>
</div>
 <script>
        document.getElementById('myForm').addEventListener('submit', function(event) {
            const phoneInput = document.getElementById('phone');
            const errorMessage = document.getElementById('error-message');
            
            const phonePattern = /^\d{10}$/;
            if (!phonePattern.test(phoneInput.value)) {
                errorMessage.style.display = 'inline';
                event.preventDefault();  // Prevent form submission
            } else {
                errorMessage.style.display = 'none';
            }
        });
    </script>

<script>
window.onload = function() {
    // Initialize Google Sign-In
    google.accounts.id.initialize({
        client_id: "822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com",
        callback: handleCredentialResponse
    });
    google.accounts.id.renderButton(
        document.getElementById("buttonDiv"),
        { theme: "outline", size: "large", width: "100%" }
    );
    google.accounts.id.prompt();

    // Change the hidden text within the Google Sign-In button
    const observer = new MutationObserver(function() {
        const buttonText = document.querySelectorAll('span');
        buttonText.forEach((span) => {
            if (span.innerText === 'Sign in with Google') {
                span.innerText = 'Sign in as Agent';
            }
        });
    });

    observer.observe(document.body, {
        childList: true,
        subtree: true
    });

    // Input field focus and blur event listeners
    const inputs = document.querySelectorAll(".input");
    inputs.forEach(input => {
        input.value = "";
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });
};

// Function to add focus class
function addcl() {
    let parent = this.parentNode.parentNode;
    parent.classList.add("focus");
}

// Function to remove focus class if input value is empty
function remcl() {
    let parent = this.parentNode.parentNode;
    if (this.value == "") {
        parent.classList.remove("focus");
    }
}

function handleCredentialResponse(response) {
    console.log("Encoded JWT ID token: " + response.credential);
    fetch('/Bitsquad_real_estate/file2', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ token: response.credential })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            window.location.href = "/Bitsquad_real_estate/agent.jsp";
        } else {
            console.error('Login failed:', data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
}
</script>


</body>
</html>























<%}else if(n.equals("email")){ %>

<%String mmm=(String)request.getAttribute("kk"); %>

<%if (mmm!=null ){ %>
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
 <!--  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
 -->  <div>
    <h2>  <center>Incorrect Email Id Or Password.Please Try Again !!</center></h2>
  </div>
</div>


<script>
        // Redirect to home.jsp after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            window.location.href = 'agent_login.jsp?source=email';
        }, 6000);
    </script>

<%} %>

<%String kl=(String)request.getAttribute("msg23"); %>

<% if (kl != null) { %>
<br>
<br>
<center>
<h2>
  <div class="alert alert-light" role="alert" style="color: black;font-weight: 1000;">
    Thank you for submitting your agent request. We will notify you by email when the admin approves your request !!.
  </div>
</h2>
</center>

<script>
  setTimeout(function() {
    window.location.href = 'agent_login.jsp?source=agent';
  }, 8000); // 5000 milliseconds = 5 seconds
</script>
<% } %>

<!-- <img class="wave" src="./image/Fair Property.gif">  -->
<div class="container">
    <div class="img">
        <!-- <img src="./image/bg.svg"> -->
    </div>
    <div class="login-content">
        <form action="agent_login?source=email" method="post">
            <img src="./image/avatar.svg">
            <h2 class="title" style="font-weight: 1000">Welcome To Agent Login</h2>
   
 <div class="links1" >
 
                <a href="agent_login.jsp?source=mobile" style="color: black;">Login Using Mobile No ?</a>|
              
                <a href="agent_login.jsp?source=agent" style="color: black;">Login Using Agent Id ?</a>
            </div>
            
            <style>
@media (max-width: 600px) {
    .links1 a {
        display: block;
        font-size: 12px;
        margin: 10px 0;
    }
}
</style>
  <br>
            <div class="input-div one">
                <div class="i">
                    <i style="color: black;" class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h5 style="color: black;font-weight: 300">Mail Id</h5>
                    <input  style="color: black;" type="email" class="input" name="user_id">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i style="color: black;" class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h5 style="color: black;font-weight: 300">Password</h5>
                    <input  style="color: black;" type="password" class="input" name="password">
                </div>
            </div>
            
            <br>
            <div id="g_id_onload"
                 data-client_id="822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com"
                 data-login_uri="http://localhost:8080/Bitsquad_real_estate/file2"
                 data-auto_prompt="false">
            </div>
            <div id="buttonDiv" class="g_id_signin" data-type="standard" data-size="large" data-text="sign_in_with" data-shape="pill"></div>
        
            <div class="links" style="margin-top: 1cm;margin-bottom: 1cm;">
                <a href="emai_check.jsp" style="color: black;">Want To Register?</a>
                <a href="forgotpasswordagent.jsp" style="color: black;">Forgot Password?</a>
            </div>
            <input type="submit" class="btn" value="Login">
        </form>
    </div>
</div>

<script>
window.onload = function() {
    // Initialize Google Sign-In
    google.accounts.id.initialize({
        client_id: "822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com",
        callback: handleCredentialResponse
    });
    google.accounts.id.renderButton(
        document.getElementById("buttonDiv"),
        { theme: "outline", size: "large", width: "100%" }
    );
    google.accounts.id.prompt();

    // Change the hidden text within the Google Sign-In button
    const observer = new MutationObserver(function() {
        const buttonText = document.querySelectorAll('span');
        buttonText.forEach((span) => {
            if (span.innerText === 'Sign in with Google') {
                span.innerText = 'Sign in as Agent';
            }
        });
    });

    observer.observe(document.body, {
        childList: true,
        subtree: true
    });

    // Input field focus and blur event listeners
    const inputs = document.querySelectorAll(".input");
    inputs.forEach(input => {
        input.value = "";
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });
};

// Function to add focus class
function addcl() {
    let parent = this.parentNode.parentNode;
    parent.classList.add("focus");
}

// Function to remove focus class if input value is empty
function remcl() {
    let parent = this.parentNode.parentNode;
    if (this.value == "") {
        parent.classList.remove("focus");
    }
}

function handleCredentialResponse(response) {
    console.log("Encoded JWT ID token: " + response.credential);
    fetch('/Bitsquad_real_estate/file2', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ token: response.credential })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            window.location.href = "/Bitsquad_real_estate/agent.jsp";
        } else {
            console.error('Login failed:', data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
}
</script>


</body>
</html>












































<%}else if(n.equals("agent")){ %>

<%String mmm=(String)request.getAttribute("kk"); %>

<%if (mmm !=null ){ %>
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
  <!-- <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
 -->  <div>
   <h2>   <center>Incorrect Agent Id Or Password.Please Try Again !!</center></h2>
  </div>
</div>


<script>
        // Redirect to home.jsp after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            window.location.href = 'agent_login.jsp?source=agent';
        }, 6000);
    </script>

<%} %>


<%String kl=(String)request.getAttribute("msg23"); %>

<% if (kl != null) { %>
<br>
<br>
<center>
<h2>
  <div class="alert alert-light" role="alert" style="color: black;font-weight: 1000;">
    Thank you for submitting your agent request. We will notify you by email when the admin approves your request !!.
  </div>
</h2>
</center>

<script>
  setTimeout(function() {
    window.location.href = 'agent_login.jsp?source=agent';
  }, 8000); // 5000 milliseconds = 5 seconds
</script>
<% } %>

<!-- <img class="wave" src="./image/Fair Property.gif">  -->
<div class="container">
    <div class="img">
        <!-- <img src="./image/bg.svg"> -->
    </div>
    <div class="login-content">
        <form action="agent_login?source=agent" method="post">
            <img src="./image/avatar.svg">
            <h2 class="title" style="font-weight: 1000">Welcome To Agent Login</h2>
   
 <div class="links1" >
 
                <a href="agent_login.jsp?source=mobile" style="color: black;">Login Using Mobile No ?</a>|
                
                <a href="agent_login.jsp?source=email" style="color: black;">Login Using Email Id ?</a>
            </div>
            <style>
@media (max-width: 600px) {
    .links1 a {
        display: block;
        font-size: 12px;
        margin: 10px 0;
    }
}
</style>
  <br>
            <div class="input-div one">
                <div class="i">
                    <i style="color: black;" class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h5 style="color: black;font-weight: 300">Agent Id</h5>
                    <input  style="color: black;" type="text" class="input" name="user_id">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i style="color: black;" class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h5 style="color: black;font-weight: 300">Password</h5>
                    <input  style="color: black;" type="password" class="input" name="password">
                </div>
            </div>
            
            <br>
            <div id="g_id_onload"
                 data-client_id="822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com"
                 data-login_uri="http://localhost:8080/Bitsquad_real_estate/file2"
                 data-auto_prompt="false">
            </div>
            <div id="buttonDiv" class="g_id_signin" data-type="standard" data-size="large" data-text="sign_in_with" data-shape="pill"></div>
        
            <div class="links" style="margin-top: 1cm;margin-bottom: 1cm;">
                <a href="emai_check.jsp" style="color: black;">Want To Register?</a>
                <a href="forgotpasswordagent.jsp" style="color: black;">Forgot Password?</a>
            </div>
            <input type="submit" class="btn" value="Login">
        </form>
    </div>
</div>

<script>
window.onload = function() {
    // Initialize Google Sign-In
    google.accounts.id.initialize({
        client_id: "822779823535-7rm5lqkhpmq38ah9fntl9bm3gidk7ahd.apps.googleusercontent.com",
        callback: handleCredentialResponse
    });
    google.accounts.id.renderButton(
        document.getElementById("buttonDiv"),
        { theme: "outline", size: "large", width: "100%" }
    );
    google.accounts.id.prompt();

    // Change the hidden text within the Google Sign-In button
    const observer = new MutationObserver(function() {
        const buttonText = document.querySelectorAll('span');
        buttonText.forEach((span) => {
            if (span.innerText === 'Sign in with Google') {
                span.innerText = 'Sign in as Agent';
            }
        });
    });

    observer.observe(document.body, {
        childList: true,
        subtree: true
    });

    // Input field focus and blur event listeners
    const inputs = document.querySelectorAll(".input");
    inputs.forEach(input => {
        input.value = "";
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });
};

// Function to add focus class
function addcl() {
    let parent = this.parentNode.parentNode;
    parent.classList.add("focus");
}

// Function to remove focus class if input value is empty
function remcl() {
    let parent = this.parentNode.parentNode;
    if (this.value == "") {
        parent.classList.remove("focus");
    }
}

function handleCredentialResponse(response) {
    console.log("Encoded JWT ID token: " + response.credential);
    fetch('/Bitsquad_real_estate/file2', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ token: response.credential })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            window.location.href = "/Bitsquad_real_estate/agent.jsp";
        } else {
            console.error('Login failed:', data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
}
</script>


</body>
</html>


<%} %>
