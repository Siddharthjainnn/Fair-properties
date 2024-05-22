<%@page import="dao.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%
    HttpSession session2 = request.getSession(false);
    if (session2 == null || session2.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String name = (String) session2.getAttribute("name");
    String email = (String) session2.getAttribute("email");
    String pictureUrl = (String) session2.getAttribute("pictureUrl");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://accounts.google.com/gsi/client" async defer></script>
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


<h1>Welcome, <%= name %></h1>
    <img src="<%= pictureUrl %>" alt="Profile Picture">
    <p>Email: <%= email %></p>
    <form action="LogoutServlet" method="post">
        <button type="submit">Logout</button>
    </form>



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
                        
                        
                        
                        <select id="service" name="location" style="width: 7cm;height: 1cm;border-radius: 10px;font-size: 0.5cm;" required="required">
      
                        
                        <!-- <input type="text" id="location" name="location" style="border: none;font-size: 0.5cm;" value="Indore"> -->
                        <option value="">Please Select Area</option>
    <option value="NIPANIYA">NIPANIYA</option>
    <option value="TALAWALI CHANDA">TALAWALI CHANDA</option>
    <option value="TULSI NAGAR">TULSI NAGAR</option>
    <option value="TEJPUR GADBADI">TEJPUR GADBADI</option>
    <option value="TELEPHONE NAGAR">TELEPHONE NAGAR</option>
    <option value="TILAK NAGAR">TILAK NAGAR</option>
    <option value="TILLOR BUZURG">TILLOR BUZURG</option>
    <option value="TILLOR KHURD">TILLOR KHURD</option>
    <option value="TRIVENI COLONY">TRIVENI COLONY</option>
    <option value="TUKOGANJ">TUKOGANJ</option>
    
    <option value="VAIBHAV NAGAR">VAIBHAV NAGAR</option>
    <option value="VINDHYANCHAL NAGAR">VINDHYANCHAL NAGAR</option>
    <option value="VISHALI NAGAR">VISHALI NAGAR</option>
    <option value="VISHNUPURI COLONY">VISHNUPURI COLONY</option>
    <option value="VALLABH NAGAR">VALLABH NAGAR</option>
    <option value="VANDANA NAGAR">VANDANA NAGAR</option>
    <option value="VEER SAWARKAR NAGAR">VEER SAWARKAR NAGAR</option>
    <option value="VIDUR NAGAR">VIDUR NAGAR</option>
    <option value="VIJAY NAGAR">VIJAY NAGAR</option>
    <option value="WHITE CHURCH COLONY,OLD PALASIA">WHITE CHURCH COLONY,OLD PALASIA</option>
    <option value="PACHORE">PACHORE</option>
    <option value="PAGNISPAGA">PAGNISPAGA</option>
    <option value="PALAKHEDI">PALAKHEDI</option>
    <option value="PALDA">PALDA</option>
    <option value="PALIYA HAIDAR">PALIYA HAIDAR</option>
    <option value="PALSIKAR COLONY">PALSIKAR COLONY</option>
    <option value="PANCHDERIYA">PANCHDERIYA</option>
    <option value="PARASPAR NAGAR">PARASPAR NAGAR</option>
    <option value="PARDESI PURA">PARDESI PURA</option>
    <option value="PATNI PURA">PATNI PURA</option>
    <option value="PEDMI">PEDMI</option>
    <option value="PIGDAMBAR">PIGDAMBAR</option>
    <option value="PIPALDA">PIPALDA</option>
    <option value="PIPLIYAHANA">PIPLIYAHANA</option>
    <option value="PIPLYAKUMAR">PIPLYAKUMAR</option>
    <option value="PITHAMPUR">PITHAMPUR</option>
    <option value="RAJ MOHALLA">RAJ MOHALLA</option>
    <option value="RAJENDRA NAGAR">RAJENDRA NAGAR</option>
    <option value="RAJMAHAL COLONY">RAJMAHAL COLONY</option>
    <option value="RAJWADA">RAJWADA</option>
    <option value="RALA MANDAL">RALA MANDAL</option>
    <option value="RAMBAG">RAMBAG</option>
    <option value="RANGWASA">RANGWASA</option>
    <option value="RAU">RAU</option>
    <option value="RAVI SHANKAR SHUKLA NAGAR">RAVI SHANKAR SHUKLA NAGAR</option>
    <option value="RSS NAGAR">RSS NAGAR</option>
    <option value="SADAR BAZAR">SADAR BAZAR</option>
    <option value="SAI KRIPA COLONY">SAI KRIPA COLONY</option>
    <option value="SAINATH COLONY">SAINATH COLONY</option>
    <option value="SAKET NAGAR">SAKET NAGAR</option>
    <option value="SANAWADIA">SANAWADIA</option>
    <option value="SANCHAR NAGAR">SANCHAR NAGAR</option>
    <option value="SANGAM NAGAR">SANGAM NAGAR</option>
    <option value="SANTER">SANTER</option>
    <option value="SANVID NAGAR">SANVID NAGAR</option>
    <option value="SANWER">SANWER</option>
    <option value="SARAFA">SARAFA</option>
    <option value="SARANGPUR">SARANGPUR</option>
    <option value="SARV SUVIDHA NAGAR">SARV SUVIDHA NAGAR</option>
    <option value="SARVSAMPANNA NAGAR">SARVSAMPANNA NAGAR</option>
    <option value="SCHEME NO 103">SCHEME NO 103</option>
    <option value="SCHEME NO 114">SCHEME NO 114</option>
    <option value="SCHEME NO 134">SCHEME NO 134</option>
    <option value="SCHEME NO 140">SCHEME NO 140</option>
    <option value="SCHEME NO 51">SCHEME NO 51</option>
    <option value="SCHEME NO 54">SCHEME NO 54</option>
    <option value="SCHEME NO 71">SCHEME NO 71</option>
    <option value="SCHEME NO 94">SCHEME NO 94</option>
    <option value="SEMLIYA CHAU">SEMLIYA CHAU</option>
    <option value="SHIV NAGAR">SHIV NAGAR</option>
    <option value="SHIVAJI NAGAR">SHIVAJI NAGAR</option>
    <option value="SHIVMOTI NAGAR">SHIVMOTI NAGAR</option>
    <option value="SHIWNI">SHIWNI</option>
    <option value="SHRAMIK COLONY">SHRAMIK COLONY</option>
    <option value="SHRI NAGAR">SHRI NAGAR</option>
    <option value="SHRI NAGAR EXTENSION">SHRI NAGAR EXTENSION</option>
    <option value="SHRI RAM NAGAR">SHRI RAM NAGAR</option>
    <option value="SHRI RAM TALAWALI">SHRI RAM TALAWALI</option>
    <option value="SILICON CITY">SILICON CITY</option>
    <option value="SILVER PARK COLONY">SILVER PARK COLONY</option>
    <option value="SIMROL">SIMROL</option>
    <option value="SINHASA">SINHASA</option>
    <option value="SIRPUR">SIRPUR</option>
    <option value="SIYAGANJ">SIYAGANJ</option>
    <option value="SMRUTI NAGAR">SMRUTI NAGAR</option>
    <option value="SNEH LATA GANJ">SNEH LATA GANJ</option>
    <option value="SNEH NAGAR">SNEH NAGAR</option>
    <option value="SOUTH TUKOGANJ">SOUTH TUKOGANJ</option>
    <option value="SUBHASH NAGAR">SUBHASH NAGAR</option>
    <option value="SUDAMA NAGAR">SUDAMA NAGAR</option>
    <option value="SUKLIYA">SUKLIYA</option>
    <option value="SULA KHEDI">SULA KHEDI</option>
    <option value="SURYA DEV NAGAR,IDA SCHEME 140">SURYA DEV NAGAR,IDA SCHEME 140</option>
    <option value="INDIRA GANDHI NAGAR">INDIRA GANDHI NAGAR</option>
    <option value="INDRA PURI COLONY">INDRA PURI COLONY</option>
    <option value="INDUSTRIAL ESTATE">INDUSTRIAL ESTATE</option>
    <option value="JABRAN COLONY">JABRAN COLONY</option>
    <option value="JAMLI">JAMLI</option>
    <option value="JHALARIA">JHALARIA</option>
    <option value="JOSHI GURADIYA">JOSHI GURADIYA</option>
    <option value="JUNI">JUNI</option>
    <option value="KACHHALYA">KACHHALYA</option>
    <option value="KALANI NAGAR">KALANI NAGAR</option>
    <option value="KALINDI KUNJ">KALINDI KUNJ</option>
    <option value="KALINDI MID TOWN">KALINDI MID TOWN</option>
    <option value="KALOD HALA">KALOD HALA</option>
    <option value="KALOD KARTAL">KALOD KARTAL</option>
    <option value="KAMLA NAGAR">KAMLA NAGAR</option>
    <option value="KAMPEL">KAMPEL</option>
    <option value="KASTURBAGRAM">KASTURBAGRAM</option>
    <option value="KELOD KARTAL">KELOD KARTAL</option>
    <option value="KHAJRANA">KHAJRANA</option>
    <option value="KHAJURI BAZAAR">KHAJURI BAZAAR</option>
    <option value="KHATIWALA TANK">KHATIWALA TANK</option>
    <option value="KHUDEL">KHUDEL</option>
    <option value="KISHANGANJ">KISHANGANJ</option>
    <option value="KODRIYA">KODRIYA</option>
    <option value="KRISHI MANDI">KRISHI MANDI</option>
    <option value="KRISHNODAYA NAGAR">KRISHNODAYA NAGAR</option>
    <option value="KSHIPRA">KSHIPRA</option>
    <option value="KUDANA">KUDANA</option>
    <option value="LALARAM NAGAR">LALARAM NAGAR</option>
    <option value="LASUDIA">LASUDIA</option>
    <option value="LASUDIA MORI">LASUDIA MORI</option>
    <option value="LIG COLONY">LIG COLONY</option>
    <option value="LIMBODI">LIMBODI</option>
    <option value="LOKMANYA NAGAR">LOKMANYA NAGAR</option>
    <option value="MAANAVTA NAGAR">MAANAVTA NAGAR</option>
    <option value="MACHAL">MACHAL</option>
    <option value="MACHLA">MACHLA</option>
    <option value="MAHALAXMI NAGAR">MAHALAXMI NAGAR</option>
    <option value="MAKSI">MAKSI</option>
    <option value="MALHARGANJ">MALHARGANJ</option>
    <option value="MALWA MILL">MALWA MILL</option>
    <option value="MANAVTA NAGAR">MANAVTA NAGAR</option>
    <option value="MANGLIA">MANGLIA</option>
    <option value="MANISHPURI">MANISHPURI</option>
    <option value="MANORAMA GANJ">MANORAMA GANJ</option>
    <option value="MANPUR">MANPUR</option>
    <option value="MARI MATA SOUARE">MARI MATA SOUARE</option>
    <option value="MAURYA HILLS">MAURYA HILLS</option>
    <option value="MAYA KHEDI">MAYA KHEDI</option>
    <option value="MHAUGAON">MHAUGAON</option>
    <option value="MOG LINES">MOG LINES</option>
    <option value="MOROD">MOROD</option>
    <option value="MORYA HILLS">MORYA HILLS</option>
    <option value="MTH COMPOUND">MTH COMPOUND</option>
    <option value="MUNDLA NAYTA">MUNDLA NAYTA</option>
    <option value="MURAI MOHALLA">MURAI MOHALLA</option>
    <option value="MUSAKHEDI">MUSAKHEDI</option>
    <option value="NAGAR NIGAM">NAGAR NIGAM</option>
    <option value="NAGDA">NAGDA</option>
    <option value="NAINOD">NAINOD</option>
    <option value="NANDA NAGAR">NANDA NAGAR</option>
    <option value="NAVLAKHA">NAVLAKHA</option>
    <option value="NEW PALASIA">NEW PALASIA</option>
    <option value="NEW RANI BAGH">NEW RANI BAGH</option>
    <option value="NIHALPUR">NIHALPUR</option>
    <option value="NIHALPUR MANDI">NIHALPUR MANDI</option>
    <option value="NIRANJANPUR">NIRANJANPUR</option>
    <option value="NIRANJANPUR CIRCLE">NIRANJANPUR CIRCLE</option>
    <option value="NOORANI NAGAR,AHIRKHEDI">NOORANI NAGAR,AHIRKHEDI</option>
    <option value="AJNOD">AJNOD</option>
    <option value="ALOK NAGAR">ALOK NAGAR</option>
    <option value="AMBEDKAR NAGAR">AMBEDKAR NAGAR</option>
    <option value="ANAND NAGAR">ANAND NAGAR</option>
    <option value="ANNAPURNA">ANNAPURNA</option>
    <option value="ANOOP NAGAR">ANOOP NAGAR</option>
    <option value="ANURAG NAGAR">ANURAG NAGAR</option>
    <option value="ASHISH NAGAR">ASHISH NAGAR</option>
    <option value="ASRAWAD KHURD">ASRAWAD KHURD</option>
    <option value="ATAHEDA">ATAHEDA</option>
    <option value="AZAD NAGAR">AZAD NAGAR</option>
    <option value="BADA BANGARDA">BADA BANGARDA</option>
    <option value="BADGOUNDA">BADGOUNDA</option>
    <option value="BAIRATHI COLONY">BAIRATHI COLONY</option>
    <option value="BANEDIA">BANEDIA</option>
    <option value="BANGANGA">BANGANGA</option>
    <option value="BANGARDA BADA">BANGARDA BADA</option>
    <option value="BANGARDA CHHOTA">BANGARDA CHHOTA</option>
    <option value="BANJARI">BANJARI</option>
    <option value="BAOLIAKHURD">BAOLIAKHURD</option>
    <option value="BARDARI">BARDARI</option>
    <option value="BARFANI">BARFANI</option>
    <option value="BARLAI JAGIR">BARLAI JAGIR</option>
    <option value="BENGALI SQUARE">BENGALI SQUARE</option>
    <option value="BHAGIRATH PURA">BHAGIRATH PURA</option>
    <option value="BHAGORA">BHAGORA</option>
    <option value="BHANVARKUAN">BHANVARKUAN</option>
    <option value="BHATKHEDI">BHATKHEDI</option>
    <option value="BHAWRASLA">BHAWRASLA</option>
    <option value="BHICHOLI">BHICHOLI</option>
    <option value="BHICHOLI HAPSI">BHICHOLI HAPSI</option>
    <option value="BHICHOLI MARDANA">BHICHOLI MARDANA</option>
    <option value="BIJALPUR">BIJALPUR</option>
    <option value="BRIJESHWARI ANNEXE">BRIJESHWARI ANNEXE</option>
    <option value="BUDHANYA PANTH">BUDHANYA PANTH</option>
    <option value="BUDHI BARLAI">BUDHI BARLAI</option>
    <option value="BULANDSHAHR">BULANDSHAHR</option>
    <option value="BURANKHEDI">BURANKHEDI</option>
    <option value="CHANDAN NAGAR">CHANDAN NAGAR</option>
    <option value="CHHATRIBAGH">CHHATRIBAGH</option>
    <option value="CHHATRIPURA">CHHATRIPURA</option>
    <option value="CHHAVNI">CHHAVNI</option>
    <option value="CHHOTI GWALTOLI">CHHOTI GWALTOLI</option>
    <option value="CHIKITSAK NAGAR">CHIKITSAK NAGAR</option>
    <option value="DAKACHYA">DAKACHYA</option>
    <option value="DATODA">DATODA</option>
    <option value="DDU NAGAR">DDU NAGAR</option>
    <option value="DEPALPUR">DEPALPUR</option>
    <option value="DEWAS NAKA">DEWAS NAKA</option>
    <option value="DUDHIA">DUDHIA</option>
    <option value="DWARKAPURI">DWARKAPURI</option>
    <option value="GADI ADDA">GADI ADDA</option>
    <option value="GANDHI NAGAR">GANDHI NAGAR</option>
    <option value="GAUTAMPURA">GAUTAMPURA</option>
    <option value="GAWLI PALASIA">GAWLI PALASIA</option>
    <option value="GEETA NAGAR">GEETA NAGAR</option>
    <option value="GHATABILLOD">GHATABILLOD</option>
    <option value="GIRDHAR NAGAR">GIRDHAR NAGAR</option>
    <option value="GOYAL NAGAR">GOYAL NAGAR</option>
    <option value="GOYAL VIHAR">GOYAL VIHAR</option>
    <option value="GREATER BRIJESHWARI ANNEXE">GREATER BRIJESHWARI ANNEXE</option>
    <option value="GUMASTA NAGAR">GUMASTA NAGAR</option>
    <option value="HARNYA KHEDI">HARNYA KHEDI</option>
    <option value="HARSOLA">HARSOLA</option>
    <option value="HASALPUR">HASALPUR</option>
    <option value="HATOD">HATOD</option>
</select>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </div>
                    <div class="box">
                        <h5>property type</h5>
                       <select id="service" name="service" style="width: 8cm;height: 1cm;border-radius: 10px;font-size: 0.5cm;">
      <option value="">Please Select Property Type</option>
      <option value="commercial">Commercial</option>
      <option value="residential">Residential</option>
      <option value="Investment">Investment</option>
      <option value="Rent">Rent</option>
    </select>
                    </div>
                    <div class="box">
                <h5>Budget</h5>
                <select id="budget" name="budget" style="width: 7cm;height: 1cm;border-radius: 10px;font-size: 0.5cm;" required="required">
                    <option value="">Please Select Budget</option>
                    <option value="500000">Below 5 Lakh</option>
                    <option value="1000000">5 Lakh - 10 Lakh</option>
                    <option value="2000000">10 Lakh - 20 Lakh</option>
                    <option value="3000000">20 Lakh - 30 Lakh</option>
                    <option value="4000000">30 Lakh - 40 Lakh</option>
                    <option value="5000000">40 Lakh - 50 Lakh</option>
                    <option value="6000000">50 Lakh - 60 Lakh</option>
                    <option value="7000000">60 Lakh - 70 Lakh</option>
                    <option value="8000000">70 Lakh - 80 Lakh</option>
                    <option value="9000000">80 Lakh - 90 Lakh</option>
                    <option value="10000000">90 Lakh - 1 Crore</option>
                    <option value="20000000">1 Crore - 2 Crore</option>
                    <option value="30000000">2 Crore - 3 Crore</option>
                    <option value="40000000">3 Crore - 4 Crore</option>
                    <option value="50000000">4 Crore - 5 Crore</option>
                    <option value="60000000">5 Crore - 6 Crore</option>
                    <option value="70000000">6 Crore - 7 Crore</option>
                    <option value="80000000">7 Crore - 8 Crore</option>
                    <option value="90000000">8 Crore - 9 Crore</option>
                    <option value="100000000">9 Crore - 10 Crore</option>
                    <option value="100000000">Above 10 Crore</option>
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