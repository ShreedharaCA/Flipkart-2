<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Flipkart Header</title>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="assets/css/theme.css" rel="stylesheet">

<style type="text/css">
element.style {
	
}

.fk-font-12 {
	font-size: 12px;
	margin: 5px;
}

.link-list>li {
	border-right: 1px solid;
	border-color: #ADD3E8;
	display: table-cell;
	vertical-align: middle;
	padding-left: 10px;
	padding-right: 10px;
	vertical-align: middle;
	display: table-cell;
	vertical-align: middle;
}

a {
	color: #ADD3E6
}

a:HOVER {
	color: white;
}

.searchBarText {
	border: 0 none;
	outline: 0 none;
	height: 30px;
	width: 70%;
	font-size: 13px;
	font-family: arial, tahoma, verdana, sans-serif;
}

.searchButton {
	background-color: #fdd922;
	border: 1px solid #e0bc27;
	border-radius: 0 2px 2px 0;
	color: #565656;
	text-transform: uppercase;
	line-height: 17px;
	height: 30px;
	width: 100px;
	cursor: pointer;
	font-size: 13px;
	font-weight: bold;
	font-family: arial, tahoma, verdana, sans-serif;
	appearance: button;
	-moz-appearance: button;
	-webkit-appearance: button;
	cursor: pointer;
}

.cartbutton {
	margin-left: 20px;
	width: 100px;
	font-size: 13px;
	font-family: arial, tahoma, verdana, sans-serif;
}
</style>
</head>
<!-- 
				
 -->
<body>
	<div>
		<div class="navbar navbar-inverse navbar-fixed-top" id="mainHeaderDiv"
			style="background-color: #005387; padding-bottom: 15px; margin: 0">
			<div class="container" id="mainHeaderTopDiv">
				<div id="topHeaderContentDiv" class="container">
					<div class="navbar-header col-md-3">
						<a class="navbar-right" style="padding-top: 5%" href="loadProducts"><img
							src="assets/images/flip.png" /></a>
					</div>
					<div class="container col-md-8" id="search">
						<div class="container ">
							<ul class="fk-font-12 navbar-right link-list">
								<li><a href="aboutUs"> 24x7 Customer Care </a></li>
								<li><a href="trackOrder">Track Order</a></li>
								<li><a href="signup">SignUp</a></li>
								<li><a href="login">Login</a></li>
							</ul>
						</div>
						<div id="searchIconDiv" style="margin-top: 5px;">
							<div class="container col-md-8" style="background-color: white">
								<img src="assets/images/searchicon.jpg"
									style="width: 19px; height: 19px;" /> <input type="text"
									class="searchBarText" name="searchBar"
									placeholder="Search for a product, category or brand"
									autofocus="autofocus" />
							</div>
							<input class="searchButton" type="submit" value="Search" /> <input
								type="button" class="btn btn-sm btn-primary cartbutton"
								value="CART" />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-default navbar-static-top"
			style="background-color: #0a3151">
			<div class="container" style="width: 60%">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#"
						class="dropdown-toggle js-activated">ELECTRONICS <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="divider"></li>
							<li><a href="#">SubCategory 1</a></li>
							<li><a href="#">SubCategory 2</a></li>
							<li><a href="#">SubCategory 3</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"
						class="dropdown-toggle js-activated">MEN <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="divider"></li>
							<li><a href="#">SubCategory 1</a></li>
							<li><a href="#">SubCategory 2</a></li>
							<li><a href="#">SubCategory 3</a></li>
							
						</ul></li>
					<li class="dropdown"><a href="#"
						class="dropdown-toggle js-activated">WOMEN <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="divider"></li>
							<li><a href="#">SubCategory 1</a></li>
							<li><a href="#">SubCategory 2</a></li>
							<li><a href="#">SubCategory 3</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"
						class="dropdown-toggle js-activated">BABY & KIDS <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="divider"></li>
							<li><a href="#">SubCategory 1</a></li>
							<li><a href="#">SubCategory 2</a></li>
							<li><a href="#">SubCategory 3</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>


	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="assets/js/holder.js"></script>

	<script>
		// very simple to use!
		$(document).ready(function() {
			$('.js-activated').dropdownHover().dropdown();
			$('#sdrop').click(function(){
				$(elmr).o
			})
		});
	</script>
</body>
</html>

