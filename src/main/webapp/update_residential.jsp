
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
    margin-top:20px;
    background-color: #f1f3f7;
}
.card {
    margin-bottom: 24px;
    -webkit-box-shadow: 0 2px 3px #e4e8f0;
    box-shadow: 0 2px 3px #e4e8f0;
}

.card {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #eff0f2;
    border-radius: 1rem;
}

.font-size-18 {
    font-size: 18px!important;
}

a {
    text-decoration: none!important;
}

.text-muted {
    --bs-text-opacity: 1;
    color: #7f838b!important;
}

.font-size-20 {
    font-size: 20px!important;
}

.font-size-15 {
    font-size: 15px!important;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>


<%ArrayList<PropertyDTO> list=(ArrayList<PropertyDTO>)request.getAttribute("LIST"); %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<div class="container" >
<div class="card">
<div class="card-body">
<div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="table-responsive px-3">
                            <table class="table table-striped align-middle table-nowrap">
                                <tbody>
                                
                                
                                
                                
                                
                                
                                
                                
                           <%  for (PropertyDTO property : list) { %>
                                
                                
                                    <tr>
                                    
                                        <td>
                                            <div class="avatar-lg me-4">
                                                <img src="https://www.bootdey.com/image/380x380/00FFFF/000000" class="img-fluid rounded" alt="">
                                            </div>
                                        </td>

                                        <td>
                                            <div>
                                                <h5 class="font-size-18"><a href="ecommerce-product-detail.html" class="text-dark">Waterproof Mobile Phone</a></h5>
                                                <p class="text-muted mb-0 mt-2 pt-2">
                                                    <i class="bx bxs-star text-warning"></i>
                                                    <i class="bx bxs-star text-warning"></i>
                                                    <i class="bx bxs-star text-warning"></i>
                                                    <i class="bx bxs-star text-warning"></i>
                                                    <i class="bx bxs-star-half text-warning"></i>
                                                </p>
                                            </div>
                                        </td>

                                        <td>
                                            <ul class="list-unstyled ps-0 mb-0">
                                                <li><p class="text-muted mb-1 text-truncate"><i class="mdi mdi-circle-medium align-middle text-primary me-1"></i> 12MP TrueDepth front camera </p></li>
                                                <li><p class="text-muted mb-1 text-truncate"><i class="mdi mdi-circle-medium align-middle text-primary me-1"></i> Battery life: Up to 22 hours of video playback</p></li>
                                                <li><p class="text-muted mb-0 text-truncate"><i class="mdi mdi-circle-medium align-middle text-primary me-1"></i> 5G and Gigabit LTE</p></li>
                                            </ul>
                                        </td>

                                        <td style="width: 180px;">
                                            <p>Colors :</p>
                                            <ul class="list-inline mb-0 text-muted product-color">
                                                <li class="list-inline-item">
                                                    <i class="mdi mdi-circle font-size-16 text-dark"></i>
                                                </li>
                                                <li class="list-inline-item">
                                                    <i class="mdi mdi-circle font-size-16 text-success"></i>
                                                </li>
                                                <li class="list-inline-item">
                                                    <i class="mdi mdi-circle font-size-16 text-primary"></i>
                                                </li>
                                            </ul>
                                        </td>

                                        <td style="width: 220px;">
                                            <h3 class="mb-0 font-size-20"><span class="text-muted me-2"><del class="font-size-16 fw-normal">$500</del></span><b>$450</b></h3>
                                        </td>

                                        <td>
                                            <button type="button" class="btn btn-primary waves-effect waves-light"><i class="bx bx-cart me-2 font-size-15 align-middle"></i> Add</button>
                                        </td>

                                        <td>
                                            <div class="dropdown float-end">
                                                <a class="text-muted dropdown-toggle font-size-20" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                                                    <i class="bx bx-dots-horizontal-rounded"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="#">Edit</a>
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Remove</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>





<%} %>

                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
</body>
</html>