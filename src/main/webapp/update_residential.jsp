<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="dao.PropertyDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
    background:#FCFCFC;    
}
.pr-12 {
    padding-right: 12px !important;
}

.mb-20 {
    margin-bottom: 20px !important;
}

.b-1 {
    border: 1px solid #ebebeb !important;
}

.card {
    border: 0;
    border-radius: 0;
    margin-bottom: 30px;
    -webkit-transition: .5s;
    transition: .5s;
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.media {
    padding: 16px 12px;
    -webkit-transition: background-color .2s linear;
    transition: background-color .2s linear;
}

.media {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: start;
    align-items: flex-start;
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
}

.media .avatar {
    flex-shrink: 0;
}

.no-radius {
    border-radius: 0 !important;
}

.avatar-xl {
    width: 64px;
    height: 64px;
    line-height: 64px;
    font-size: 1.25rem;
}

.avatar {
    position: relative;
    display: inline-block;
    width: 36px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    border-radius: 100%;
    background-color: #f5f6f7;
    color: #8b95a5;
    text-transform: uppercase;
}

img {
    max-width: 100%;
}

img {
    vertical-align: middle;
    border-style: none;
}

.mb-2 {
    margin-bottom: .5rem!important;
}

.fs-20 {
    font-size: 20px !important;
}

.pr-16 {
    padding-right: 16px !important;
}

.ls-1 {
    letter-spacing: 1px !important;
}

.fw-300 {
    font-weight: 300 !important;
}

.fs-16 {
    font-size: 16px !important;
}

.media-body>* {
    margin-bottom: 0;
}

small, time, .small {
    font-family: Roboto,sans-serif;
    font-weight: 400;
    font-size: 11px;
    color: #8b95a5;
}

.fs-14 {
    font-size: 14px !important;
}

.mb-12 {
    margin-bottom: 12px !important;
}

.text-fade {
    color: rgba(77,82,89,0.7) !important;
}

.card-footer:last-child {
    border-radius: 0 0 calc(.25rem - 1px) calc(.25rem - 1px);
}

.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77,82,89,0.07);
    color: #8b95a5;
    padding: 10px 20px;
}

.flexbox {
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
}

.align-items-center {
    -ms-flex-align: center!important;
    align-items: center!important;
}

.card-footer {
    padding: .75rem 1.25rem;
    background-color: rgba(0,0,0,.03);
    border-top: 1px solid rgba(0,0,0,.125);
}


.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77, 82, 89, 0.07);
    color: #8b95a5;
    padding: 10px 20px
}

.card-footer>*:last-child {
    margin-bottom: 0
}

.hover-shadow {
    -webkit-box-shadow: 0 0 35px rgba(0, 0, 0, 0.11);
    box-shadow: 0 0 35px rgba(0, 0, 0, 0.11)
}

.fs-10 {
    font-size: 10px !important;
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%String mm=(String)request.getParameter("msg"); %>

<%if(mm!=null){ %>
<div class="alert alert-success" role="alert">
 <%=mm %>
</div>
<%} %>

<%ArrayList<PropertyDTO> list=(ArrayList<PropertyDTO>)request.getAttribute("LIST"); %>








<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">


<h1 style="font-size: 2em; font-weight: bold; background: linear-gradient(to right, #1e3c72, #2a5298); -webkit-background-clip: text; color: transparent; text-align: center;">
        RESIDENTIALS PROPERTY BY YOU
    </h1>
<br>
<br>
<br>
<div class="" style="margin-left: 2cm;margin-right: 2cm;">
<div class="col-md-12">
<%  for (PropertyDTO p : list) { %>
    <div class="card b-1 hover-shadow mb-20">
        <div class="media card-body">
            <div class="media-left pr-12">
                <img class="avatar avatar-xl no-radius" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="...">
            </div>
            <div class="media-body">
                <div class="mb-2">
                    <span class="fs-20 pr-16"><%=p.getPropertyName() %></span>
                </div>
                <small class="fs-16 fw-300 ls-1"><%=p.getPropertyType() %></small>
            </div>
            <%-- <div class="media-right text-right d-none d-md-block">
                <p class="fs-14 text-fade mb-12"><i class="fa fa-map-marker pr-1"></i><%=p.getArea() %></p>
                <span class="text-fade"><i class="fa fa-money pr-1"></i> $60 per hour</span>
            </div> --%>
        </div>
        <footer class="card-footer flexbox align-items-center">
            <div>
                <strong>Status</strong>
                <span><%=p.getStatus() %></span>
            </div>
            <div class="card-hover-show">

            <a class="btn btn-xs fs-10 btn-bold btn-warning" href="commercial_view?property_id=<%=p.getPropertyId() %>" style="font-size: large;width: 3cm;size: 5cm;" >View</a>
                <a class="btn btn-xs fs-10 btn-bold btn-info" href="./commercial_update_new?property_id=<%=p.getPropertyId() %>&category=<%=p.getCategory() %>&agent_id=<%=p.getAgentId() %>"" style="font-size: large;width: 3cm;size: 5cm;" >Update</a>

                <a class="btn btn-xs fs-10 btn-bold btn-danger" href="./residential_delete?property_id=<%=p.getPropertyId() %>&category=<%=p.getCategory() %>&agent_id=<%=p.getAgentId() %>"  onclick=" return alert('are you sure you whant to delete')" style="font-size: large;size: 5cm;">Delete</a>
            </div>
        </footer>
    </div>

    
    <br>
    
    <%} %>
</div>
</div>
























 
                                
                                
                                
                           

                             
</body>
</html>