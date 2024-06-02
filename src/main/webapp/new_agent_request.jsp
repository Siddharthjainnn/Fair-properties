<%@page import="dao.Admin"%>
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
<link rel="stylesheet" href="style.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
     <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
/* Googlefont Poppins CDN Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.sidebar{
  position: fixed;
  height: 100%;
  width: 240px;
  background: #0A2558;
  transition: all 0.5s ease;
}
.sidebar.active{
  width: 60px;
}
.sidebar .logo-details{
  height: 80px;
  display: flex;
  align-items: center;
}
.sidebar .logo-details i{
  font-size: 28px;
  font-weight: 500;
  color: #fff;
  min-width: 60px;
  text-align: center
}
.sidebar .logo-details .logo_name{
  color: #fff;
  font-size: 24px;
  font-weight: 500;
}
.sidebar .nav-links{
  margin-top: 10px;
}
.sidebar .nav-links li{
  position: relative;
  list-style: none;
  height: 50px;
}
.sidebar .nav-links li a{
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  text-decoration: none;
  transition: all 0.4s ease;
}
.sidebar .nav-links li a.active{
  background: #081D45;
}
.sidebar .nav-links li a:hover{
  background: #081D45;
}
.sidebar .nav-links li i{
  min-width: 60px;
  text-align: center;
  font-size: 18px;
  color: #fff;
}
.sidebar .nav-links li a .links_name{
  color: #fff;
  font-size: 15px;
  font-weight: 400;
  white-space: nowrap;
}
.sidebar .nav-links .log_out{
  position: absolute;
  bottom: 0;
  width: 100%;
}
.home-section{
  position: relative;
  background: #f5f5f5;
  min-height: 100vh;
  width: calc(100% - 240px);
  left: 240px;
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section{
  width: calc(100% - 60px);
  left: 60px;
}
.home-section nav{
  display: flex;
  justify-content: space-between;
  height: 80px;
  background: #fff;
  display: flex;
  align-items: center;
  position: fixed;
  width: calc(100% - 240px);
  left: 240px;
  z-index: 100;
  padding: 0 20px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section nav{
  left: 60px;
  width: calc(100% - 60px);
}
.home-section nav .sidebar-button{
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}
nav .sidebar-button i{
  font-size: 35px;
  margin-right: 10px;
}
.home-section nav .search-box{
  position: relative;
  height: 50px;
  max-width: 550px;
  width: 100%;
  margin: 0 20px;
}
nav .search-box input{
  height: 100%;
  width: 100%;
  outline: none;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  font-size: 18px;
  padding: 0 15px;
}
nav .search-box .bx-search{
  position: absolute;
  height: 40px;
  width: 40px;
  background: #2697FF;
  right: 5px;
  top: 50%;
  transform: translateY(-50%);
  border-radius: 4px;
  line-height: 40px;
  text-align: center;
  color: #fff;
  font-size: 22px;
  transition: all 0.4 ease;
}
.home-section nav .profile-details{
  display: flex;
  align-items: center;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 6px;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #333;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #333;
}
.home-section .home-content{
  position: relative;
  padding-top: 104px;
}
.home-content .overview-boxes{
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 0 20px;
  margin-bottom: 26px;
}
.overview-boxes .box{
  display: flex;
  align-items: center;
  justify-content: center;
  width: calc(100% / 4 - 15px);
  background: #fff;
  padding: 15px 14px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.overview-boxes .box-topic{
  font-size: 20px;
  font-weight: 500;
}
.home-content .box .number{
  display: inline-block;
  font-size: 35px;
  margin-top: -6px;
  font-weight: 500;
}
.home-content .box .indicator{
  display: flex;
  align-items: center;
}
.home-content .box .indicator i{
  height: 20px;
  width: 20px;
  background: #8FDACB;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  color: #fff;
  font-size: 20px;
  margin-right: 5px;
}
.box .indicator i.down{
  background: #e87d88;
}
.home-content .box .indicator .text{
  font-size: 12px;
}
.home-content .box .cart{
  display: inline-block;
  font-size: 32px;
  height: 50px;
  width: 50px;
  background: #cce5ff;
  line-height: 50px;
  text-align: center;
  color: #66b0ff;
  border-radius: 12px;
  margin: -15px 0 0 6px;
}
.home-content .box .cart.two{
   color: #2BD47D;
   background: #C0F2D8;
 }
.home-content .box .cart.three{
   color: #ffc233;
   background: #ffe8b3;
 }
.home-content .box .cart.four{
   color: #e05260;
   background: #f7d4d7;
 }
.home-content .total-order{
  font-size: 20px;
  font-weight: 500;
}
.home-content .sales-boxes{
  display: flex;
  justify-content: space-between;
  /* padding: 0 20px; */
}

/* left box */
.home-content .sales-boxes .recent-sales{
  width: 100%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.home-content .sales-boxes .sales-details{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.sales-boxes .box .title{
  font-size: 24px;
  font-weight: 500;
  /* margin-bottom: 10px; */
}
.sales-boxes .sales-details li.topic{
  font-size: 20px;
  font-weight: 500;
}
.sales-boxes .sales-details li{
  list-style: none;
  margin: 8px 0;
}
.sales-boxes .sales-details li a{
  font-size: 18px;
  color: #333;
  font-size: 400;
  text-decoration: none;
}
.sales-boxes .box .button{
  width: 100%;
  display: flex;
  justify-content: flex-end;
}
.sales-boxes .box .button a{
  color: #fff;
  background: #0A2558;
  padding: 4px 12px;
  font-size: 15px;
  font-weight: 400;
  border-radius: 4px;
  text-decoration: none;
  transition: all 0.3s ease;
}
.sales-boxes .box .button a:hover{
  background:  #0d3073;
}

/* Right box */
.home-content .sales-boxes .top-sales{
  width: 100%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px 0 0;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.sales-boxes .top-sales li{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 10px 0;
}
.sales-boxes .top-sales li a img{
  height: 40px;
  width: 40px;
  object-fit: cover;
  border-radius: 12px;
  margin-right: 10px;
  background: #333;
}
.sales-boxes .top-sales li a{
  display: flex;
  align-items: center;
  text-decoration: none;
}
.sales-boxes .top-sales li .product,
.price{
  font-size: 17px;
  font-weight: 400;
  color: #333;
}
/* Responsive Media Query */
@media (max-width: 1240px) {
  .sidebar{
    width: 60px;
  }
  .sidebar.active{
    width: 220px;
  }
  .home-section{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section{
    left: 220px;
    width: calc(100% - 220px);
    overflow: hidden;
  }
  .home-section nav{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section nav{
    width: calc(100% - 220px);
    left: 220px;
  }
}
@media (max-width: 1150px) {
  .home-content .sales-boxes{
    flex-direction: column;
  }
  .home-content .sales-boxes .box{
    width: 100%;
    overflow-x: scroll;
    margin-bottom: 30px;
  }
  .home-content .sales-boxes .top-sales{
    margin: 0;
  }
}
@media (max-width: 1000px) {
  .overview-boxes .box{
    width: calc(100% / 2 - 15px);
    margin-bottom: 15px;
  }
}
@media (max-width: 700px) {
  nav .sidebar-button .dashboard,
  nav .profile-details .admin_name,
  nav .profile-details i{
    display: none;
  }
  .home-section nav .profile-details{
    height: 50px;
    min-width: 40px;
  }
  .home-content .sales-boxes .sales-details{
    width: 560px;
  }
}
@media (max-width: 550px) {
  .overview-boxes .box{
    width: 100%;
    margin-bottom: 15px;
  }
  .sidebar.active ~ .home-section nav .profile-details{
    display: none;
  }
}
@media (max-width: 400px) {
  .sidebar{
    width: 0;
  }
  .sidebar.active{
    width: 60px;
  }
  .home-section{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section{
    left: 60px;
    width: calc(100% - 60px);
  }
  .home-section nav{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section nav{
    left: 60px;
    width: calc(100% - 60px);
  }
}
/* CSS for hiding price elements and showing button on mobile and tablet views */
@media (max-width: 768px) {
    .top-sales-details .price {
        display: none;
    }
    .view-prices-btn {
        display: block;
    }
}

/* Additional CSS for styling the button */
.view-prices-btn {
    display: none;
    background-color: #4466f2;
    color: #fff;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
    border-radius: 4px;
    margin-top: 10px;
}

.view-prices-btn:hover {
    background-color: #0d3073;
}


</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>



<%-- <%@include file ="admin.jsp" %> --%>
<%ArrayList<agent> list=(ArrayList<agent>)request.getAttribute("LIST"); %>
<%ArrayList<agent> list1=(ArrayList<agent>)request.getAttribute("LIST1"); %>
<%ArrayList<agent> list2=(ArrayList<agent>)request.getAttribute("LIST2"); %>
<%ArrayList<agent> list3=(ArrayList<agent>)request.getAttribute("LIST3"); %>


<%if (list.isEmpty()&& list1.isEmpty()&& list2.isEmpty()&& list3.isEmpty()) { %>


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
















<%Admin ak=(Admin)session.getAttribute("m"); %>



<div class="sidebar">
      <div class="logo-details">
        <i class="bx bxl-c-plus-plus"></i>
        <span class="logo_name">Property Fair</span>
      </div>
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class="bx bx-grid-alt"></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-box"></i>
            <span class="links_name">Add Property</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-list-ul"></i>
            <span class="links_name">Agents</span>
          </a>
        </li>
        
        <li>
          <a href="new_agent_request?source=submiited">
            <i class="bx bx-list-ul"></i>
            <span class="links_name">New Agent Request</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-pie-chart-alt-2"></i>
            <span class="links_name">View Property</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-coin-stack"></i>
            <span class="links_name">Customers</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-book-alt"></i>
            <span class="links_name">Reivew</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-user"></i>
            <span class="links_name">Notification</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-message"></i>
            <span class="links_name">Messages</span>
          </a>
        </li>
         <li>
          <a href="#">
            <i class="bx bx-heart"></i>
            <span class="links_name">Offer</span>
          </a>
        </li> 
       <!--  <li>
          <a href="#">
            <i class="bx bx-cog"></i>
            <span class="links_name">Setting</span>
          </a>
        </li>  -->
        <li class="log_out">
          <a href="logoutctrl">
            <i class="bx bx-log-out"></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
    </div>
    <section class="home-section">
      <nav>
        <div class="sidebar-button">
          <i class="bx bx-menu sidebarBtn"></i>
          <span class="dashboard">Admin Dashboard </span>
        </div>
        <div class="search-box">
          <input type="text" placeholder="Search..." />
          <i class="bx bx-search"></i>
        </div>
        <div class="profile-details">
          <img src="https://ctmirror-images.s3.amazonaws.com/wp-content/uploads/2021/01/dummy-man-570x570-1.png" alt="" />
           <span class="admin_name"><%=ak.getName() %></span> 
          <i class="bx bx-chevron-down"></i>
        </div>
      </nav>

      <div class="home-content">
        <div class="overview-boxes">
          <div class="box">
            <div class="right-side">
            <a href="new_agent_request?source=submiited" style="text-decoration: none;color: black;">
              <div class="box-topic">Total Agent Request</div>
              <%
// Initialize a local variable to count the number of requests
int requestCount = 0;
              int q=0;//
              int m=0;
              int c=0;
              for (agent mk : list1) {
            	    q++; // Increment the request count for each iteration reject
              }
            	    for (agent mk : list2) {
            	        m++; // Increment the request count for each iteration mpre info
            	    }
            	        for (agent mk : list3) {
            	            c++; // Increment the request count for each iteration submitted
            	        }
              
for (agent mk : list) {
    requestCount++; // Increment the request count for each iteration
%>
        <%} %>
              <center><div class="number"><%=requestCount %></div></center>
              <!-- <div class="indicator">
                <i class="bx bx-up-arrow-alt"></i>
                <span class="text">Up from yesterday</span>
              </div> -->
            </div>
            </a>
            <!-- <i class="bx bx-cart-alt cart"></i> -->
          </div>
          
          <div class="box">
            <div class="right-side">
            <a href="new_agent_request?source=rejected" style="text-decoration: none;color: black;">
              <div class="box-topic">Total Agent Rejected</div>
              <center>  <div class="number"><%=q %></div></center>
              <!-- <div class="indicator">
                <i class="bx bx-up-arrow-alt"></i>
                <span class="text">Up from yesterday</span>
              </div> -->
            </div>
              </a>
            <!-- <i class="bx bxs-cart-add cart two"></i> -->
          </div>
        
          <div class="box">
            <div class="right-side">
            <a href="new_agent_request?source=need_more_info" style="text-decoration: none;color: black;">
              <div class="box-topic">Total Agent Request Need More Info</div>
             <center><div class="number"><%=m %></div></center> 
              <!-- <div class="indicator">
                <i class="bx bx-up-arrow-alt"></i>
                <span class="text">Up from yesterday</span>
              </div> -->
            </div>
            </a>
          <!--   <i class="bx bx-cart cart three"></i> -->
          </div>
          <div class="box">
            <div class="right-side">
            <a href="new_agent_request?source=confirmed" style="text-decoration: none;color: black;">
              <div class="box-topic">Total Agent family</div>
             <center> <div class="number"><%=c %></div></center>
              <!-- <div class="indicator">
                <i class="bx bx-down-arrow-alt down"></i>
                <span class="text">Down From Today</span>
              </div> -->
            </div>
            <!-- <i class="bx bxs-cart-download cart four"></i> -->
          </div>
          </a>
        </div>
        <%String b=(String)request.getAttribute("source"); %>
        

        <div class="sales-boxes" style="width: 100%;">
      
      <%if(b.equals("rejected")){ %>
          <div class="top-sales box">
    <div class="title">New Rejected Request</div>
    
    
    <ul class="top-sales-details">
        <!-- Loop through your list of agents -->
        <% for (agent mm : list1) { %>
        
        
            <li style="border:5px solid #F5F6FA ;height: 2cm;border-radius: 20px ;padding: 10px; ">
                <a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>">
                    <img src="./get_agent_image?agent_id=<%=mm.getAgentId() %>" alt="" />
                    <span class="product" style="font-weight: 1000;font-size: large;"><%=mm.getFullName() %></span>
                </a>
                <!-- Button for mobile and tablet views -->
                <button class="view-prices-btn">View Prices</button>
                <!-- Price elements -->
                
                <span class="price"><%=mm.getAgentId() %></span>
                <span class="price"><%=mm.getEmail() %></span>
                <span class="price"><%=mm.getPhone() %></span>
                <span class="price"><a class="btn btn-primary"><%=mm.getStatus() %></a></span>
                <span class="price"><%=mm.getCreatedOn() %></span>
                
                <span class="price"><a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>" style="font-size: large;">View More</a></span>
            </li>
            
            <hr style="color: blue;">
        <% } %>
        
        
        
        
    </ul>
</div>











<%}else if(b.equals("confirmed")){ %>



<div class="top-sales box">
    <div class="title">Confirm Agent Request</div>
    
    
    <ul class="top-sales-details">
        <!-- Loop through your list of agents -->
        <% for (agent mm : list3) { %>
        
        
            <li style="border:5px solid #F5F6FA ;height: 2cm;border-radius: 20px ;padding: 10px; ">
                <a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>">
                    <img src="./get_agent_image?agent_id=<%=mm.getAgentId() %>" alt="" />
                    <span class="product" style="font-weight: 1000;font-size: large;"><%=mm.getFullName() %></span>
                </a>
                <!-- Button for mobile and tablet views -->
                <button class="view-prices-btn">View Prices</button>
                <!-- Price elements -->
                
                <span class="price"><%=mm.getAgentId() %></span>
                <span class="price"><%=mm.getEmail() %></span>
                <span class="price"><%=mm.getPhone() %></span>
                <span class="price"><a class="btn btn-primary"><%=mm.getStatus() %></a></span>
                <span class="price"><%=mm.getCreatedOn() %></span>
                
                <span class="price"><a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>" style="font-size: large;">View More</a></span>
            </li>
            
            <hr style="color: blue;">
        <% } %>
        
        
        
        
    </ul>
</div>













<%}else if(b.equals("submiited")){ %>














<div class="top-sales box">
    <div class="title">New Agent Request</div>
    
    
    <ul class="top-sales-details">
        <!-- Loop through your list of agents -->
        <% for (agent mm : list) { %>
        
        
            <li style="border:5px solid #F5F6FA ;height: 2cm;border-radius: 20px ;padding: 10px; ">
                <a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>">
                    <img src="./get_agent_image?agent_id=<%=mm.getAgentId() %>" alt="" />
                    <span class="product" style="font-weight: 1000;font-size: large;"><%=mm.getFullName() %></span>
                </a>
                <!-- Button for mobile and tablet views -->
                <button class="view-prices-btn">View Prices</button>
                <!-- Price elements -->
                
                <span class="price"><%=mm.getAgentId() %></span>
                <span class="price"><%=mm.getEmail() %></span>
                <span class="price"><%=mm.getPhone() %></span>
                <span class="price"><a class="btn btn-primary"><%=mm.getStatus() %></a></span>
                <span class="price"><%=mm.getCreatedOn() %></span>
                
                <span class="price"><a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>" style="font-size: large;">View More</a></span>
            </li>
            
            <hr style="color: blue;">
        <% } %>
        
        
        
        
    </ul>
</div>


















<%}else if(b.equals("need_more_info")) { %>







<div class="top-sales box">
    <div class="title"> Agent Need More Information Request</div>
    
    
    <ul class="top-sales-details">
        <!-- Loop through your list of agents -->
        <% for (agent mm : list2) { %>
        
        
            <li style="border:5px solid #F5F6FA ;height: 2cm;border-radius: 20px ;padding: 10px; ">
                <a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>">
                    <img src="./get_agent_image?agent_id=<%=mm.getAgentId() %>" alt="" />
                    <span class="product" style="font-weight: 1000;font-size: large;"><%=mm.getFullName() %></span>
                </a>
                <!-- Button for mobile and tablet views -->
                <button class="view-prices-btn">View Prices</button>
                <!-- Price elements -->
                
                <span class="price"><%=mm.getAgentId() %></span>
                <span class="price"><%=mm.getEmail() %></span>
                <span class="price"><%=mm.getPhone() %></span>
                <span class="price"><a class="btn btn-primary"><%=mm.getStatus() %></a></span>
                <span class="price"><%=mm.getCreatedOn() %></span>
                
                <span class="price"><a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>" style="font-size: large;">View More</a></span>
            </li>
            
            <hr style="color: blue;">
        <% } %>
        
        
        
        
    </ul>
</div>

<%}else{ %>


<div class="top-sales box">
    <div class="title">New Agent Request</div>
    
    
    <ul class="top-sales-details">
        <!-- Loop through your list of agents -->
        <% for (agent mm : list) { %>
        
        
            <li style="border:5px solid #F5F6FA ;height: 2cm;border-radius: 20px ;padding: 10px; ">
                <a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>">
                    <img src="./get_agent_image?agent_id=<%=mm.getAgentId() %>" alt="" />
                    <span class="product" style="font-weight: 1000;font-size: large;"><%=mm.getFullName() %></span>
                </a>
                <!-- Button for mobile and tablet views -->
                <button class="view-prices-btn">View Prices</button>
                <!-- Price elements -->
                
                <span class="price"><%=mm.getAgentId() %></span>
                <span class="price"><%=mm.getEmail() %></span>
                <span class="price"><%=mm.getPhone() %></span>
                <span class="price"><a class="btn btn-primary"><%=mm.getStatus() %></a></span>
                <span class="price"><%=mm.getCreatedOn() %></span>
                
                <span class="price"><a href="particular_ageny_info?agent_id=<%=mm.getAgentId() %>" style="font-size: large;">View More</a></span>
            </li>
            
            <hr style="color: blue;">
        <% } %>
        
        
        
        
    </ul>
</div>

<%} %>

    </section>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
<%} %> 
    <script>
    
    
    
    
      let sidebar = document.querySelector(".sidebar");
      let sidebarBtn = document.querySelector(".sidebarBtn");
      sidebarBtn.onclick = function () {
        sidebar.classList.toggle("active");
        if (sidebar.classList.contains("active")) {
          sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
        } else sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
      };
    </script>




<script>

//JavaScript for toggling price elements and button visibility
document.querySelectorAll('.view-prices-btn').forEach(button => {
    button.addEventListener('click', () => {
        button.parentNode.querySelectorAll('.price').forEach(price => {
            price.style.display = price.style.display === 'none' ? 'inline' : 'none';
        });
    });
});

</script>




</body>
</html>