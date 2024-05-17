<%@page import="dao.agent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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



<%agent kll=(agent)request.getAttribute("a3"); %>



<%if(kll!=null){ %>






<h1><%=kll.getPassword() %></h1>
<h1><%=kll.getAgentId() %></h1>



<%String a4=(String)request.getAttribute("a2"); %> 


<%String d=(String)request.getAttribute("msg4"); %> 

<%if(d!=null){ %>
<h1 style="color: red;"><%=d %></h1>
<%} %>



    <br>
    <div class="row">
        <div class="col-lg-5 col-md-7 mx-auto my-auto">
            <div class="card">
                <div class="card-body px-lg-5 py-lg-5 text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" alt="profile-image">
                    <h2 class="text-info">2FA Security</h2>
                    <p class="mb-4">Enter 5-digits code from your athenticatior app.</p>
                    <form action="check_password" method="post">
<input type="hidden" value="<%=a4%>" name="otp2">
<input type="hidden" value="<%=kll.getAgentId()%>" name="pass">
<input type="hidden" value="<%=kll.getAgentId()%>" name="agentid">
                        <div class="row mb-4">
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="1">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="2">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="3">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="4">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="5">
    </div>
    <!-- Repeat for other input fields -->
</div>
<div class="text-center">
    <button type="submit" class="btn bg-info btn-lg my-4">Continue</button>
</div>

<script>
function moveToNext(input) {
    // Get the parent div of the input
    var parentDiv = input.parentElement;

    // Get all input fields within the parent div
    var inputs = parentDiv.querySelectorAll('input');

    // Find the index of the current input field
    var currentIndex = Array.from(inputs).indexOf(input);

    // If the current input is not the last one
    if (currentIndex < inputs.length - 1) {
        // Move focus to the next input field
        inputs[currentIndex + 1].focus();
    }
}
</script>
                        
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>










<%}else{ %>






<%String a=(String)request.getAttribute("msg"); %> 

<%String b=(String)request.getAttribute("msg1"); %> 
<%String c=(String)request.getAttribute("msg2"); %> 

<%String d=(String)request.getAttribute("msg4"); %> 

<%if(d!=null){ %>
<h1 style="color: red;"><%=d %></h1>
<%} %>



    <br>
    <div class="row">
        <div class="col-lg-5 col-md-7 mx-auto my-auto">
            <div class="card">
                <div class="card-body px-lg-5 py-lg-5 text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" alt="profile-image">
                    <h2 class="text-info">2FA Security</h2>
                    <p class="mb-4">Enter 5-digits code from your athenticatior app.</p>
                    <form action="check_password" method="post">
<input type="hidden" value="<%=a%>" name="otp2">
<input type="hidden" value="<%=b%>" name="pass">
<input type="hidden" value="<%=c%>" name="agentid">
                        <div class="row mb-4">
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="1">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="2">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="3">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="4">
    </div>
    <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
        <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa" oninput="moveToNext(this)" name="5">
    </div>
    <!-- Repeat for other input fields -->
</div>
<div class="text-center">
    <button type="submit" class="btn bg-info btn-lg my-4">Continue</button>
</div>

<script>
function moveToNext(input) {
    // Get the parent div of the input
    var parentDiv = input.parentElement;

    // Get all input fields within the parent div
    var inputs = parentDiv.querySelectorAll('input');

    // Find the index of the current input field
    var currentIndex = Array.from(inputs).indexOf(input);

    // If the current input is not the last one
    if (currentIndex < inputs.length - 1) {
        // Move focus to the next input field
        inputs[currentIndex + 1].focus();
    }
}
</script>
                        
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%} %>
</body>
</html>