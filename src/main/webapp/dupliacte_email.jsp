<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<style>

html, body{
    font-family: 'Poppins', sans-serif !important;
}

.header-link{
    font-size: 15px;
    margin-left: 20px;
    color: black !important;
}

.header-link:hover{
    color: #34d796 !important;
}

.main-img{
    padding-top: 8%;
}

.main-description{
    font-size: 14px;
}

.btn-sz-primary{
    font-size: 14px;
    padding: 10px 25px;
    border-radius: 50px;
    color: white !important;
    background-color: #34d796 !important;
}
</style>
<head>
    <title>Duplicate Email</title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/x-icon" href="./image/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="css/bootstrap5.css">
    <link rel="stylesheet" href="css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    

    <section>
        
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-3"></div>
                
                <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                    <div class="main-img text-center">
                        <img src="./image/email.png" alt="Main" class="img-fluid pb-3">

                        <h2>Duplicate Email Registeration</h2>
                        <p class="main-description pt-2">We're Sorry, As Per My record This Id Has Been Registerd Before Please Try To Login</p>
                        <a href="agent_login.jsp" class="btn btn-sz-primary">Go Home</a>
                    </div>
                </div>

                <div class="col-12 col-sm-12 col-md-12 col-lg-3"></div>
            </div>
        </div>
    </section>
</body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap5.js"></script>
    <script src="js/script.js"></script>
</html>