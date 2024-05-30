<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body {
	background-image: url("./image/okkkk.png");
	background-size: cover;
	background-repeat: no-repeat;
}
.social-btn {
    display: inline-block;
    width: 2.25rem;
    height: 2.25rem;
    -webkit-transition: border-color 0.25s ease-in-out,background-color 0.25s ease-in-out,color 0.25s ease-in-out;
    transition: border-color 0.25s ease-in-out,background-color 0.25s ease-in-out,color 0.25s ease-in-out;
    border: 1px solid #e7e7e7;
    border-radius: 50%;
    background-color: #fff;
    color: #545454;
    text-align: center;
    text-decoration: none;
    line-height: 2.125rem;
    vertical-align: left;
}
.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + 1rem + 2px);
    padding: .5rem 1rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #404040;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #e1e1e1;
    border-radius: 0;
    -webkit-transition: border-color 0.2s ease-in-out,-webkit-box-shadow 0.2s ease-in-out;
    transition: border-color 0.2s ease-in-out,-webkit-box-shadow 0.2s ease-in-out;
    transition: border-color 0.2s ease-in-out,box-shadow 0.2s ease-in-out;
    transition: border-color 0.2s ease-in-out,box-shadow 0.2s ease-in-out,-webkit-box-shadow 0.2s ease-in-out;
}
.input-group>.form-control, .input-group>.form-control-plaintext, .input-group>.custom-select, .input-group>.custom-file {
    position: relative;
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    width: 1%;
    margin-bottom: 0;
}
.input-group-text {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    padding: .5rem 1rem;
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #404040;
    text-align: center;
    white-space: nowrap;
    background-color: #fff;
    border: 1px solid #e1e1e1;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<%String a=(String)request.getAttribute("reciver"); %>
<%String b=(String)request.getAttribute("sender"); %>
<div class="container pb-5 mb-sm-4" style="margin-right: 20cm;margin-top: 5cm; ">
    <div class="row pt-5">
        <div class="col-md-6 pt-sm-3" style=" box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), 0 10px 10px rgba(0, 0, 0, 0.1), 10px 0 10px rgba(0, 0, 0, 0.1), 10px 10px 10px rgba(0, 0, 0, 0.1);">
            <div class="card">
                <div class="card-body" >
                    <h2 class="h4 mb-1">Hello Agent !!  </h2>
                    <div class="d-sm-flex align-items-center py-3">
                        <h3 class="h6 font-weight-semibold opacity-70 mb-3 mb-sm-2 mr-sm-3">You Can Send a Mail To Customer</h3>
                      
                    </div>
                    <hr>
                    <h3 class="h6 font-weight-semibold opacity-70 pt-4 pb-2">Please Fill The Information</h3>
                    <form class="needs-validation" novalidate="">
                        <div class="input-group form-group">
                           <!--  <div class="input-group-prepend"><span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></span></div> -->
                            
                            <img src="./image/send.png" style="width: 1.5cm;height: 1.5cm;">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input class="form-control" value<%=a %> type="email" placeholder="Email" required="">
                            <div class="invalid-feedback">Please enter valid email address!</div>
                        </div>
                        <br>
                        <div class="input-group form-group">
                            <img src="./image/book.png" style="width: 1.5cm;height: 1.3cm;">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input class="form-control" type="text" placeholder="Enter Subject" required="">
                            <div class="invalid-feedback">Please enter valid password!</div>
                        </div>
                        <br>
                        
                        <div class="input-group form-group">
                        
                            <img src="./image/cute.png" style="width: 1.5cm;height: 1.3cm;">&nbsp;&nbsp;&nbsp;&nbsp;  
                       <textarea row="5" style="height: 4cm;" class="form-control"  placeholder="Enter Message To Send" required=""></textarea>
                            <div class="invalid-feedback">Please enter valid password!</div>
                        </div>
                        
                        <hr class="mt-4">
                        <div class="text-right pt-4">
                            <button class="btn btn-primary" type="submit">Sign In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
      
    </div>
</div>
</body>
</html>