<%@page import="dao.agent"%>
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
    background:#eee;
    padding-top:20px;
}
.img-fluid {
    max-width: 100%;
    height: auto;
}

.card {
    margin-bottom: 30px;
}

.overflow-hidden {
    overflow: hidden!important;
}

.p-0 {
    padding: 0!important;
}

.mt-n5 {
    margin-top: -3rem!important;
}

.linear-gradient {
    background-image: linear-gradient(#50b2fc,#f44c66);
}

.rounded-circle {
    border-radius: 50%!important;
}

.align-items-center {
    align-items: center!important;
}

.justify-content-center {
    justify-content: center!important;
}

.d-flex {
    display: flex!important;
}

.rounded-2 {
    border-radius: 7px !important;
}

.bg-light-info {
    --bs-bg-opacity: 1;
    background-color: rgba(235,243,254,1)!important;
}

.card {
    margin-bottom: 30px;
}

.position-relative {
    position: relative!important;
}

.shadow-none {
    box-shadow: none!important;
}

.overflow-hidden {
    overflow: hidden!important;
}

.border {
    border: 1px solid #ebf1f6 !important;
}

.fs-6 {
    font-size: 1.25rem!important;
}

.mb-2 {
    margin-bottom: 0.5rem!important;
}

.d-block {
    display: block!important;
}

a {
    text-decoration: none;
}

.user-profile-tab .nav-item .nav-link.active {
    color: #5d87ff;
    border-bottom: 2px solid #5d87ff;
}

.mb-9 {
    margin-bottom: 20px!important;
}

.fw-semibold {
    font-weight: 600!important;
}
.fs-4 {
    font-size: 1rem!important;
}

.card, .bg-light {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}

.fs-2 {
    font-size: .75rem!important;
}

.rounded-4 {
    border-radius: 4px !important;
}

.ms-7 {
    margin-left: 30px!important;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%ArrayList<PropertyDTO> list=(ArrayList<PropertyDTO>)request.getAttribute("LIST2"); %>
<%PropertyDTO list1=(PropertyDTO)request.getAttribute("LIST1"); %>
<%agent list2=(agent)request.getAttribute("LIST"); %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<div style="margin-left: 10%;margin-right: 10%;">
  <div class="card overflow-hidden">
    <div class="card-body p-0">
      <img src="image/Sterito Plus.gif" alt="" class="img-fluid" style="width: 100%;height: 15cm;">
      <div class="row align-items-center">
        <div class="col-lg-4 order-lg-1 order-2">
          <div class="d-flex align-items-center justify-content-around m-4">
            <div class="text-center">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="25" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1zm13 2.383-4.708 2.825L15 11.105zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741M1 11.105l4.708-2.897L1 5.383z"/>
</svg>
              
              
                <a href="mailto:<%=list2.getEmail() %>" id="email" style="text-decoration: none;color: black;">
              
              <p class="mb-0 fs-4">Send Mail</p>
              
              </a>
            </div>
            <div class="text-center">
             <svg xmlns="http://www.w3.org/2000/svg" width="30" height="25" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
  <path d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232"/>
</svg>
           
              
             <a href="https://wa.me/<%=list2.getPhone() %>" id="phone" style="text-decoration: none; color: black;">
    <p class="mb-0 fs-4">Chat on WhatsApp</p>
</a>

              
              </a>
            </div>
            <div class="text-center">
           
             <svg xmlns="http://www.w3.org/2000/svg" width="30" height="25" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877z"/>
</svg>
<br>

              <a  href="tel:+91<%=list2.getPhone() %>" id="phone" style="text-decoration: none;color: black;">
              
           
              <p class="mb-0 fs-4">Call Now</p>
              
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mt-n3 order-lg-2 order-1">
          <div class="mt-n5">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <div class="linear-gradient d-flex align-items-center justify-content-center rounded-circle" style="width: 110px; height: 110px;" ;="">
                <div class="border border-4 border-white d-flex align-items-center justify-content-center rounded-circle overflow-hidden" style="width: 100px; height: 100px;" ;="">
                  <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" class="w-100 h-100">
                </div>
              </div>
            </div>
            <div class="text-center">
              <h5 class="fs-5 mb-0 fw-semibold"><%=list2.getFullName() %></h5>
              <p class="mb-0 fs-4">Property Agent </p>
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg>
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.56.56 0 0 0-.163-.505L1.71 6.745l4.052-.576a.53.53 0 0 0 .393-.288L8 2.223l1.847 3.658a.53.53 0 0 0 .393.288l4.052.575-2.906 2.77a.56.56 0 0 0-.163.506l.694 3.957-3.686-1.894a.5.5 0 0 0-.461 0z"/>
</svg>
            </div>
          </div>
        </div>
        <div class="col-lg-4 order-last">
          <ul class="list-unstyled d-flex align-items-center justify-content-center justify-content-lg-start my-3 gap-3">
            <li class="position-relative">
              <a class="text-white d-flex align-items-center justify-content-center bg-primary p-2 fs-4 rounded-circle" href="javascript:void(0)" width="30" height="30">
                <i class="fa fa-facebook"></i>
              </a>
            </li>
            <li class="position-relative">
              <a class="text-white bg-secondary d-flex align-items-center justify-content-center p-2 fs-4 rounded-circle " href="javascript:void(0)">
                <i class="fa fa-twitter"></i>
              </a>
            </li>
            <li class="position-relative">
              <a class="text-white bg-secondary d-flex align-items-center justify-content-center p-2 fs-4 rounded-circle " href="javascript:void(0)">
                <i class="fa fa-dribbble"></i>
              </a>
            </li>
            <li class="position-relative">
              <a class="text-white bg-danger d-flex align-items-center justify-content-center p-2 fs-4 rounded-circle " href="javascript:void(0)">
                <i class="fa fa-youtube"></i>
              </a>
            </li>
            <!-- <li><button class="btn btn-primary">Add To Story</button></li> -->
          </ul>
        </div>
      </div>
      <ul class="nav nav-pills user-profile-tab justify-content-end mt-2 bg-light-info rounded-2" id="pills-tab" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link position-relative rounded-0 active d-flex align-items-center justify-content-center bg-transparent fs-3 py-6" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="true">
            <i class="fa fa-user me-2 fs-6"></i>
            <span class="d-none d-md-block">Profile</span> 
          </button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link position-relative rounded-0 d-flex align-items-center justify-content-center bg-transparent fs-3 py-6" id="pills-followers-tab" data-bs-toggle="pill" data-bs-target="#pills-followers" type="button" role="tab" aria-controls="pills-followers" aria-selected="false" tabindex="-1">
            <i class="fa fa-heart me-2 fs-6"></i>
            <span class="d-none d-md-block">On Notification</span> 
          </button>
        </li>
        
      </ul>
    </div>
  </div>
  
  
  <br>
 
      
           
  <div class="card" style="background: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%; width: 100%; overflow: hidden; display: flex; flex-direction: row; position: relative; font-size: 14px; transition: transform 0.3s ease, box-shadow 0.3s ease; margin-bottom: 1cm;">
    <div class="mobile-images" style="display: none; flex-wrap: wrap; gap: 4px;">
       <div style="background: red; width: 20%; height: 100px;"></div>
        <div style="background: blue; width: 20%; height: 100px;"></div>
        <div style="background: green; width: 20%; height: 100px;"></div>
        <div style="background: yellow; width: 20%; height: 100px;"></div>
        <div style="background: purple; width: 20%; height: 100px;"></div>    </div>
    
    <div class="main-image">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel" style="width: 300px;">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000" >
      <img src="data:image/jpeg;base64,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" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFRUYGBgYGBgYGBgYGBgYGBgYGBgaGRgYGBgcIS4lHB4rHxgYJjomKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISHzQkISE0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0MTE0NDQ/NP/AABEIALkBEAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAABAAIDBQYEBwj/xABJEAACAQIEAwMHCAgDBgcAAAABAgADEQQSITEFQVEGYXETIjKBkaHwBxRCUpKxwdEjcoKTorLS4VNUYiQzo8LD8RVDY3N0g7P/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAjEQEBAAICAgICAwEAAAAAAAAAAQIRAzESIUFRExQEYaEi/9oADAMBAAIRAxEAPwD1SC8MU2ZGwWjrRyrDZaR2iyyfJF5OLZ6c1ogk6PJxwSGxpz+SjGSdeWNZIbHi5LRtp0OkiKS5dpsRmKPIgKxp0YZE1ZdATubc7e31STEICjA7FWB8CDeeWcGwKHEUr6g1EuDax84TLPl8cpj9uji/jXkxyy309RIgIkltYCs2cyMxAQgg7Ed+u3jJKdG8LdFJsEoX3kow4E6FFhAxmdytazGRzVaYtIqNLrOpoyOUrJs4RWiEdBRtooYogESiKIQBxgvE0bmgNjeAmKCMbdfkzGkTogMz2rTntHKY60OWPZaOEdaNQR0RhFDFABAY6K0Wwy3aHFVBVypWdAFFwqowzG5ucynkRtKwYqv/AJmr+7p+z0P7d8m4hUz1Xa59IgeYx0HmjX1eEhC+P2H8fZy7uQlwh8tX/wAzU/d0/b6EPl6/+Zqfu6f9Hx3RW/W+y3xe3P2yr49xhMNTztqxuETUZyN/BRoTpbxJENjURdpO0b4ZBmxFR3bRUyU0zAmzEnLcD8Tp3UmEx/o1KbLoQymxupHrtcGZCtVes5q1CWdjcAnYcgL7AchOzBVnotmsSh9NdPtAdR7xJ1jbLlNqmWWONmN1tsKnaTE5hes9jvZE2O9jl3lm2BNRQzVXqBhfVS6m/TX452mZurAMpBBFwQbXB59Je9n8Xa1NibE+ZqV1O66aWP3+M0rLH+1hw/ANQuaLlMwANqQsQDvY6c/V3yxXGYkf+cfXSXn8bxZe7/iP4DXrtrzgK9w5/Tfnvp4jUe+SrQnH4n/GH7pb+y+/dF8+xP8Ajp66Q28c23f98Zp/p/eNy1GvTodh3x4I6rufptv7NDY+vlAzKnEcSBfy1PTrSA26+fp+MvuF4oVaNKqNfKU0fp6aBtuW8yXaDEZMNXYFbrSe1nO5UgW66203lj8nWJ8pw7DnmitTP7Dso9wEcKtOpjo0CER6KUjFeKCAoxNGloGMNDYhojGXigR14RAI6BrCKOWKZtdI8sMJggkoorRQAxQRQBSPEVMiM31VJ9gvJJW9oKlqLD6xVdLg6m51HcDA6yw/b5fRbxHqvz3HSSAH/X7Gvf277+PWRp4Nz+kw15+u+498g4hj6dCm1Spoot9Nrsd1VRzvqB0lJM4zxNMNTNRyeiJcgu3JFvy68hqZ5bisU+JqmrUN7nzVubADYC/Ie/eO4nxF8XVNR9FGiJckKvS532F25nuAEseH4Tmfwk2qkScPwHMidtbBi23u8e+dlCkB8JJXUG+38Mk2bp1TQazX8mTqLXyEn0h/p6+2XNJuh9hv7jIcZhgfgbeqVuCrmkcjnzCbISL5CeR6L90rHL4qbj8vROGY3yiedlzKLNmLLofpacjz218Z1s43zJ9snvGtu7faZPA4pkcMu43FybjYgjcTW0cSGUOrtYi40T18vEEcraS0mBx9ZfU539Y79vZCH5Zl6el/bb39ZIXP1n5D6H3/AI79YgWOxf8Ag9fruNtogzHyg4rLgnGbV3RN1+sGI0HRDtpOr5HcVmwtVPqViR3B0Uj3hpQfKlWPkqCXaxcvrltopAII/WMf8jGKtWxFO/p00cfsOVP84hOxenreaEvI2MAl1KS8bmMkAhy3i2ekVorSW0aRAtISbRFoGPWNvHotpkaPvOcNCXisG1yIiYIpk22BitDFGRQRGC8AJgiJggBvKHtNU9BNPpMbsR0UaDcamXwmT7QYtBUdndVVFGYltgozE7aG7QFVmLxKU0ao7IqKLk52O2wFtzfbvM8w43xSpi6mYqy01JyILmwPMk7ueZ9QnVxvjD4x+a0EN0Q6Fm5u1ufcdh4mdnC8DmI008bRWhw4DhzHUqR7hNBhcIdh6/O/tLnC4VQNv4xH8ZxDUcFialJmR0VCrBrkHOPwvJPavWiw6fb/ALRFD1X7Y/ETjfjuJFXKK9S3zrh9O1wfMrUS9RdRzaxnZ2y47iKOIxKUqzIqYNKqKApAc1qaFtQfoki22sDc9VO8faX8vD2Spx+EzDr3aHr3TWcOxtSq2LSq5dadekqXsMqmm7EXUAnXrfaSVMKp6/xGBbYfh+MKMKTnuRj/ACE7+B9XSavgmPyNkZjkY7g+i3W/IHY3HTpOHifDFZSCLg8rGVGExLI/kqpu30HItnUdTuGHPrvLxy2mvSfJno3PfJ69PZcQZDa+U7X1yEd3Pbex2lZwXFh1ytlLKNyoYsNLG45jQeyWRUdF/cv4/A9komG+UTBl1L7BEGlrEnNc3tpzWUfyXYrJxCmOVRKie1Sw96CbPtPTBoVBpryAy6Bgtwp1G08z7LYnyWMw7n6FZL+GcK3uJkzs70+kAJIqxtrRwmlRBhEF4JKjjGmIGAmMGst5A+k6TIHWVE1ETBePyxZY0aXUUUUwblFFFAEYwR5jbRgIobQQBtWoqqWZgqqCWYmwAAuSSdhafP8A2w7T/O6zIjMKOdmA28obkhmA5fVB238PUO3XDMRismHSqlOm9yyfTrFdbA39EWBy+2YrFfJ6KSWd6aM3os75bkd7AX5bbRbgU3CsCWtpYeE1+CwoUDT3CcfBsHlQA2Yg2zKLg9CDLpKfcfsj8TJB6D480Tm7QV8mBxLlEcBUuj3KMC4FmyMp9/KdLuFF2YKOrZF++V+M4nh3pvRqI9RHChshVCMrZgQ1tdR7oQMZw7tOalekr4XDefiMOSQMQGDIRTpuP01rqrEDS3UGXXyg8YSli3RsNSqZ6CI7O1ZWKF8+TzXCjzkBuAD3x2F4fw1HR0o4oMjqy3qoRmVgy3BXa4E6OOpgMVU8tWTFB8ir+jekFst7ekCeZj1VJOx/FhiExNTyKUmNWkXKNUIdilQAnOxy2A2Eu2Ph7XlJwKpg8Or06BrrndXY1ylvMVgArJ+vzl5mvz/iYxJc1ancbD2PM9xjhocWta2oIBurDZges07AfGecuLoEqcqF25KqsSfjrAMtwjiTo+ViBVTW+wdfrDuI3E9Aw2KDoHBNjqfPYWPMX5EXGu57rzCYzsZiXcVEDhwbr5rKq9wuPed5c8Lo4mijrXUUWdWUZ3QAtawdMpLNvtlvYzTfr2WjeI0j83dyDqCSTf6VUtuZ5imEdjdQcxJI0NyTyno7u+RVeoXKgC+oTTTzVPd3Azs7LYw12qUCiu+VSpfREUFldmC2LnVLLz6jeLEX01fZjir1qQFVctRQM23nXHpED0ToR3207rsNK7h3Dkog5dWa2ZrBb2vYBV0VRc2AHM7kkztvNEbTQEyLPHB4aGz7xt4wmOEAJMYRJVitDZ6MCR2SGG8Vp6d8UdaAiZr0EURijIICYTGmAIxt4iYBAWo8Th0dSrqGU8jyI2IO4IOxGonnvyhYd70kLs6rcqWHnBWIGVyPSIy+lobHW51O04rQrvpSfIOoYAn+AkeozGcV4M6Peq4ZiL5iWfTXdifGTbPkY7VeArBFAsD4D7zf41ktbHudAFTlooJ9rflHLh0sW8ogC6k6C3eSXsIaVNG9Cqj6X81kOnM2z7QmWJ3Gq16WY3JJO1zqevPl3flGml3H4+N/zluMDcXBv3qEI/ngOA/W9if1x+eI1VOKI+Pj416R70fj4+NpafMR/q/g/riPD+4+sD8CYeeI1VR83Ftfjvty5+8R9HOnoOw7gxt6xsf+0sxgT0PsP5SUYI+H7J+60LliXjXLR4yw0dL96lr+tSfunamNRhdHF+4uGHq3kT8OvuR7x+Hh8GctTh1MAmqyADYhmvfwCnv1k24/Z6qoxmKrIWPlahF/ruNz4ybCM7gPUd3IvlDMzBfAHc98bjjTysqM73y3ZwqgWYejqSfWZ14Kjlphrm5O1rADXn6op7FPb4/7fjOjsBSZMbWzC36En+NY+op8hfS2bw111vzlj2Xo2x9T/wCP/wBQTTHuJvVbBo0mOcRpE2Z0rwqYyKBSpI9ZHeOJipxJmizSPNBeI9pA0cDIA0dmhobXMDGIxsybFGwmNMaRMBMEEBsoI4CC0aTZlO1qEtfkFF/XNZaZ3tBTzZ7b+YB7F/OTn0vHtgXpgpUTMFzgKCeW9zYkXtOLA4M0qjeejJkYBrqGLFfqgm3tlnxfCFLFrDNe3nXvbfaUdWw6TBrL6ans8CUIH+GT/wAQfnMf2ZP+0Y7xf+d5tOxhuxH/AKR//RZjeDYZ6dbFsyFQ5fKSNGGZzofAiV8JPE0nAgfmzsOTsP4E/OZQPNh2dF8DXPR2/kSKEyXCMyk+kp8pXIOqkeYliDL75yxUFmckjUkkk+cPSPOYzh3EQruHq5fONszORudrXmgbiCLTR2cBWBAY3sTqR90my+1y+4b2TdmrBczEZcSbEmxs9PLp3X0jMU16j31Odup5mD5McS74xld3YeQc2LswuGQDQnvixAPl6osbCo4J1sPPO/SXUVPTTzG/Z/nEuglqKePr+l7JWIvmN+x/OJYpTIpZiLAuLE6AgINuovf3ysU10O3+zgW2a9+epYWt6pYdlb/O3JNycNe//wBiyreunkgnnZ73OnmBQWsBzv53ulh2Prs+Lcta/kSBYWAAdLC00x7hZdVtHjCJOUjPJzXbLSGKSFIwiPYLNDeMhEAfFGiOkmaWhBiIgBlBdtAYoDMI0CNhtGxlaUV4rwGMCTBeKC0CKU3Egcz2v6aDTT6NP85dWlHxrClm0dlDanKQNRYXvoRsOfKTlZpWMqq4piSCoV2vYk2ZvrIfub3yrxOLfKxztornUg2smJI376a/ZnXikdDY1a219CxA3388a2DH1dSAYHqPzrV7nS2p7remRuwX9oTPSrVnwdyXcEg2zjZQQBXqqNhfZFHqmGxlcWfUfT5jvm14KruzFa7NprnUnRtQwseeup6mc79haR1LXJN9Vb+mFhyvLxUm87GNfA1dAb1wCCAQQy0gQQfGdzdgKHUexv6Z00uD/NqLUqboFZjUJYE5coS5sy20yjkYaLaiwpRwhajQOYIT+iQekuEY7f8Avv7uke6oU86jRNkLAFNARTZ9geqmdCG1gHpaWt+hAtbKAP8Adi1vJIP2U6i7iSdC1Ai1rFLXBGXkBye3rj0HX2fw9NazlKNJGAK5kUq1vK10I32tRT3yo7QUrITyzg6aDU90uuG4gh9PIMzaWUlWLFqjd99Wqm1uZ6TP8QwrOzvULtlzlQTouW/ojYbWva/Uw0W3Eg8xv2P5x1nUrOQFzMVXYX81b76bD75wpigVtkbUqOR2II590NZ3fRjlUbKug1AOp5xzGiXboeui33dui/iZpuwuGLFq5Cj00IBOgIpOluR2e503EzvDeGu4Pk0By6EnRQejAa7cprODI+Hp5FdCS2YkrrewFun0RH544321nBllPTURNKROMMp88AjnplYS1SsrqGU3Ui4lY5zLpHJw5cevI9hIGEkvAZowvtCYhJhT6xjJHstU28WaBlgyxg4NFeRiFjAL8iMMAqDrEXHWYeUb+NKNgLjrEGG0LlIUwyoiAx9pE9QCZ3krTHjgloDfvkflhB5aRct91rMNdQ4nulLx/i9OiV8oXW4NmCMy3ud2AIB527pceUEr+L8Kp4lMlQXAN97axb0fjL6rLVuMYRyC1VyRsSrXAzBhYkdRf9ZUbdBEcThGFvK8tjTJX0SLZeliRb6ruPpaWT9icHaxp+8/nKrH/JxhXF0zIe4g/fK8/wCi/Djer/jQcFrUVVmWrcM1vODqbgXJ0GpN9TzloMbT5Ov2n/Kec0uwL0wQmJYKbG3htp6zKfiGArUWymqxHWy/lDzg/Bfh6/8APE+uPtv+UouK4+mapQ1VHmEC73IvufO8fdPM1ap9e/iqf0y04fwtHOarcnuOW3hltF+SD9fKtMMDTvcV6Ww+me/l6h9pf8NIV4chbStQ+3r8ec3sf/FbLVVuB4a2lSsh7qjfcZVvwBjfyWNcn6ju+vvlflh/q37bLB8OCVFfylEgX9FvOsQBueXmrcc7Uxp5IZ6fj3EaSB1vmZswsO+43G/xpMoVqK2R2fMOrEgjqNYmp31JuepivL9FP43v3QTHIBrvpybX2i3vkXlKtVrXygnXKLG3jy06Wkpw43MueGcBxFQfo6TWP0mGVbdczWB9Um55ZNMcMOP2tuH41KFEUksANe+53uecD8XW/pCd+F7A3H6auQeaoLj7TflLWh2LwiixR3P1ndr+xbD3RTiyrT9rDHqbZTFY5qwVKAz1LiwFtuYudLTZ8DwtRKKJUADKDezZtyT4DU7C86MBwPD0Tmp0lVvrG7N7WJIneRNuPDx9/Ll5+a8nrqObJHIkltFNtubxC0bljootnpFkiVBJMsIEey8UbURI3ozovATDdHjHQR0kZOsOaBmE43ZBDDwjS8hrYgLvK/F8WABYct/Dr6vjaTcpGmOFvws3xYAOtjse4yjxPEtSL2tKTifEmfVTY8+jDlr1HI89vCr+dNzN+/n65FyuTfHjxxaocTA53hfiwG0xzY2/PWQtjj1i2PTaDjEnTjKjeYMYs9YfnRPOG6L4ttX4wNwZyPxrW15kRimEBrE84/ZbkauvxnoZR4+uH1NpVmsOsYa3UxDyh6gfjOqjjLKLThDjr/advC+D1sQf0SErzdvNQd5bn4DWVJb0WXJJPYLjQzjNrbWx1F+8c5Y4nj1lKgBQVsr+bZGuNMhBvc/f7NNwrsNSTzq7Go31VuiD/mb2jwlniezGEcC9BRbYoWU3Gx0Op8Zvjx2dsv2cZfc2yeOwiYxEbDpTFRndbIRlyDMQX0AVgF1HUka6SXDdgXNjVrqvcilj4XNgPfNRgOAUqLh0z3W9rvcagg8tdzvLUmXOKd1z581t/wCfUUfCuy+HonNl8o/Jqlmy2+qtrDx375eEwRXlySdMbbeyggJhjIjGEwsY0wAxsN4CYAooLxExjZZos0EF4aB141jDeMJgFDhu0Q2adn/iiHmfjvnm/wA4vrz6845Maw1uffeeduvWsx+noFSoHupIsdjf7vXKjF0CpHnA9/Ijr8flMz8/f6xgbiLkWLHeLR+WunZjqRHonnt+Gm04PJOZG+LJ53/KMGKI5m8cicsj/m5tqLH8Y0gLubxj4pm35yJVJNlBJPIC5PqEekXI8VLHu6QeX8JcYHspiqgBWiUB+k5Ce5vO900GA+TwaHEVv2KQt7WYf8srHjyvwzy5cZ8sMcQentvFTR3OVFZj0RSx9gnrlHsng0AAoA25szsfeZZ4TCpSXLTRUXchFC3PU23PjNZw/dY3nnxHmOC7D4p8pYLTU75284D9Vbm/cbTT4PsBhlAzu7nnYhF9guR7ZrSYLzXHixjO82V+VZhOzuFp2KUEuNiwLn1FybS0gvAZUknSLdiTGwwRkBiigjIYIrxXiM2K8BMF49ArwEwEwFo5C2N40tGNUjC0ei2kzRSK8kUw0NjaK0IiiUEaxjiY2MPKBwutuKT/AGH/ACjX4bWvY038MjflPdYDOT8WLp/Nk8OThWIb0aNQ+CMfwnVS7MYxjph3H62VP5iJ7G8bKnDiV5snmOH7A4lvTemnizMf4Rb3y0wvydIP95Xdu5EVPe2abmKXOLH6Z3lz+2dw3YvBpa9NnI5u7H3KQPdLvDYSnSGWmiIOiKF+7eTwSvGRn5W/JWgIjjGtGRGMJhMaY4VLNFeNhEYOBiMEUWjgkxhMMbGCvGlojGmBUbxXjI2MbPLQFo2NaA2LNIWq3hqbGQLHpO0haDNGmARhIDCHjBEYDaQPHZ5CYRJppc0AaRiOgb//2Q==" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="data:image/jpeg;base64,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" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </div>
     
    <div class="card-content" style="padding: 16px; flex: 1; display: flex; flex-direction: column; justify-content: space-between;">
        <a href="more_about_property?property_id=<%=list1.getPropertyId() %>" style="text-decoration: none;color: black;">    
        <div>
            <h3 style="margin: 0; font-size: 1.2em;">3 BHK House for Sale in Ujjain Indore Road Indore</h3>
            <div class="property-info" style="display: flex; flex-wrap: wrap; gap: 16px; background-color: #f9f9f9; border-radius: 8px; padding: 16px; margin-top: 16px;">
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/area.png" style="height: 0.9cm;width: 0.9;" alt=""></i> &nbsp;&nbsp;CARPET AREA<br> &nbsp;&nbsp; <%=list1.getCarpetArea() %> sqft</div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/stairs.png" style="height: 0.6cm;width: 0.6;" alt=""></i>&nbsp;&nbsp;FLOOR<br> &nbsp;&nbsp;Ground out of <%=list1.getFloors() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/icons8-bed-50.png" alt="" ></i>&nbsp;&nbsp;FURNISHING<br> &nbsp;&nbsp;<%=list1.getFur() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/park.png" alt="" style="height: 0.9cm;width: 0.9;"></i> &nbsp;&nbsp;Garden<br> &nbsp;&nbsp; <%=list1.getGarden() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/icons8-car-50.png" style="height: 0.6cm;width: 0.6;" alt="">&nbsp;&nbsp;</i>PARKING<br> &nbsp;&nbsp;<%=list1.getParking() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/technology.png" alt="" style="height: 0.9cm;width: 0.9;"></i> &nbsp;&nbsp;OVERLOOKING<br> &nbsp;&nbsp; <%=list1.getOverlooking() %></div>
            </div>
            <p class="description" style="margin-top: 16px; font-size: 0.9em; color: #555;">
                
            </p>
        </div>
        </a>
    </div>
    <div class="card-actions" style="display: flex; justify-content: space-between; align-items: center; padding: 16px; border-top: 1px solid #eee; flex-direction: column;">
        <div class="price" style="font-size: 1.2em; font-weight: bold;"> <img src="./image/rupee-indian.png" style="height: 0.4cm;width: 0.4;" alt=""> 75 Lac<br><span style="font-size: 0.8em; color: #555;">Rs 8,333 sqft</span></div>
        <%-- <a href="view_agent?agent_id=<%list2.getAgentId() %>&property_id=<%=list1.getp %>" class="btn btn-danger" style="background-color: #e53935; color: white; border: none; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Contact Agent</a> --%>
       <!--  <button class="secondary" style="background-color: transparent; color: #e53935; border: 1px solid #e53935; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Get Phone No.</button> -->
     <!-- <a class="btn btn-primary" href="customer_intersted?customer_id=&customer_mail_id=&proprty_id=&property_name=&customer_name=" style="background-color: transparent; color: #e53935; border: 1px solid #e53935; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Interested ? </a> -->
    </div>
   
 
</div>

<style>
    @media (max-width: 768px) {
        .card {
            flex-direction: column;
        }
        .main-image {
            display: none;
        }
        .mobile-images {
            display: flex;
        }
        .card-content {
            padding: 16px;
        }
        .property-info div {
            width: 100%;
        }
        .card-actions {
            flex-direction: row;
            justify-content: space-between;
        }
        .description {
            display: none;
        }
        .mobile-images {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
            gap: 4px;
        }
        .mobile-images img {
            width: 20%;
            height: auto;
        }
    }

    .card img.main-image {
        width: 300px;
        height: auto;
    }

    .mobile-images {
        display: none;
        flex-wrap: wrap;
        gap: 4px;
    }

    .mobile-images img {
        width: 60px;
        height: auto;
    }
</style>



  
  
  
  
  <div class="tab-content" id="pills-tabContent">

    <div class="tab-pane fade show active" id="pills-gallery" role="tabpanel" aria-labelledby="pills-gallery-tab" tabindex="0">
      <div class="d-sm-flex align-items-center justify-content-between mt-3 mb-4">
        <h3 class="mb-3 mb-sm-0 fw-semibold d-flex align-items-center">More Property By Agent <span class="badge text-bg-secondary fs-2 rounded-4 py-1 px-2 ms-2">12</span></h3>
        <form class="position-relative">
          <input type="text" class="form-control search-chat py-2 ps-5" id="text-srh" placeholder="Search Friends">
          <i class="ti ti-search position-absolute top-50 start-0 translate-middle-y text-dark ms-3"></i>
        </form>
      </div>
      <div class="row">
      
      
      
<% for (PropertyDTO mm : list) {
           %>
      
        <div class="col-md-6 col-lg-4">
          <div class="card hover-img overflow-hidden rounded-2">
            <div class="card-body p-0">
              <img src="https://www.bootdey.com/image/580x380/00FFFF/000000" alt="" class="img-fluid w-100 object-fit-cover" style="height: 220px;">
              <div class="p-4 d-flex align-items-center justify-content-between">
                <div>
                  <h6 class="fw-semibold mb-0 fs-4"><%=mm.getAgentId() %></h6>
                  <span class="text-dark fs-2">Wed, Dec 14, 2023</span>
                </div>
                <div class="dropdown">
                  <a class="text-muted fw-semibold d-flex align-items-center p-1" href="javascript:void(0)" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="ti ti-dots-vertical"></i>
                  </a>
                  <ul class="dropdown-menu overflow-hidden">
                    <li><a class="dropdown-item" href="javascript:void(0)">Isuava wakceajo fe.jpg</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <%} %>
        
        
        
       
      </div>
    </div>
  </div>
</div>
</body>
</html>