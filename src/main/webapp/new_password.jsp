<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<style>

body {
    background: #eee;
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
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<% String a=(String)request.getAttribute("msg"); %> 
<% String b=(String)request.getAttribute("msg1"); %> 

<div class="container">
    <div class="row justify-content-center">
        <div class="col-xs-12 col-sm-12 col-md-6">
            <form action="password_update_by_agent" method="post">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <span class="glyphicon glyphicon-th"></span>
                            Change password   
                        </h3>
                    </div>
                    
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6 separator social-login-box"> <br>
                                <img alt="" class="img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar1.png">                        
                            </div>
                            <div style="margin-top:80px;" class="col-xs-6 col-sm-6 col-md-6 login-box">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                        <input class="form-control" type="text" placeholder="Current Password" value="<%=a%>" readonly="readonly" name="old_password">
                                        <input type="text" value="<%=b%>" name="user_id">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-log-in"></span></div>
                                        <input class="form-control" type="password" placeholder="New Password" name="new_password">
                                    </div>
                                </div>
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

</body>
</html>
