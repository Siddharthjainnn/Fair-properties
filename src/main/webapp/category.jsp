<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Category Insertion</title>

<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
<style>
    body {
        margin-top: 20px;
    }

    .bg-light-primary {
        background-color: #f9fbff!important;
    }

    .pb-6,
    .py-6 {
        padding-bottom: 3.75rem!important;
    }

    .pt-6,
    .py-6 {
        padding-top: 3.75rem!important;
    }

    .hover-scale,
    .hover-scale:hover {
        transition: transform .2s ease-in;
    }

    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 1px solid rgba(0, 0, 0, .125);
        border-radius: .4rem;
        box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
    }

    .card-body {
        flex: 1 1 auto;
        min-height: 1px;
        padding: 1.25rem;
    }
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body>

<% String aa=(String)request.getAttribute("msg"); %>
<% String aa1=(String)request.getAttribute("msg1"); %>

    <section class="py-6 bg-light-primary">
        <div class="jumbotron jumbotron-fluid" style="padding-left:3cm;padding-right: 3cm; ">
            <div class="row justify-content-center text-center mb-4">
                <div class="col-xl-6 col-lg-8 col-sm-10">
                    <h2 class="font-weight-bold">Product Category Insertion</h2>
                    <p class="text-muted mb-0">Select a category below to add a new product.</p>
                </div>
            </div>

            <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6 aos-init aos-animate"
                data-aos="fade-up">
                <!-- Commercial Properties Card -->
                <div class="col my-3">
                    <div class="card border-hover-primary hover-scale">
                        <div class="card-body">
                            <div class="text-primary mb-5">
                             <svg xmlns="http://www.w3.org/2000/svg" height="60" width="60" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#74C0FC" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/></svg>
                            </div>
                            <h6 class="font-weight-bold mb-3">Commercial Properties</h6>
                            <p class="text-muted mb-0">Add new commercial properties to the database.</p>
                            <!-- Link to the page where you can add commercial properties -->
                            <a href="commercial_insertion.jsp?category=commercial&agent_id=<%=aa %>&agent_name=<%=aa1 %>" class="btn btn-primary mt-3">Add</a>
                        </div>
                    </div>
                </div>
                <!-- Rental Properties Card -->
                <div class="col my-3">
    <div class="card border-hover-primary hover-scale">
        <div class="card-body">
            <div class="text-primary mb-5">
                <svg xmlns="http://www.w3.org/2000/svg" height="60" width="60" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#74C0FC" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/></svg>
            </div>
            <h6 class="font-weight-bold mb-3">Residential Properties</h6>
            <p class="text-muted mb-0">Add new residential properties to the database.</p>
            <!-- Link to the page where you can add residential properties -->
            <a href="residential.jsp?category=residential&agent_id=<%=aa %>&agent_name=<%=aa1 %>" class="btn btn-primary mt-3">Add</a>
        </div>
    </div>
</div>

                <!-- Agricultural Properties Card -->
                <div class="col my-3">
                    <div class="card border-hover-primary hover-scale">
                        <div class="card-body">
                           <div class="text-primary mb-5">
                             <svg xmlns="http://www.w3.org/2000/svg" height="60" width="60" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#74C0FC" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/></svg>
                            </div>
                            <h6 class="font-weight-bold mb-3">Agricultural Properties</h6>
                            <p class="text-muted mb-0">Add new agricultural properties to the database.</p>
                            <!-- Link to the page where you can add agricultural properties -->
                            <a href="pnf.jsp" class="btn btn-primary mt-3">Add</a>
                        </div>
                    </div>
                </div>
                
                
                
                <!-- Add more cards for other categories as needed -->
                <div class="col my-3">
                    <div class="card border-hover-primary hover-scale">
                        <div class="card-body">
                            <div class="text-primary mb-5">
                             <svg xmlns="http://www.w3.org/2000/svg" height="60" width="60" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#74C0FC" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/></svg>
                            </div>
                            <h6 class="font-weight-bold mb-3">Investment Properties</h6>
                            <p class="text-muted mb-0">Add new Investment properties to the database.</p>
                            <!-- Link to the page where you can add agricultural properties -->
                            <%-- <a href="investment.jsp?category=commercial&agent_id=<%=aa %>&agent_name=<%=aa1 %>" class="btn btn-primary mt-3">Add</a> --%>
                        <a href="pnf.jsp" class="btn btn-primary mt-3">Add</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
