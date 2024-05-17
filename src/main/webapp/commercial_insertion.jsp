<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commercial Property</title>

<style>body{
    background:#eee;
}

.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}

.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.5rem 1.5rem;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%String k=(String)request.getParameter("agent_id"); %>
<%String k1=(String)request.getParameter("agent_name"); %>
<% String ak=(String)request.getAttribute("ok"); %>
<%if (ak!=null){ %>

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
   <h5 style="color: green;"><%=ak %></h5>
  </div>
</div>

<%} %>

<form action="add_property_by_agent" method="post" enctype="multipart/form-data">
    <div class="container-fluid" style="padding-left: 5%;padding-right: 5%;">

       
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="../../pages/admin/customers.html" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Commercial Property</h2>
            <div class="hstack gap-3">
              
              <button type="submit" class="btn btn-primary btn-sm btn-icon-text" style="width: 4cm;height: 1cm;"><i class="bi bi-save"></i> <span class="text">Save</span></button>
            </div>
          </div>
        
          <!-- Main content -->
          <div class="row">
            <!-- Left side -->
            <div class="col-lg-8">
              <!-- Basic information -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Property information</h3>

<%@ page import="java.util.Random" %>
<%@ page import="java.util.UUID" %>

<%
    // Generate a random 3-digit number
    Random rand = new Random();
    int randomNumber = rand.nextInt(900) + 100; // Generates a random number between 100 and 999

    // Generate a random 4-character string
    String uuid = UUID.randomUUID().toString().toUpperCase().replaceAll("[^A-Z]", "").substring(0, 4);

    // Combine the random string and random number to form the property ID
    String propertyId = uuid + String.format("%03d", randomNumber);
%>


                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Property Name</label>
                        <input type="text" class="form-control" name="property_name" >
                        <input type="hidden" class="form-control" value="<%=propertyId%>" name="property_id">
                      </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label" for="Property Type">Property Type</label>
                          <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="Property_type">
                           
                            <option value="Office Buildings">Office Buildings</option>
                            <option value="Retail/Restaurant">Retail/Restaurant</option>
                            <option value="Industrial ">Industrial </option>
                            <option value="Multifamily ">Multifamily </option>
                            <option value="Land ">Land </option>
                            <option value="Mixed-Use">Mixed-Use</option>
                            <option value="Hospitality ">Hospitality </option>
                            <option value="Healthcare">Healthcare </option>
                            <option value="Leisure ">Leisure </option>
                          </select>
                          
                          <input type="hidden" value="commercial" name="category" >
                        </div>
                      </div>

                      <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Price(Rs)</label>
                          <input type="text" class="form-control"  name="price" required="required">
                        </div>
                      </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Area(Sq.feet)</label>
                        <input type="text" class="form-control" name="area" required="required">
                      </div>
                    </div>
                  </div>


                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Length</label>
                        <input type="text" class="form-control" name="length" required="required">
                      </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Width</label>
                          <input type="text" class="form-control"  name="width" required="required">
                        </div>
                      </div>

                      <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Type Of Ownership</label>
                          <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="Ownership" >
                            
                            <option value="Lease Hold">Lease Hold</option>
                            <option value="Free Hold ">Free Hold</option>
                            </select>
                        </div>
                      </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Transaction Type</label>
                        <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="Transaction" required="required">
                            
                            <option value="Lease">Lease </option>
                            <option value="Rent">Rent </option>
                            <option value="Sale">Sale </option>
                            </select>
                      </div>
                    </div>
                  </div>



                  
                  <div class="row">
                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Construction Year <span style="color: red;"> *</span></label>
                        <input type="month" class="form-control" id="cons_year" name="cons_year">
                        <div id="consYearError" class="invalid-feedback"></div>
                      </div>
                    </div>

                    <div class="col-lg-3">
                      <div class="mb-3">
                        <label class="form-label">Numbers Of Floors</label>
                        <input type="text" class="form-control" name="floors">
                      </div>
                    </div>


                    <div class="col-lg-3">
                        <div class="mb-3">
                          <label class="form-label">Direction</label>
                         <select class="form-select" name="direction" required="required">
                
                <option value="North">North</option>
                <option value="South">South</option>
                <option value="East">East</option>
                <option value="West">West</option>
                <!-- Add more options as needed -->
            </select>

                        </div>
                      </div>

                    <div class="col-lg-3">
                        <div class="mb-3">
                            <label class="form-label">Numbers Of Open Sides <span style="color: red;"> *</span></label>
                            <input type="text" class="form-control" id="openside" name="openside" required="required">
                            <div id="opensideError" class="invalid-feedback"></div>
                        </div>
                      </div>

  




                    
                    </div>
                </div>





                


            </div>
           

              

              


              <!-- Address -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Address Information</h3>
                  <div class="mb-3">
                    <label class="form-label">Street/Address</label>
                    <input type="text" class="form-control" name="adress" required="required">
                  </div>
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Area</label>
                        <select name="area" id="area" class="form-control" name="area" required="required">
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
    
    </select>
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Landmark</label>
                          <input type="text" class="form-control" name="landmark">
                        </div>
                      </div>
                      



                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Ward Number</label>
                        <select name="ward" id="ward" class="form-control" name="ward" required="required">

    <option value="1">Sirapur, Ward 1</option>
    <option value="2">Chandan Nagar, Ward 2</option>
    <option value="3">Kaalaani Nagar, Ward 3</option>
    <option value="4">Sukhadev Nagar, Ward 4</option>
    <option value="5">Raaj Nagar, Ward 5</option>
    <option value="6">Malhaaraganj, Ward 6</option>
    <option value="7">Janata Colony, Ward 7</option>
    <option value="8">Joona Risaala, Ward 8</option>
    <option value="9">Vrindaavan, Ward 9</option>
    <option value="10">Baanaganga, Ward 10</option>
    <option value="11">Bhaageerathpura, Ward 11</option>
    <option value="12">Govind Colony, Ward 12</option>
    <option value="13">Sangamanagar, Ward 13</option>
    <option value="14">Ashok Nagar, Ward 14</option>
    <option value="15">Bijaasan, Ward 15</option>
    <option value="16">Nandabaag, Ward 16</option>
    <option value="17">Kushavaah Nagar, Ward 17</option>
    <option value="18">Sant Kabeer, Ward 18</option>
    <option value="19">Vishvakarma, Ward 19</option>
    <option value="20">Gauree Nagar, Ward 20</option>
    <option value="21">Shyaam Nagar, Ward 21</option>
    <option value="22">P.Dee.D.Upaa. Nagar, Ward 22</option>
    <option value="23">Sv. Raajesh Joshee, Ward 23</option>
    <option value="24">Sant Baaleejee Mahaaraaj, Ward 24</option>
    <option value="25">Nanda Nagar, Ward 25</option>
    <option value="26">Jeen Maata, Ward 26</option>
    <option value="27">Pashupati Naath, Ward 27</option>
    <option value="28">Maam Tulaja Bhavaanee, Ward 28</option>
    <option value="29">Dr Shyaamaaprasaad Mukharjee Nagar, Ward 29</option>
    <option value="30">Sant Ravidaas, Ward 30</option>
    <option value="31">Mahaaraaja Chhatrasaal, Ward 31</option>
    <option value="32">Atal Bihaaree Baajapeyee, Ward 32</option>
    <option value="33">Sookhaliya, Ward 33</option>
    <option value="34">Shaheed BhagatSinh, Ward 34</option>
    <option value="35">Lasudiya Moree, Ward 35</option>
    <option value="36">Nepaaniya, Ward 36</option>
    <option value="37">Saamee Kripa, Ward 37</option>
    <option value="38">Haajee Colony, Ward 38</option>
    <option value="39">Naaharasha Havelee, Ward 39</option>
    <option value="40">Khajaraana, Ward 40</option>
    <option value="41">Kailaashapuree, Ward 41</option>
    <option value="42">Swami Vivekaanand, Ward 42</option>
    <option value="43">Shreenagar, Ward 43</option>
    <option value="44">H.I.G., Ward 44</option>
    <option value="45">Dr. Bheemrao Ambedkar, Ward 45</option>
    <option value="46">Somanaath, Ward 46</option>
    <option value="47">Saradaar Vallabh Bhai, Ward 47</option>
    <option value="48">Geeta Bhavan, Ward 48</option>
    <option value="49">Tilak Nagar, Ward 49</option>
    <option value="50">Brajeshvaree, Ward 50</option>
    <option value="51">Maam Bhagavatee Nagar, Ward 51</option>
    <option value="52">Musakkhedi, Ward 52</option>
    <option value="53">Dr Maulaana Aajaad Nagar, Ward 53</option>
    <option value="54">Residency, Ward 54</option>
    <option value="55">Saaooth Tukoganj, Ward 55</option>
    <option value="56">Snehalata Ganj, Ward 56</option>
    <option value="57">Devi Ahilyaabai, Ward 57</option>
    <option value="58">Emli Bazaar, Ward 58</option>
    <option value="59">Harasiddhee, Ward 59</option>
    <option value="60">Ranipuraa, Ward 60</option>
    <option value="61">Taatyaa Saravate, Ward 61</option>
    <option value="62">Raavajee Baazaar, Ward 62</option>
    <option value="63">Navalakha, Ward 63</option>
    <option value="64">Chitaavad, Ward 64</option>
    <option value="65">Sant Kavar Raam, Ward 65</option>
    <option value="66">Shaheed Hemu Kolonee, Ward 66</option>
    <option value="67">Mahaaraaja Holakar, Ward 67</option>
    <option value="68">Bambaee Baazaar, Ward 68</option>
    <option value="69">Jawaahar Maarg, Ward 69</option>
    <option value="70">Lok Naayak Nagar, Ward 70</option>
    <option value="Dravid Nagar, Ward 71">Dravid Nagar, Ward 71</option>
    <option value="Lok Maanya Nagar, Ward 72">Lok Maanya Nagar, Ward 72</option>
    <option value="Lakshman Sinh Chauhaan, Ward 73">Lakshman Sinh Chauhaan, Ward 73</option>
    <option value="Vishnupuree, Ward 74">Vishnupuree, Ward 74</option>
    <option value="Paalada, Ward 75">Paalada, Ward 75</option>
    <option value="Mundlaa Naayta, Ward 76">Mundlaa Naayta, Ward 76</option>
    <option value="Billavali, Ward 77">Billavali, Ward 77</option>
    <option value="Choithram, Ward 78">Choithram, Ward 78</option>
    <option value="Sukhniwas, Ward 79">Sukhniwas, Ward 79</option>
    <option value="Dr Rajendra Prasaad, Ward 80">Dr Rajendra Prasaad, Ward 80</option>
    <option value="Annapurna, Ward 81">Annapurna, Ward 81</option>
    <option value="Sudaama Nagar, Ward 82">Sudaama Nagar, Ward 82</option>
    <option value="Gumaastaa Nagar, Ward 83">Gumaastaa Nagar, Ward 83</option>
    <option value="Dawaarkapuri, Ward 84">Dawaarkapuri, Ward 84</option>
    <option value="Prajaapat Nagar, Ward 85">Prajaapat Nagar, Ward 85</option>
</select>

                    </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Scheme No</label>
                       <select name="scheme" id="scheme" class="form-control" name="scheme_no" >
    
    <option value="TPS-1">TPS-1</option>
    <option value="TPS-2">TPS-2</option>
    <option value="TPS-3">TPS-3</option>
    <option value="TPS-4">TPS-4</option>
    <option value="TPS-5">TPS-5</option>
    <option value="TPS-8">TPS-8</option>
    <option value="9">scheme No 9</option>
    <option value="11">scheme No 11</option>
    <option value="55">scheme No 30</option>
    <option value="59">scheme No 31</option>
    <option value="66">scheme No 38</option>
    <option value="66">scheme No 43</option>
    <option value="66">scheme No 46</option>
    <option value="66">scheme No 47</option>
    <option value="59">scheme No 50</option>
    <option value="66">scheme No 51</option>
    <option value="66">scheme No 53</option>
    <option value="66">scheme No 54</option>
    <option value="66">scheme No 55</option>
    <option value="66">scheme No 59</option>
    <option value="66">scheme No 66</option>
    <option value="66">scheme No 71</option>
    <option value="66">scheme No 74</option>
    <option value="59">scheme No 77</option>
    <option value="66">scheme No 78</option>
    <option value="66">scheme No 91 </option>
    <option value="66">scheme No 94</option>
    <option value="66">scheme No 97</option>
    <option value="98">scheme No 98</option>
    <option value="99">scheme No 99</option>
    <option value="100">scheme No 100</option>
    <option value="101">scheme No 101</option>
    <option value="102">scheme No 102</option>
    <option value="103">scheme No 103</option>
    <option value="113">scheme No 113</option>
    <option value="114">scheme No 114</option>
    <option value="117">scheme No 117</option>
    <option value="121126">scheme No 121</option>
    <option value="121126">scheme No 126</option>
    <option value="133">scheme No 133</option>
    <option value="134">scheme No 134</option>
    <option value="135">scheme No 135</option>
    <option value="136">136 - GULMOHAR COMPLEX</option>
    <option value="136">136 - HARSINGAR COMPLEX CMR-5</option>
    <option value="136">136 - AMALTAS COMPLEX CMR-2-3</option>
    <option value="140">140 - ANANDWAN PHASE-1</option>
    <option value="140">140 - ANANDWAN PHASE-2</option>
</select>

                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Assembly</label>
                          <select name="assembly" id="assembly" class="form-control" name="assembly" required="required">
  
    <option value="Depalpur">Depalpur</option>
    <option value="Indore-1">Indore-1</option>
    <option value="Indore-2">Indore-2</option>
    <option value="Indore-3">Indore-3</option>
    <option value="Indore-4">Indore-4</option>
    <option value="Indore-5">Indore-5</option>
    <option value="Dr. Ambedkar Nagar-Mhow">Dr. Ambedkar Nagar-Mhow</option>
    <option value="Rau">Rau</option>
    <option value="Sanwer">Sanwer</option>
</select>

                        </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">City</label>
                        <input type="text" class="form-control" value="Indore" readonly="readonly" name="city">
                      </div>
                    </div>
                  </div>
      
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Zip Code</label>
                        <select name="zipcode" id="zipcode" class="form-control" name="zipcode">
    
    <option value="452001">452001</option>
    <option value="452002">452002</option>
    <option value="452003">452003</option>
    <option value="452004">452004</option>
    <option value="452005">452005</option>
    <option value="452006">452006</option>
    <option value="452007">452007</option>
    <option value="452008">452008</option>
    <option value="452009">452009</option>
    <option value="452010">452010</option>
    <option value="452011">452011</option>
    <option value="452012">452012</option>
    <option value="452013">452013</option>
    <option value="452014">452014</option>
    <option value="452015">452015</option>
    <option value="452016">452016</option>
    <option value="452017">452017</option>
    <option value="452018">452018</option>
    <option value="452019">452019</option>
    <option value="452020">452020</option>
    <option value="452021">452021</option>
    <option value="452022">452022</option>
    <option value="452023">452023</option>
    <option value="452024">452024</option>
    <option value="452025">452025</option>
    <option value="452026">452026</option>
    <option value="452027">452027</option>
    <option value="452028">452028</option>
    <option value="452029">452029</option>
    <option value="452030">452030</option>
    <option value="452031">452031</option>
    <option value="452032">452032</option>
    <option value="452033">452033</option>
    <option value="452034">452034</option>
    <option value="452035">452035</option>
    <option value="452036">452036</option>
    <option value="452037">452037</option>
    <option value="452038">452038</option>
    <option value="452039">452039</option>
    <option value="452040">452040</option>
    <option value="452041">452041</option>
    <option value="452042">452042</option>
    <option value="452043">452043</option>
    <option value="452044">452044</option>
    <option value="452045">452045</option>
    <option value="452046">452046</option>
    <option value="452047">452047</option>
    <option value="452048">452048</option>
    <option value="452049">452049</option>
    <option value="452050">452050</option>
    <option value="452051">452051</option>
    <option value="452052">452052</option>
    <option value="452053">452053</option>
    <option value="452054">452054</option>
    <option value="452055">452055</option>
    <option value="452056">452056</option>
    <option value="452057">452057</option>
    <option value="452058">452058</option>
    <option value="452059">452059</option>
    <option value="452060">452060</option>
    <option value="452061">452061</option>
    <option value="452062">452062</option>
    <option value="452063">452063</option>
    <option value="452064">452064</option>
    <option value="452065">452065</option>
    <option value="452066">452066</option>
    <option value="452067">452067</option>
    <option value="452068">452068</option>
    <option value="452069">452069</option>
    <option value="452070">452070</option>
    <option value="452071">452071</option>
    <option value="452072">452072</option>
    <option value="452073">452073</option>
    <option value="452074">452074</option>
    <option value="452075">452075</option>
    <option value="452076">452076</option>
    <option value="452077">452077</option>
    <option value="452078">452078</option>
    <option value="452079">452079</option>
    <option value="452080">452080</option>
    <option value="452081">452081</option>
    <option value="452082">452082</option>
    <option value="452083">452083</option>
    <option value="452084">452084</option>
    <option value="452085">452085</option>
    <option value="452086">452086</option>
    <option value="452087">452087</option>
    <option value="452088">452088</option>
    <option value="452089">452089</option>
    <option value="452090">452090</option>
    <option value="452091">452091</option>
    <option value="452092">452092</option>
    <option value="452093">452093</option>
    <option value="452094">452094</option>
    <option value="452095">452095</option>
    <option value="452096">452096</option>
    <option value="452097">452097</option>
    <option value="452098">452098</option>
    <option value="452099">452099</option>
</select>
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">State</label>
                          <input type="text" class="form-control" value="Madhya Pradesh" readonly="readonly" name="state">

                          </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Country</label>
                        <input type="text" class="form-control" value="India" readonly="readonly" name="country">
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              






              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Feature & Amenities</h3>


                    <div class="row">
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Parking Area</label>
                           <select class="form-select" name="park_area">
             
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Security</label>
                           <select class="form-select" name="security">
               
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                          </div>
                        </div>
    
                        <div class="col-lg-4">
                            <div class="mb-3">
                              <label class="form-label">Gas Connection</label>
                              <select class="form-select" name="gas_con">
               
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                            </div>
                          </div>
      
    
    
    
    
                        
                        </div>



                        
                        

                        





                        <div class="row">
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Water Connection</label>
                               <select class="form-select" name="water_con">
            
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                              </div>
                            </div>
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Number Of Lift's </label>
                                <input type="text" class="form-control" name="no_of_lift">
                              </div>
                            </div>
        
                            <div class="col-lg-4">
                                <div class="mb-3">
                                 <label class="form-label">Overlooking</label>
            <select class="form-select" name="overlooking">
      
                <option value="City">City</option>
                <option value="Mountain">Mountain</option>
                <option value="Lake">Lake</option>
                <option value="Garden">Garden</option>
                <option value="Sea">Sea</option>
                <option value="Sunset">Sunset</option>
                <!-- Add more options as needed -->
            </select>

                                </div>
                              </div>
          
        
        
        
        
                            
                            </div>










                            <div class="row">
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">Electricity Connection</label>
                                    <select class="form-select" name="elec">
           
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                                  </div>
                                </div>
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">Interior</label>
                                    <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="fur">
                                    <option data-select2-id="select2-data-3-ibs9"></option>
                                    <option value="Unfurnished">Unfurnished</option>
                                    <option value="Semifurnished">Semifurnished</option>
                                    <option value="Fully Furnished">Fully Furnished</option>
                                    </select>
                                  </div>
                                </div>
            
                                <div class="col-lg-4">
                                    <div class="mb-3">
                                      <label class="form-label">Internet Availablity</label>
              <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" name="fur">
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                
                <!-- Add more options as needed -->
            </select>
                                    </div>
                                  </div>
              
            
            
            
            
                                
                                </div>
                            
        





                    
                  
                </div>





                


              </div>



              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Owner Information</h3>

                        <div class="row">
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Name <span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" id="name" name="owner_name" required="required">
                                 <div id="nameError" class="invalid-feedback"></div>
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Phone number <span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" id="phone" name="owner_number" required="required">
                                <div id="phoneError" class="invalid-feedback"></div>
                              </div>
                            </div>
        
                            <div class="col-lg-3">
                                <div class="mb-3">
                                    <label class="form-label">Email <span style="color: red;"> *</span></label>
                                    <input type="email" class="form-control" id="email" name="owner_email" required="required">
                                    <div id="emailError" class="invalid-feedback"></div>
                                </div>
                              </div>

                              <div class="col-lg-3">
                                <div class="mb-3">
                                  <label class="form-label">Agent Name</label>
                                  <input type="text" class="form-control" value="<%=k1 %>" readonly="readonly" name="agent_name">
                                  <input type="hidden" class="form-control" value="<%=k %>" name="agent_id">
                                </div>
                              </div> 
                            </div>

        





                    
                  
                </div>





                


              </div>




              
            </div>




















            
            <!-- Right side -->
            <div class="col-lg-4">
              <!-- Status -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Status</h3>
                  <input class="form-control" type="text" value="Draft" name="status" readonly="readonly">
                </div>
              </div>
              <!-- Avatar -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Front Image</h3>
                  <input class="form-control" type="file" name="font_image">
                </div>


                <div class="card-body">
                    <h3 class="h6">Image 1</h3>
                    <input class="form-control" type="file" name="image_1">
                  </div>


                  <div class="card-body">
                    <h3 class="h6">Image 2</h3>
                    <input class="form-control" type="file" name="image_2">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 3</h3>
                    <input class="form-control" type="file" name="image_3">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 4</h3>
                    <input class="form-control" type="file" name="image_4">
                  </div>
              </div>

              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">video</h3>
                  <input class="form-control" type="file" name="video">
                </div>
              </div>
              <!-- Notes -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Notes</h3>
                  <textarea class="form-control" rows="3" name="notes"></textarea>
                </div>
              </div>
             <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">More Option</h3>
                  <ul class="list-group list-group-flush mx-n2">
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">Available For Rent</h6>
                        <small>Also Show Same Property For Rent</small>
                      </div>
                      <div class="form-check form-switch">
                         <select class="form-select" name="rent">
                <option value=""></option>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                      </div>
                    </li>
                    <!-- <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">Tips and tutorials</h6>
                        <small>Tips on getting more out of the platform.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch" checked="">
                      </div>
                    </li>
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">User Research</h6>
                        <small>Get involved in our beta testing program.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch">
                      </div>
                    </li> -->
                  </ul>
                </div>
              </div>
         
            </div>
          </div>
        </div>
       </form>
      
<script>

    function nameValidation() {
        var nameInput = document.getElementById("name");
        var nameError = document.getElementById("nameError");
    
        // Check if the name input is empty
        if (nameInput.value.trim() === "") {
            nameError.textContent = "Please enter your name.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else if (/^\d+$/.test(nameInput.value.trim())) {
            // Check if the name contains only numbers
            nameError.textContent = "Name should not contain numbers.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else if (!/^[a-zA-Z\s]+$/.test(nameInput.value.trim())) {
            // Check if the name contains any special characters
            nameError.textContent = "Name should not contain any other characters.";
            nameInput.classList.add("is-invalid");
            return false; // Prevent form submission
        } else {
            nameError.textContent = ""; // Clear the error message
            nameInput.classList.remove("is-invalid");
            return true; // Allow form submission
        }
 
    }
    document.getElementById("name").addEventListener("input", function() {
    nameValidation();
    
});
function phoneValidation(event) {
    var phoneInput = document.getElementById("phone");
    var phoneError = document.getElementById("phoneError");
    var key = event.keyCode || event.charCode;

    // Check if the entered key is a number and if the total length is less than 10
    if ((key >= 48 && key <= 57) && phoneInput.value.length < 10) {
        phoneError.textContent = ""; // Clear the error message
        phoneInput.classList.remove("is-invalid");
        return true;
    } else if (phoneInput.value.length >= 10) {
        // Prevent further input if length is already 10
        event.preventDefault();
        return false;
    } else {
        phoneError.textContent = "Please enter a valid phone number of 10 Numbers.";
        phoneInput.classList.add("is-invalid");
        event.preventDefault();
        return false;
    }
}

// Add event listener for keypress to restrict input and trigger validation
document.getElementById("phone").addEventListener("keypress", phoneValidation);

function emailValidation() {
    var emailInput = document.getElementById("email");
    var emailError = document.getElementById("emailError");

    
    // Check if the email input is empty
    if (emailInput.value.trim() === "") {
        emailError.textContent = "Please enter your email address.";
        emailInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (!isValidEmail(emailInput.value.trim())) {
        // Check if the email address is not valid
        emailError.textContent = "Please enter a valid email address.";
        emailInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        emailError.textContent = ""; // Clear the error message
        emailInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the email address is valid
function isValidEmail(email) {
    // Regular expression to validate email format
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
// Add event listener to trigger validation on input change
document.getElementById("email").addEventListener("input", function() {
    emailValidation();
});
function opensideValidation() {
    var opensideInput = document.getElementById("openside");
    var opensideError = document.getElementById("opensideError");

    // Check if the openside input is empty
    if (opensideInput.value.trim() === "") {
        opensideError.textContent = "Please enter the number of open sides.";
        opensideInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (!isValidNumber(opensideInput.value.trim())) {
        // Check if the input is not a valid number
        opensideError.textContent = "Please enter a valid number greater than 0.";
        opensideInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        opensideError.textContent = ""; // Clear the error message
        opensideInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the input is a valid number greater than 0
function isValidNumber(number) {
    return !isNaN(number) && Number(number) > 0;
}

// Add event listener to trigger validation on input change
document.getElementById("openside").addEventListener("input", function() {
    opensideValidation();
});
function constructionYearValidation() {
    var consYearInput = document.getElementById("cons_year");
    var consYearError = document.getElementById("consYearError");

    // Check if the construction month input is empty
    if (consYearInput.value.trim() === "") {
        consYearError.textContent = "Please select the construction month.";
        consYearInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else if (isCurrentOrFutureMonth(consYearInput.value.trim())) {
        // Check if the selected month is the current or a future month
        consYearError.textContent = "Please select a construction month earlier than the current one.";
        consYearInput.classList.add("is-invalid");
        return false; // Prevent form submission
    } else {
        consYearError.textContent = ""; // Clear the error message
        consYearInput.classList.remove("is-invalid");
        return true; // Allow form submission
    }
}

// Function to check if the selected month is the current or a future month
function isCurrentOrFutureMonth(yearMonth) {
    var currentDate = new Date();
    var selectedDate = new Date(yearMonth + "-01");

    // Check if the selected date is the current month or a future month
    if (
        (selectedDate.getFullYear() === currentDate.getFullYear() &&
            selectedDate.getMonth() === currentDate.getMonth()) ||
        selectedDate > currentDate
    ) {
        return true;
    }
    return false;
}

// Add event listener to trigger validation on input change
document.getElementById("cons_year").addEventListener("input", function() {
    constructionYearValidation();
});




</script> 
</body>
</html>
