<%@page import="dao.agent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
body{
    margin-top:20px;
 background-image: url("./image/Untitled design (2).gif");
/*     background-color: #f2f3f8; */
background-position: center;
background-size: cover;
background-repeat: no-repeat;
}
.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
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
.img-thumbnail {
    padding: .25rem;
    background-color: #ecf2f5;
    border: 1px solid #dee2e6;
    border-radius: .25rem;
    max-width: 100%;
    height: auto;
}
.avatar-lg {
    height: 150px;
    width: 150px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<% agent kll = (agent) request.getAttribute("a3"); %>

<% if (kll != null) { %>
    

    <% String a4 = (String) request.getAttribute("a2"); %>

    <% String d = (String) request.getAttribute("msg4"); %> 
    

    <% if (d != null) { %>
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
    <center>Incorrect Otp .Please Try Again !!</center>
  </div>
</div>


<script>
        // Redirect to home.jsp after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            window.location.href = 'agent.jsp';
        }, 5000);
    </script>
        
    <% } %>

    <br>
    <div class="row" style="margin-top: 5cm;">
        <div class="col-lg-5 col-md-7 mx-auto my-auto" >
            <div class="card" >
                <div class="card-body px-lg-5 py-lg-5 text-center" >
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" alt="profile-image">
                    <h2 class="text-info">2FA Security</h2>
                    <p class="mb-4">Enter the 5-digit OTP sent to your registered email..</p>
                    <form action="check_password" method="post">
                        <input type="hidden" value="<%= a4 %>" name="otp2">
                        <input type="hidden" value="<%= kll.getAgentId() %>" name="pass">
                        <input type="hidden" value="<%= kll.getAgentId() %>" name="agentid">
                         <center>
                        <div class="row mb-4" style="align-items: center;align-content: center;justify-content: center;" >
                       
                            <% for (int i = 1; i <= 5; i++) { %>
                                <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                    <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" maxlength="1" oninput="moveToNext(this)" onkeydown="moveToPrevious(event, this)" name="<%= i %>">
                                </div>
                            <% } %>
                            
                        </div>
                        </center>
                        <div class="text-center">
                            <button type="submit" class="btn bg-info btn-lg my-4">Continue</button>
                        </div>

                        <script>
                            function moveToNext(input) {
                                if (input.value.length === 1) {
                                    let parentDiv = input.parentElement.parentElement;
                                    let inputs = parentDiv.querySelectorAll('input[type="text"]');
                                    let currentIndex = Array.from(inputs).indexOf(input);
                                    if (currentIndex < inputs.length - 1) {
                                        inputs[currentIndex + 1].focus();
                                    }
                                }
                            }

                            function moveToPrevious(event, input) {
                                if (event.key === "Backspace" && input.value.length === 0) {
                                    let parentDiv = input.parentElement.parentElement;
                                    let inputs = parentDiv.querySelectorAll('input[type="text"]');
                                    let currentIndex = Array.from(inputs).indexOf(input);
                                    if (currentIndex > 0) {
                                        inputs[currentIndex - 1].focus();
                                    }
                                }
                            }
                        </script>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<% } else { %>

    <% String a = (String) request.getAttribute("msg"); %> 
    <% String b = (String) request.getAttribute("msg1"); %> 
    <% String c = (String) request.getAttribute("msg2"); %> 
    <% String d = (String) request.getAttribute("msg4"); %> 

    <% if (d != null) { %>
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
    <center>Incorrect Otp .Please Try Again !!</center>
  </div>
</div>


<script>
        // Redirect to home.jsp after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            window.location.href = 'agent.jsp';
        }, 5000);
    </script>

    <% } %>

    <br>
    <div class="row" style="margin-top: 5cm;">
        <div class="col-lg-5 col-md-7 mx-auto my-auto">
            <div class="card">
                <div class="card-body px-lg-5 py-lg-5 text-center" >
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" alt="profile-image">
                    <h2 class="text-info">2FA Security</h2>
                    <p class="mb-4">Enter the 5-digit OTP sent to your registered email.</p>
                    <form action="check_password" method="post">
                        <input type="hidden" value="<%= a %>" name="otp2">
                        <input type="hidden" value="<%= b %>" name="pass">
                        <input type="hidden" value="<%= c %>" name="agentid">
                        <div class="row mb-4" style="align-items: center;align-content: center;justify-content: center;">
                            <% for (int i = 1; i <= 5; i++) { %>
                                <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                    <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" maxlength="1" oninput="moveToNext(this)" onkeydown="moveToPrevious(event, this)" name="<%= i %>">
                                </div>
                            <% } %>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn bg-info btn-lg my-4">Continue</button>
                        </div>

                        <script>
                            function moveToNext(input) {
                                if (input.value.length === 1) {
                                    let parentDiv = input.parentElement.parentElement;
                                    let inputs = parentDiv.querySelectorAll('input[type="text"]');
                                    let currentIndex = Array.from(inputs).indexOf(input);
                                    if (currentIndex < inputs.length - 1) {
                                        inputs[currentIndex + 1].focus();
                                    }
                                }
                            }

                            function moveToPrevious(event, input) {
                                if (event.key === "Backspace" && input.value.length === 0) {
                                    let parentDiv = input.parentElement.parentElement;
                                    let inputs = parentDiv.querySelectorAll('input[type="text"]');
                                    let currentIndex = Array.from(inputs).indexOf(input);
                                    if (currentIndex > 0) {
                                        inputs[currentIndex - 1].focus();
                                    }
                                }
                            }
                        </script>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<% } %>
</body>
</html>
