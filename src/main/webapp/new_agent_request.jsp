<%@page import="dao.agent"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
    	body{
background:#eee;
font-weight: 1000;
}
.panel-order .row {
	border-bottom: 1px solid #ccc;
}
.panel-order .row:last-child {
	border: 0px;
}
.panel-order .row .col-md-1  {
	text-align: center;
	padding-top: 15px;
}
.panel-order .row .col-md-1 img {
	width: 100px;
	max-height: 150px;
	
}
.panel-order .row .row {
	border-bottom: 5px solid red;
}
.panel-order .row .col-md-11 {
	border-left: 1px solid #ccc;
}
.panel-order .row .row .col-md-12 {
	padding-top: 7px;
	padding-bottom: 7px; 
}
.panel-order .row .row .col-md-12:last-child {
	font-size: 20px; 
	color: #555;  
	background: #efefef;
}
.panel-order .btn-group {
	margin: 0px;
	padding: 0px;
}
.panel-order .panel-body {
	padding-top: 0px;
	padding-bottom: 0px;
}
.panel-order .panel-deading {
	margin-bottom: 0;
}                    
    </style>


</head>
<body>
<%-- <%@include file ="admin.jsp" %> --%>
<%ArrayList<agent> list=(ArrayList<agent>)request.getAttribute("LIST"); %>


<%if (list.isEmpty()) { %>


<style>
@import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

body {
    background-color: #eee;
    font-family: 'Calibri', sans-serif !important;
}

.mt-100{
   margin-top:100px;

}


.card {
    margin-bottom: 30px;
    border: 0;
    -webkit-transition: all .3s ease;
    transition: all .3s ease;
    letter-spacing: .5px;
    border-radius: 8px;
    -webkit-box-shadow: 1px 5px 24px 0 rgba(68,102,242,.05);
    box-shadow: 1px 5px 24px 0 rgba(68,102,242,.05);
}

.card .card-header {
    background-color: #fff;
    border-bottom: none;
    padding: 24px;
    border-bottom: 1px solid #f6f7fb;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}

.card-header:first-child {
    border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0;
}



.card .card-body {
    padding: 30px;
    background-color: transparent;
}

.btn-primary, .btn-primary.disabled, .btn-primary:disabled {
    background-color: #4466f2!important;
    border-color: #4466f2!important;
}
</style>

<div class="container-fluid  mt-100">
				 <div class="row">
				 
					<div class="col-md-12">
					
							<div class="card">
						<div class="card-header">
						<h5>No Pending Agent Request </h5>
						</div>
						<div class="card-body cart">
								<div class="col-sm-12 empty-cart-cls text-center">
									<img src="https://i.imgur.com/dCdflKN.png" width="130" height="130" class="img-fluid mb-4 mr-3">
									<h3><strong>Sorry No Agent Request Is Pending</strong></h3>
									<h4>We Will Notifty You  :)</h4>
									<a href="admin.jsp" class="btn btn-primary cart-btn-transform m-3" data-abc="true">Go To Admin Dashbord</a>
								</div>
						</div>
				</div>
						
					
					</div>
				 
				 </div>
				
				</div>


           <%}else{ %>





<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />

<div class="panel panel-default panel-order">
<div class="panel-heading">
<strong>Order history</strong>
<div class="btn-group pull-right">
<div class="btn-group">
<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">Filter history <i class="fa fa-filter"></i></button>
<ul class="dropdown-menu dropdown-menu-right">
<li><a href="#">Approved orders</a></li>
<li><a href="#">Pending orders</a></li>
</ul>
</div>
</div>
</div>





<% for (agent mm : list) {%>
<div class="panel-body">
<div class="row">
 <div class="col-md-1"><img src="./get_agent_image?agent_id=<%=mm.getAgentID() %>" class="media-object img-thumbnail" /></div> 
<div class="col-md-11">
<div class="row">
<div class="col-md-12">
<div class="pull-right" ><a class="btn btn-primary"  href="particular_ageny_info?agent_id=<%=mm.getAgentID() %>" style="background-color: green;width: 5cm;height: 1.4cm;font-weight: 700;font-size:x-large;">View More</a></div>
<span><strong>Order name</strong></span> <span class="label label-info">group name</span><br/>
Quantity : 2, cost: $323.13 <br/>
<a data-placement="top" class="btn btn-success btn-xs glyphicon glyphicon-ok" href="confirm_agent_by_admin?agent_id=<%=mm.getAgentID() %>&agent_user_id=<%=mm.getEmailAddress() %>&agent_login_id=<%=mm.getAgentID() %>&agent_password=<%=mm.getPassword() %>&agent_name=<%=mm.getName() %>" title="View"></a>
<a data-placement="top" class="btn btn-danger btn-xs glyphicon glyphicon-trash" href="#" title="Danger"></a>
<a data-placement="top" class="btn btn-info btn-xs glyphicon glyphicon-usd" href="#" title="Danger"></a>
</div>
<div class="col-md-12">order made on: 05/31/2014 by <a href="#">Jane Doe </a></div>
</div>
</div>
</div>

<%} %>
</div>

<%} %>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	                        
                    
</script>

</body>
</html>