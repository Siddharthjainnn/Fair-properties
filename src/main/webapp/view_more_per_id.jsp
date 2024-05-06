<%@page import="dao.PropertyDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>real estate view property - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
    	.estate .primary-image {
  border: 1px solid #e0eded;
  padding: 5px;
}

.estate .thumbnail-images {
  display: table;
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 25px;
}

.estate .thumbnail-images a {
  display: table-cell;
  width: 100px;
  padding: 5px;
  border: 1px solid #e0eded;
  border-top: 0;
}

.estate .thumbnail-images a img {
  width: 100%;
}

.estate .product-info h3 {
  font-weight: 500;
  font-size: 18px;
}

.product-info h3 {
  margin-bottom: 10px;
}

.wp-block.property.list {
  border: 1px solid #e0eded;
}

.wp-block {
  margin: 0 0 15px 0;
  -webkit-transition: all .3s linear;
  transition: all .3s linear;
  position: relative;
  cursor: default;
  border-radius: 2px;
}

.no-border {
  border: 0 !important;
}

.wp-block.property.list .wp-block-content .content-title {
  font-size: 20px;
  color: #3498db;
  margin-bottom: 5px;
}

.wp-block.property.list .wp-block-content .description {
  padding-bottom: 10px;
  border-bottom: 1px solid #e0eded;
}

.mb-15 {
  margin-bottom: 15px;
}

.wp-block.property.list .wp-block-content .price {
  font-size: 22px;
  color: #9cd70e;
  font-weight: 600;
}

.wp-block.property.list .wp-block-content .period {
  margin-left: 5px;
  color: #999;
}

.wp-block.property.list .wp-block-content .capacity {
  font-size: 16px;
  color: #999;
}

.mt-15 {
  margin-top: 15px;
}

.wp-block.property.list .wp-block-footer.style2 ul.aux-info {
  display: table;
  width: 100%;
  border: 1px solid #e0eded;
}

.wp-block.property.list .wp-block-footer ul.aux-info {
  width: 100%;
  margin: 0;
  padding: 0;
  display: block;
  background: #fcfcfc;
  border-top: 1px solid #e0eded;
}

.wp-block.property.list .wp-block-footer.style2 ul.aux-info li {
  padding: 10px 10px;
  font-size: 11px;
  text-align: center;
}

.wp-block.property.list .wp-block-footer ul.aux-info li {
  display: table-cell;
  padding: 10px 15px;
  vertical-align: middle;
  border-right: 1px solid #e0eded;
}

.wp-block.property.list .wp-block-footer.style2 ul.aux-info li i {
  display: block;
}

.wp-block.property.list .wp-block-footer ul.aux-info li i {
  font-size: 18px;
  margin-right: 8px;
  color: #333;
}

.rating span.star {
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  float: left;
  padding: 0 1px;
  cursor: pointer;
}

/* p {
  line-height: 22px;
  margin-bottom: 10px;
}
 */
ol, ul {
  list-style: none;
}

.tabs-framed {
  border: 1px solid #e0eded;
}

.tabs li a {
  display: block;
  font-size: 16px;
  font-weight: 600;
  color: #333;
  padding: 12px 25px;
  margin: 0 -1px;
  border-bottom: 3px solid transparent;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.boxed {
  background: #fff;
  border: 1px solid #e0eded;
  position: relative;
}

.tabs {
  border-bottom: 1px solid #e0eded;
}

.tabs li {
  float: left;
  border-right: 1px solid #e0eded;
  margin-bottom: -1px;
}

.tab-body {
  padding: 15px;
}                
    </style>
   
</head>

<body>
<%@include file="header.jsp" %> 

<%PropertyDTO list=(PropertyDTO)request.getAttribute("LIST"); %>
<h1><%=list.getPropertyId()%></h1>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="estate">
<div class="container-fluid" style="margin-left: 2.5cm;margin-right: 2.5cm;">
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-md-7">
<div class="product-gallery">
<div class="primary-image">
<a href="#" class="theater" rel="group" hidefocus="true">
<img src="https://www.bootdey.com/image/700x300/FF69B4/000000" class="img-responsive" alt>
</a>
</div>
<div class="thumbnail-images">
<a href="#" class="theater" rel="group" hidefocus="true">
<img src="https://www.bootdey.com/image/500x300/20B2AA/000000" alt>
</a>
<a href="#" class="theater" rel="group" hidefocus="true">
<img src="https://www.bootdey.com/image/500x300/FFA07A/000000" alt>
</a>
<a href="#" class="theater" rel="group" hidefocus="true">
<img src="https://www.bootdey.com/image/500x300/7B68EE/000000" alt>
</a>
<a href="#" class="theater" rel="group" hidefocus="true">
<img src="https://www.bootdey.com/image/500x300/C71585/000000" alt>
</a>
</div>
</div>
</div>
<div class="col-md-5">
<div class="product-info">
<h3>3015 Grand Avenue, CocoWalk</h3>
<div class="wp-block property list no-border">
<div class="wp-block-content clearfix">
<small>10 days only</small>
<h4 class="content-title">Special Offer</h4>
<p class="description mb-15" style=" line-height: 22px;
  margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam. Donec id elit non mi porta gravida at eget metus. Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut.</p>
<span class="pull-left">
<span class="price">$230</span>
<span class="period">per month</span>
</span>
<span class="pull-right">
<span class="capacity">
<i class="fa fa-user"></i>
<i class="fa fa-user"></i>
</span>
</span>
</div>
<div class="wp-block-footer style2 mt-15">
<ul class="aux-info">
<li><i class="fa fa-building"></i>2300 Sq Feet</li>
<li><i class="fa fa-user"></i> 5 Bedrooms</li>
<li><i class="fa fa-tint"></i> 2 Bathrooms</li>
<li><i class="fa fa-car"></i> 3 Garages</li>
</ul>
</div>
</div>
<span class="clearfix"></span>
<p style=" line-height: 22px;
  margin-bottom: 10px;">
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
</p>
</div>
</div>
</div>

<div class="row">
<div class="col-md-12">
<div class="tabs-framed boxed">
<ul class="tabs clearfix">
<li class="active"><a href="#tab-1" data-toggle="tab">Additional details</a></li>
<li><a href="#tab-map" data-toggle="tab" data-type="gmap">Map</a></li>
</ul>
<div class="tab-content">
<div class="tab-pane fade in active" id="tab-1">
<div class="tab-body">
<div class="section-title-wr">
<h3 class="section-title left">Property description</h3>
</div>
<p style=" line-height: 22px;
  margin-bottom: 10px;">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
<br><br>
Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.
</p>
<div class="section-title-wr">
<h3 class="section-title left">Additional details</h3>
</div>
<table class="table table-bordered table-striped table-hover table-responsive">
<tbody>
<tr>
<td><strong>Property Size:</strong> 2300 Sq Ft</td>
<td><strong>Lot size:</strong> 5000 Sq Ft</td>
<td><strong>Price:</strong> $23000</td>
</tr>
<tr>
<td><strong>Rooms:</strong> 5</td>
<td><strong>Bedrooms:</strong> 4</td>
<td><strong>Bathrooms:</strong> 2</td>
</tr>
<tr>
<td><strong>Garages:</strong> 2</td>
<td><strong>Roofing:</strong> New</td>
<td><strong>Structure Type:</strong> Bricks</td>
</tr>
<tr>
<td><strong>Year built:</strong> 1991</td>
<td><strong>Available from:</strong> 1 August 2014</td>
<td></td>
</tr>
</tbody>
</table>
<div class="section-title-wr">
<h3 class="section-title left">Location details</h3>
</div>
<table class="table table-bordered table-striped table-hover table-responsive">
<tbody>
<tr>
<td><strong><strong>Property Size:</strong> 2300 Sq Ft</strong></td>
<td><strong>Lot size:</strong> 5000 Sq Ft</td>
<td><strong>Price:</strong> $23000</td>
</tr>
<tr>
<td><strong>Rooms:</strong> 5</td>
<td><strong>Bedrooms:</strong> 4</td>
<td><strong>Bathrooms:</strong> 2</td>
</tr>
<tr>
<td><strong>Garages:</strong> 2</td>
<td><strong>Roofing:</strong> New</td>
<td><strong>Structure Type:</strong> Bricks</td>
</tr>
<tr>
<td><strong>Year built:</strong> 1991</td>
<td><strong>Available from:</strong> 1 August 2014</td>
<td></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="tab-pane fade" id="tab-map">
<div class="tab-body">
<div id="mapCanvas" class="map-canvas no-margin" style="position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);"><div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -257px; top: -133px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -1px; top: -133px;"></div></div></div></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -257px; top: -133px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -1px; top: -133px;"></div></div></div><div style="width: 22px; height: 40px; overflow: hidden; position: absolute; left: -11px; top: -40px; z-index: 0; -webkit-animation-duration: 500ms; -webkit-animation-iteration-count: 1; -webkit-animation-name: _gm3451;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 22px; height: 40px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div style="position: absolute; z-index: 0; transform: translateZ(0px); left: 0px; top: 0px;"><div style="overflow: hidden;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -257px; top: -133px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2344!3i1482!2m3!1e0!2sm!3i299000000!3m9!2ses-ES!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -1px; top: -133px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2345!3i1482!2m3!1e0!2sm!3i299000000!3m9!2ses-ES!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"><div class="gmnoprint" style="width: 22px; height: 40px; overflow: hidden; position: absolute; opacity: 0.01; left: -11px; top: -40px; z-index: 0;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi.png" draggable="false" usemap="#gmimap0" style="position: absolute; left: 0px; top: 0px; width: 22px; height: 40px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"><map name="gmimap0" id="gmimap0"><area href="javascript:void(0)" log="miw" coords="8,0,5,1,4,2,3,3,2,4,2,5,1,6,1,7,0,8,0,14,1,15,1,16,2,17,2,18,3,19,3,20,4,21,5,22,5,23,6,24,7,25,7,27,8,28,8,29,9,30,9,33,10,34,10,40,11,40,11,34,12,33,12,30,13,29,13,28,14,27,14,25,15,24,16,23,16,22,17,21,18,20,18,19,19,18,19,17,20,16,20,15,21,14,21,8,20,7,20,6,19,5,19,4,18,3,17,2,16,1,14,1,13,0,8,0" shape="poly" title="Hello World!" style="cursor: pointer;"></map></div></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a target="_blank" href="https://maps.google.com/maps?ll=44.4325,26.1039&amp;z=12&amp;t=m&amp;hl=es-ES&amp;gl=US&amp;mapclient=apiv3" title="Haz clic aquí para visualizar esta zona en Google Maps" style="position: static; overflow: visible; float: none; display: inline;"><div style="width: 62px; height: 26px; cursor: pointer;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/google_white2.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 62px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></a></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 0px; bottom: 0px; width: 12px;"><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Datos de mapas</a><span style="display: none;"></span></div></div></div><div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 0px; height: 0px; position: absolute; left: 5px; top: 5px; background-color: white;"><div style="padding: 0px 0px 10px; font-size: 16px;">Datos de mapas</div><div style="font-size: 13px;"></div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);"></div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; position: absolute; -webkit-user-select: none; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a href="https://www.google.com/intl/es-ES_US/help/terms_maps.html" target="_blank" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Términos de uso</a></div></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; display: none; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a target="_new" title="Informar a Google acerca de errores en las imágenes o en el mapa de carreteras" href="https://www.google.com/maps/@44.4325,26.1039,12z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Informar de un error de Maps</a></div></div><div class="gmnoprint" draggable="false" controlwidth="32" controlheight="84" style="margin: 5px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;"><div controlwidth="32" controlheight="40" style="cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; position: absolute; left: 0px; top: 0px;"><div aria-label="Control del hombrecito naranja de Street View" style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -9px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div aria-label="Se ha inhabilitado el hombrecito naranja." style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -107px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div aria-label="El hombrecito naranja está en la parte superior del mapa." style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -58px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div aria-label="Control del hombrecito naranja de Street View" style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -205px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoprint" controlwidth="0" controlheight="0" style="opacity: 0.6; display: none; position: absolute;"><div title="Girar el mapa 90 grados" style="width: 22px; height: 22px; overflow: hidden; position: absolute; cursor: pointer;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -38px; top: -360px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoprint" controlwidth="20" controlheight="39" style="position: absolute; left: 6px; top: 45px;"><div style="width: 20px; height: 39px; overflow: hidden; position: absolute;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -39px; top: -401px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div title="Acerca la imagen" style="position: absolute; left: 0px; top: 2px; width: 20px; height: 17px; cursor: pointer;"></div><div title="Aleja la imagen" style="position: absolute; left: 0px; top: 19px; width: 20px; height: 17px; cursor: pointer;"></div></div></div><div class="gmnoprint gm-style-mtc" style="margin: 5px; z-index: 0; position: absolute; cursor: pointer; text-align: left; width: 85px; right: 0px; top: 0px;"><div draggable="false" title="Cambiar estilo de mapa" style="direction: ltr; overflow: hidden; text-align: left; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 1px 6px; border-radius: 2px; -webkit-background-clip: padding-box; border: 1px solid rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; font-weight: 500; background-color: rgb(255, 255, 255); background-clip: padding-box;">Mapa<img src="https://maps.gstatic.com/mapfiles/arrow-down.png" draggable="false" style="-webkit-user-select: none; border: 0px; padding: 0px; margin: -2px 0px 0px; position: absolute; right: 6px; top: 50%; width: 7px; height: 4px;"></div><div style="z-index: -1; padding-top: 2px; -webkit-background-clip: padding-box; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); border-left-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: relative; text-align: left; display: none; background-color: white; background-clip: padding-box;"><div draggable="false" title="Muestra el callejero" style="color: black; font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px; font-weight: 500; background-color: rgb(255, 255, 255);">Mapa</div><div draggable="false" title="Muestra las imágenes de satélite" style="color: black; font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px; background-color: rgb(255, 255, 255);">Satélite</div><div style="margin: 1px 0px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(235, 235, 235);"></div><div draggable="false" title="Muestra el callejero con relieve" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Relieve</label></div><div style="margin: 1px 0px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(235, 235, 235); display: none;"></div><div draggable="false" title="Acerca la imagen para mostrar la vista de 45 grados." style="color: rgb(184, 184, 184); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; display: none; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(241, 241, 241); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">45°</label></div><div draggable="false" title="Muestra las imágenes con los nombres de las calles" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; display: none; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Etiquetas</label></div></div></div></div></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
	                    
                
</script>
</body>
</html>