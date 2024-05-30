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
/*     background-color: #f2f3f8; */
background-position: center;
background-size: cover;
background-repeat: no-repeat;
}

.panel {
    box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Add box shadow */
    border-radius: 8px; /* Rounded corners */
    margin-top: 50px; /* Adjust as needed */
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
.pass_show{position: relative} 

.pass_show .ptxt { 

position: absolute; 

top: 50%; 

right: 10px; 

z-index: 1; 

color: #f36c01; 

margin-top: -10px; 

cursor: pointer; 

transition: .3s ease all; 

} 

.pass_show .ptxt:hover{color: #333333;} 
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<% String a=(String)request.getAttribute("msg"); %> 
<% String b=(String)request.getAttribute("msg1"); %> 

<div class="container" >
    <div class="row justify-content-center" style="margin-top: 5cm;align-items: center;">
        <div class="col-xs-12 col-sm-12 col-md-6">
            <form action="password_update_by_agent" method="post">
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
                            <%-- <div style="margin-top:80px;" class="col-xs-6 col-sm-6 col-md-6 login-box">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                        <input class="form-control" type="hidden" placeholder="Current Password" value="<%=a%>" readonly="readonly" name="old_password">
                                        <input type="hidden" value="<%=b%>" name="user_id">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-log-in"></span></div>
                                        <input class="form-control" type="password" placeholder="New Password" name="new_password">
                                    </div>
                                </div>
                            </div> --%>
                            
                            
                            <center>
	<div class="row" style="justify-content: center;" >
		<div class="col-sm-8">
		    
		    <!-- <label>Current Password</label>
		    <div class="form-group pass_show"> 
                <input type="password" value="faisalkhan@123" class="form-control" placeholder="Current Password"> 
            </div>  -->
		       <label>New Password</label>
            <div class="form-group pass_show"> 
                <input type="password"  class="form-control" placeholder="New Password" name="new_password"> 
                 <input class="form-control" type="hidden" placeholder="Current Password" value="<%=a%>" readonly="readonly" name="old_password">
                                        <input type="hidden" value="<%=b%>" name="user_id">
            </div> 
		       <label>Confirm Password</label>
            <div class="form-group pass_show"> 
                <input type="password"  class="form-control" placeholder="Confirm Password"> 
            </div> 
            
		</div>  
	</div>
	</center>
</div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6"></div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <button class="btn icon-btn-save btn-success" type="submit">
                                    <span class="btn-save-label"><i class="glyphicon glyphicon-floppy-disk"></i></span>save
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

$(this).prev().attr('type', function(index, attr){return attr == 'password' ? 'text' : 'password'; }); 

});  
</script>

</body>
</html>
