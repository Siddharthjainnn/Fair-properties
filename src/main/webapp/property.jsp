<%@page import="dao.PropertyDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta charset="utf-8">


<title>Shop product list - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
    	body{margin-top:20px;
background:#f1f2f7;
}

/*panel*/
.panel {
    border: none;
    box-shadow: none;
}

.panel-heading {
    border-color:#eff2f7 ;
    font-size: 16px;
    font-weight: 300;
}

.panel-title {
    color: #2A3542;
    font-size: 14px;
    font-weight: 400;
    margin-bottom: 0;
    margin-top: 0;
    font-family: 'Open Sans', sans-serif;
}


/*product list*/

.prod-cat li a{
    border-bottom: 1px dashed #d9d9d9;
}

.prod-cat li a {
    color: #3b3b3b;
}

.prod-cat li ul {
    margin-left: 30px;
}

.prod-cat li ul li a{
    border-bottom:none;
}
.prod-cat li ul li a:hover,.prod-cat li ul li a:focus, .prod-cat li ul li.active a , .prod-cat li a:hover,.prod-cat li a:focus, .prod-cat li a.active{
    background: none;
    color: #ff7261;
}

.pro-lab{
    margin-right: 20px;
    font-weight: normal;
}

.pro-sort {
    padding-right: 20px;
    float: left;
}

.pro-page-list {
    margin: 5px 0 0 0;
}

.product-list img{
    width: 100%;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
}

.product-list .pro-img-box {
    position: relative;
}
.adtocart {
    background: #fc5959;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    color: #fff;
    display: inline-block;
    text-align: center;
    border: 3px solid #fff;
    left: 45%;
    bottom: -25px;
    position: absolute;
}

.adtocart i{
    color: #fff;
    font-size: 25px;
    line-height: 42px;
}

.pro-title {
    color: #5A5A5A;
    display: inline-block;
    margin-top: 20px;
    font-size: 16px;
}

.product-list .price {
    color:#fc5959 ;
    font-size: 15px;
}

.pro-img-details {
    margin-left: -15px;
}

.pro-img-details img {
    width: 100%;
}

.pro-d-title {
    font-size: 16px;
    margin-top: 0;
}

.product_meta {
    border-top: 1px solid #eee;
    border-bottom: 1px solid #eee;
    padding: 10px 0;
    margin: 15px 0;
}

.product_meta span {
    display: block;
    margin-bottom: 10px;
}
.product_meta a, .pro-price{
    color:#fc5959 ;
}

.pro-price, .amount-old {
    font-size: 18px;
    padding: 0 10px;
}

.amount-old {
    text-decoration: line-through;
}

.quantity {
    width: 120px;
}

.pro-img-list {
    margin: 10px 0 0 -15px;
    width: 100%;
    display: inline-block;
}

.pro-img-list a {
    float: left;
    margin-right: 10px;
    margin-bottom: 10px;
}

.pro-d-head {
    font-size: 18px;
    font-weight: 300;
}
    </style>
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />


<%@include file="header.jsp" %>
	
	<%ArrayList<PropertyDTO> list=(ArrayList<PropertyDTO>)request.getAttribute("LIST"); %>



<% if (list.isEmpty()){ %>


<div>
<img src="https://cdn.dribbble.com/users/1104860/screenshots/10519347/media/aa9e1cc2969d3706ae23b0f47f40d0d8.gif" style="height: 30cm;width: 100%;">
</div>
<%}else{ %>
<div class="col-md-3">
<section class="panel">
<div class="panel-body">
<input type="text" placeholder="Keyword Search" class="form-control" />
</div>
</section>
<section class="panel">
<header class="panel-heading">
Sub Category
</header>
<div class="panel-body">

<ul class="nav prod-cat">
<li>
<a href="search_by_sub_category?sub_category=Office Buildings" class="active"><i class="fa fa-angle-right"></i> Office Building</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Retail/Restaurant"><i class="fa fa-angle-right"></i> Retail / Restaurant</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Industrial"><i class="fa fa-angle-right"></i> Industrial</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Multifamily"><i class="fa fa-angle-right"></i> Multifamily</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Land"><i class="fa fa-angle-right"></i> Land</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Mixed-Use"><i class="fa fa-angle-right"></i> Mixed Use</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Hospitality"><i class="fa fa-angle-right"></i> Hospitality</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Healthcare"><i class="fa fa-angle-right"></i> HealthCare</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Leisure"><i class="fa fa-angle-right"></i> Leisure</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Single-Family Home"><i class="fa fa-angle-right"></i> Single-Family Home</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Condominium"><i class="fa fa-angle-right"></i> Condominium</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Townhouse"><i class="fa fa-angle-right"></i> Townhouse</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Duplex"><i class="fa fa-angle-right"></i> Duplex</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Triplex"><i class="fa fa-angle-right"></i> Triplex</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Fourplex"><i class="fa fa-angle-right"></i> Fourplex</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Apartment"><i class="fa fa-angle-right"></i> Apartment</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Co-op"><i class="fa fa-angle-right"></i> Co-op</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Bungalow"><i class="fa fa-angle-right"></i> Bungalow</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Cottage"><i class="fa fa-angle-right"></i> Cottage</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Modular Home"><i class="fa fa-angle-right"></i> Modular Home</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Mobile Home"><i class="fa fa-angle-right"></i> Mobile Home</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Farmhouse"><i class="fa fa-angle-right"></i> Farmhouse</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Mansion"><i class="fa fa-angle-right"></i> Mansion</a>
</li>
<li>
<a href="search_by_sub_category?sub_category=Studio Apartment"><i class="fa fa-angle-right"></i> Studio Apartment</a>
</li>
</ul>

</div>
</section>
<section class="panel">
<header class="panel-heading">
Price Range
</header>
<div class="panel-body sliders">
<div id="slider-range" class="slider"></div>
<div class="slider-info">
<span id="slider-range-amount"></span>
</div>
</div>
</section>
<section class="panel">
<header class="panel-heading">
Filter
</header>
<div class="panel-body">
<form action="search_category" method="post" >
<div class="form-group">
<label>Area</label>
<select class="form-control hasCustomSelect" name="location" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">

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
<span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Select Area </span></span>
</div>
<div class="form-group">
<label>Category</label>
<select class="form-control hasCustomSelect" name="service" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">

      <option value="commercial">Commercial</option>
      <option value="residential">Residential</option>
      <option value="Investment">Investment</option>
      <option value="Rent">Rent</option>
</select>
<span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Select Property Type</span></span>
</div>
<div class="form-group">
<label>Budget</label>
<select class="form-control hasCustomSelect" name="budget"s style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
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
<span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Budget</span></span>
</div>
<button class="btn btn-primary" type="submit">Filter</button>
</form>
</div>
</section>

</div>
<div class="col-md-9">
<section class="panel">
<div class="panel-body">
<div class="pull-right">

</div>
</div>
</section>


<%
		if (list != null) {
		%>
		








<% for (PropertyDTO mm : list) {
           %>
           
           
           
      
           
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
      <img src="data:image/jpeg;base64,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" class="d-block w-100" alt="...">
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
        <a href="more_about_property?property_id=<%=mm.getPropertyId()%>" style="text-decoration: none;color: black;">    
        <div>
            
            
            
        
            <%if((mm.getCategory()).equals("residential")){ %>
            <span><img src="./image/icons8-bed-50.png" alt=""> <%=mm.getBedrooms() %> Bedrooms |</span>
            <span><img src="./image/icons8-bath-50.png" alt=""> <%=mm.getBathrooms() %> Bathrooms |</span>
            <span><img src="./image/kitchen-set.png" alt="" style="height: 0.6cm;width: 0.6cm;">  <%=mm.getKitchen() %>Kitchen </span>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: red;font-weight: 1000"> Available For Sale </span>
            
            <br>
            <br>
            
            <h6 style="color: olive;" ><%=mm.getDirection() %> Direction  With <%=mm.getOverlooking() %> Facing Property</h6>
            <%}else{ %>
            <%if((mm.getRent()).equals("Yes")) {%>
             <h5 style="color: red;">Available For Sale &  Rent Both </h5>
             <%}else{ %>
              <h5 style="color: red;">Available For Sale </h5>
             <%} %>
            <h6 style="color: olive;" ><%=mm.getDirection() %> Direction  With <%=mm.getOverlooking() %> Facing Property</h6>
            <%} %>
            <div class="property-info" style="display: flex; flex-wrap: wrap; gap: 16px; background-color: #f9f9f9; border-radius: 8px; padding: 16px; margin-top: 16px;">
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/area.png" style="height: 0.9cm;width: 0.9;" alt=""></i> &nbsp;&nbsp;CARPET AREA<br> &nbsp;&nbsp; <%=mm.getCarpetArea() %> sqft</div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/stairs.png" style="height: 0.6cm;width: 0.6;" alt=""></i>&nbsp;&nbsp;FLOOR<br> &nbsp;&nbsp;Ground out of <%=mm.getFloors() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/icons8-bed-50.png" alt="" ></i>&nbsp;&nbsp;FURNISHING<br> &nbsp;&nbsp;<%=mm.getFur() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/park.png" alt="" style="height: 0.9cm;width: 0.9;"></i> &nbsp;&nbsp;Garden<br> &nbsp;&nbsp; <%=mm.getGarden() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/icons8-car-50.png" style="height: 0.6cm;width: 0.6;" alt="">&nbsp;&nbsp;</i>PARKING<br> &nbsp;&nbsp;<%=mm.getParking() %></div>
                <div style="display: flex; align-items: center; width: calc(50% - 16px);"><img src="./image/technology.png" alt="" style="height: 0.9cm;width: 0.9;"></i> &nbsp;&nbsp;OVERLOOKING<br> &nbsp;&nbsp; <%=mm.getOverlooking() %></div>
            </div>
            
            <p class="description" style="margin-top: 16px; font-size: 0.9em; color: #555;">
                <img src="./image/map.png" height="40cm" width="40cm"> This Property Is Available  in <%=mm.getArea() %> ,<%=mm.getCity() %>
                            </p>
        </div>
        </a>
    </div>
    <div class="card-actions" style="display: flex; justify-content: space-between; align-items: center; padding: 16px; border-top: 1px solid #eee; flex-direction: column;">
                <div class="price" style="font-size: 1.2em; font-weight: bold;"> <img src="./image/rupee-indian.png" style="height: 0.4cm;width: 0.4;" alt=""> <%=mm.getPrice() %> Lac<br><span style="font-size: 0.8em; color: #555;">Rs 8,333 sqft</span></div>
                
                
                
                
                
        <a href="view_agent?agent_id=<%=mm.getAgentId() %>&property_id=<%=mm.getPropertyId()%>" class="btn btn-danger" style="background-color: #e53935; color: white; border: none; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Contact Agent</a>
      
      
      
       <!--  <button class="secondary" style="background-color: transparent; color: #e53935; border: 1px solid #e53935; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Get Phone No.</button> -->
     <a class="btn btn-primary" href="customer_intersted?customer_id=<%=ak.getCustomerId()%>&customer_mail_id=<%=ak.getEmail()%>&proprty_id=<%=mm.getPropertyId()%>&property_name=<%=mm.getPropertyName()%>&customer_name=<%ak.getName();%>" style="background-color: transparent; color: #e53935; border: 1px solid #e53935; padding: 10px 16px; border-radius: 4px; cursor: pointer; font-size: 0.9em; margin-top: 8px;">Interested ? </a>
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






<% } %>




<% } else { %>
				
	
		
				<%} %>






<%} %>


<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
var myCarousel = document.querySelector('#myCarousel')
var carousel = new bootstrap.Carousel(myCarousel, {
  interval: 1000,
  wrap: false
})
</script>
</body>
</html>