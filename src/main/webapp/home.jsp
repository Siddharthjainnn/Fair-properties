<%@page import="dao.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

#formContainer {
    display: none; /* Hide the form initially */
    position: fixed;
    top: 65%;
    left: 50%;
    transform: translate(-50%, -50%);
     background-color: #ffffff; 
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    z-index: 3; /* Ensure the form appears above other content */
    
    height: 10cm;
    width: 17cm;
  }

  /* Styles for the anchor button */
  .anchorButton {
    cursor: pointer;
  }

  /* Styles for the close button */
  .closeButton {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
  }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%@include file="header.jsp" %>



<div class="home">
            <div class="home-image">
                <div class="home-text">
                    <h1>investing in your one home at a time</h1>
                    <p>Empower your financial horizon with SmartHome.com, your gateway to strategic home investments shaping a prosperous tomorrow in the real estate landscape.</p>
                    <a href="#">get started</a>
                </div>
            </div>
 <form action="search_category" method="post" >
            <div class="home-bottom">
           
                <div class="container">
                    <div class="box">
                        <h5>location</h5>
                        <!-- <p>bangladesh</p> -->
                        
                        <input type="text" id="location" name="location" style="border: none;font-size: 0.5cm;" value="Indore">
                    </div>
                    <div class="box">
                        <h5>property type</h5>
                       <select id="service" name="service" style="width: 7cm;height: 1cm;border-radius: 10px;font-size: 0.5cm;">
      <option value="Commercial">Commercial</option>
      <option value="Residential">Residential</option>
      <option value="Investment">Investment</option>
      <option value="Rent">Rent</option>
    </select>
                    </div>
                    <div class="box">
                        <h5>budget</h5>
                         <select id="budget" name="budget" style="width: 7cm;height: 1cm;border-radius: 10px;font-size: 0.5cm;">
      <option value="9000000.00">9000000.00</option>
      <option value="15000000.00">15000000.00</option>
      <option value="9000000.00">9000000.00</option>
      <option value="32000000.00">32000000.00</option>
      
    </select>
                    </div>
                    <div class="box">
                      
                      <button type="submit" class="btn btn-primary" style="width: 5cm;height: 1.5cm;border-radius: 10px;font-size: 0.6cm;">search property</button>
                    </div>
                </div>
            </div>
            
        </div>
        </form>
        
        
        

<img id="avatar"  style="position: fixed;
    right: -120px; /* Start off-screen on the right */
    bottom: 20px;
    width: 300px; /* Adjust as needed */
    height: 300px; /* Adjust as needed */
    transition: right 1.5s ease-in-out;z-index: 1; /* Animate right property */" src="https://media0.giphy.com/media/AFg5mQdhtFrWGG9RJv/giphy-downsized-large.gif" alt="Avatar">
<div id="helpBox" style="display: none; /* Initially hide the help box */
    position: fixed;
    right: 6cm;
    bottom: 300px;
    padding: 10px;
   /*  background-color: #f0f0f0; */
    border: 0px solid #ccc;
    border-radius: 5px;z-index: 2;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);"><a  onclick="toggleForm()" class="anchorButton" style="text-decoration: none;color: black;" ><h4>How can I help you?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <span class="closeButton" onclick="closeHelpBox()" style=" position: absolute;
    top: 5px;
    right: 5px;
    
    cursor: pointer;size:0.2px;">X</span><h4/></div>
    
    
    
    <div id="formContainer">
  <span class="closeButton" onclick="toggleForm()">X</span>
  <!-- Your form content goes here -->
  <form>
    <h2>Pop-up Form</h2>
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email"><br><br>
    <input type="submit" value="Submit">
  </form>
</div>
    
        <div class="con-section">
            <div class="contact-us">
                <div class="text">
                    <h2>
                        navigation your real estate journey
                    </h2>
                    <p>
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Architecto similique eligendi a, hic nobis, saepe et beatae voluptatum nam iste tempora explicabo sit corporis? Sequi quasi corporis vero harum in.
                    </p>
                    <a href="#">contact us</a>
                </div>
    
                <div class="box">
                    <div class="image">
                        <img src="./image/modern-business-building-with-glass-wall-from-empty-floor.jpg" alt="">
                    </div>
    
                    <div class="s-box">
                        <h3>
                            22k+
                        </h3>
                        <p>Property Ready to buy and sell</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="convenience">
            <div class="provided">
                <div class="box">
                    <h2>11K+</h2>
                    <p>happy customers with our services</p>
                </div>
                <div class="box">
                    <h2>22K+</h2>
                    <p>the best property Will provide</p>
                </div>
                <div class="box">
                    <h2>520+</h2>
                    <p>awesome companies belive in us</p>
                </div>
            </div>
            <div class="content">
                <div class="box">
                    <h2>where comfort meets convenience</h2>
                </div>

                <div class="box">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit sint, corporis suscipit iure culpa blanditiis maxime ipsum obcaecati commodi non eveniet ea porro? Perferendis animi fuga, fugit culpa numquam sapiente.</p>
                </div>
            </div>

            <div class="video">
                <video controls muted autoplay loop src="./image/hotel_-_1303 (Original).mp4"></video>
            </div>
        </div>

        <div class="property">
            <div class="prop-h">
                <h2>our popular property</h2>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique nulla sequi temporibus accusamus ex excepturi, itaque vel nobis tenetur quam!
                </p>
            </div>

            <div class="de-box">
                <div class="box">
                    <div class="image">
                        <img src="./image/promenade-canal-dubai-marina-with-luxury-skyscrapers-around-united-arab-emirates.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="./image/icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="box">
                    <div class="image">
                        <img src="./image/office-skyscrapers-business-district.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="./image/icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="box">
                    <div class="image">
                        <img src="./image/observation-urban-building-business-steel.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="./image/icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="box">
                    <div class="image">
                        <img src="./image/modern-business-building-with-glass-wall-from-empty-floor.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="box">
                    <div class="image">
                        <img src="./image/low-angle-shot-tall-city-building-with-blue-sky-background-new-york.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="./image/icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="box">
                    <div class="image">
                        <img src="./image/glassclad-skyscrapers-central-mumbai-reflecting-sunset-hues-blue-hour.jpg" alt="">
                    </div>
                    <div class="price-name">
                        <h4>$23,383,00</h4>
                        <p>the gurugobind apartment</p>
                    </div>
                    <div class="location-detail">
                        <p><img src="./image/icons8-location-50.png" alt=""> indore, madhya pradesh</p>
                        <div class="detail">
                            <ul>
                                <li><img src="./image/icons8-bed-50.png" alt=""> 4 bed</li>
                                <li><img src="./image/icons8-bath-50.png" alt="">2 baht</li>
                                <li><img src="./image/icons8-car-50.png" alt="">4 parking</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            <div class="explore">
                <a href="#">explore all property</a>
            </div>
        </div>

        <div class="footer">
            <div class="footer-box">
                <div class="box">
                    <div class="logo">
                        <img src="./image/white-logo.png" alt="">
                    </div>

                    <p>
                        investing in your future one home at a time
                    </p>

                    <div class="subscribe">
                        <form action="">
                                <input type="text" placeholder="Enter your email">
                            <button>subscribe</button>
                        </form>
                    </div>
                </div>

                <div class="box">
                    <h3>quick link</h3>
                    <ul>
                        <li><a href="#">home</a></li>
                        <li><a href="#">rent</a></li>
                        <li><a href="#">sell</a></li>
                        <li><a href="#">about</a></li>
                        <li><a href="#">contact</a></li>
                    </ul>
                </div>

                <div class="box">
                    <h3>about us</h3>
                    <ul>
                        <li><a href="#">payment place</a></li>
                        <li><a href="#">make saving more</a></li>
                        <li><a href="#">tax calculator</a></li>
                        <li><a href="#">talk to us</a></li>
                    </ul>
                </div>

                <div class="box">
                    <h3>contact info</h3>
                    <ul>
                        <li>123 main streer, apt 4B los angeles, ca 90001, USA</li>
                        <li>+088(123)456-79-76</li>
                        <li>contact@company.com</li>
                    </ul>
                </div>
            </div>

            <div class="copyright">
                &copy; 2023 Codebrowser all rights reserved
            </div>
        </div>
    </main>
    
    
    
  
<script>
  // Function to animate avatar and show help box
  function animateAvatar() {
    document.getElementById('avatar').style.right = '20px'; // Move avatar to the left
    setTimeout(function() {
      document.getElementById('helpBox').style.display = 'block'; // Show help box
    }, 1900); // Wait for avatar animation to complete (1.5s)
  }

  // Function to close help box and hide avatar
  function closeHelpBox() {
    document.getElementById('helpBox').style.display = 'none';
    document.getElementById('avatar').style.display = 'none';
  }

  // Call the function after page load
  window.onload = function() {
    animateAvatar();
  };
  </script>
  
  
  <script>
  // Function to toggle the visibility of the form
  function toggleForm() {
    var formContainer = document.getElementById('formContainer');
    formContainer.style.display = formContainer.style.display === 'none' ? 'block' : 'none';
  }
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js" integrity="sha512-7Au1ULjlT8PP1Ygs6mDZh9NuQD0A5prSrAUiPHMXpU6g3UMd8qesVnhug5X4RoDr35x5upNpx0A6Sisz1LSTXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/ScrollTrigger.min.js" integrity="sha512-LQQDtPAueBcmGXKdOBcMkrhrtqM7xR2bVrnMtYZ8ImAZhFlIb5xrMqQ6uZviyeSB+4mYj89ta8niiCIQM1Gj0w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="script.js"></script>
</body>
</html>