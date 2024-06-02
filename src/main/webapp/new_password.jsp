<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<style>
body{
    background-image: url("./image/Untitled design (2).gif");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.panel {
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    border-radius: 8px;
    margin-top: 50px;
}
.icon-btn-save {
    padding-top: 0;
    padding-bottom: 0;
}
.input-group {
    margin-bottom: 10px;
}
.btn-save-label {
    position: relative;
    left: -12px;
    display: inline-block;
    padding: 6px 12px;
    background: rgba(0,0,0,0.15);
    border-radius: 3px 0 0 3px;
}
.pass_show {
    position: relative;
}
.pass_show .ptxt {
    position: absolute;
    top: 50%;
    right: 50px;
    z-index: 1;
    color: #f36c01;
    margin-top: -10px;
    cursor: pointer;
    transition: .3s ease all;
}
.pass_show .ptxt:hover {
    color: #333333;
}
.error {
    color: red;
    margin-top: 10px;
}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<% String a=(String)request.getAttribute("msg"); %> 
<% String b=(String)request.getAttribute("msg1"); %> 





<div class="container">
    <div class="row justify-content-center" style="margin-top: 5cm;align-items: center;">
        <div class="col-xs-12 col-sm-12 col-md-6">
            <form id="passwordForm" action="password_update_by_agent" method="post">
                <div class="panel panel-info">
                    <div class="panel-heading">
                    <center>
                        <h3 class="panel-title">
                            <span class="glyphicon glyphicon-th"></span>
                            Change password   
                        </h3>
                    </div>
                    </center>
                    <div class="panel-body">
                        <div class="row">
                        <center>
                            <div class="col-xs-6 col-sm-6 col-md-6 separator social-login-box"> <br>
                                <img alt="" class="img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar1.png">                        
                            </div>
                            </center>

                            <center>
	<div class="row" style="justify-content: center;" >
		       <label>New Password</label>
            <div class="form-group pass_show"> 
                <input type="password" id="newPassword" class="form-control" placeholder="New Password" name="new_password" style="width: 70%;"> 
                
            </div> 
             
		       <label>Confirm Password</label>
            <div class="form-group pass_show"> 
                <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm Password" style="width: 70%;"> 
            </div>  
            <div id="errorMessage" class="error"></div>
            
            
            <input type="hidden" value="<%=a %>" name="user_id">
	</div>
	</center>
</div>
                        </div>
                    </div>
                    <br>
                    
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-4"></div>
                            <div class="col-xs-6 col-sm-6 col-md-4">
                                <button class="btn icon-btn-save btn-success" type="submit" style="width: 6cm;font-size:x-large;">
                                    Submit
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
$(document).ready(function(){
    $('.pass_show').append('<span class="ptxt">Show</span>');  
});

$(document).on('click','.pass_show .ptxt', function(){ 
    $(this).text($(this).text() == "Show" ? "Hide" : "Show"); 
    $(this).prev().attr('type', function(index, attr){
        return attr == 'password' ? 'text' : 'password'; 
    }); 
});

document.getElementById('passwordForm').addEventListener('submit', function(event) {
    // Get the values of the password fields
    var newPassword = document.getElementById('newPassword').value;
    var confirmPassword = document.getElementById('confirmPassword').value;
    var errorMessage = document.getElementById('errorMessage');

    // Clear any previous error message
    errorMessage.textContent = '';

    // Check if the passwords match
    if (newPassword !== confirmPassword) {
        // If they don't match, show an error message and prevent form submission
        errorMessage.textContent = 'New Password and Confirm Password do not match.';
        event.preventDefault();
    }
});
</script>

</body>
</html>
