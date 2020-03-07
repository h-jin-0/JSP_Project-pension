<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<title>Pension - HTML Template by WowThemes.net</title>
<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!-- Styles -->
<link rel="stylesheet" href="/pension/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/pension/assets/font-awesome-4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/pension/assets/css/animate.min.css">
<link rel="stylesheet" href="/pension/assets/css/animations.css">
<link rel="stylesheet" href="/pension/css/style.css">
<!--  Js -->
<script src="/pension/assets/js/modernizr.custom.js"></script>
<script src="/pension/assets/js/jquery-2.1.3.min.js"></script>
</head>
<body>
	<!-- NAVIGATION -->
	<nav>
		<!-- logo -->
		<div class="logo-box">
			<a href="/pension" class="logo logo-img"> <img
				src="/pension/assets/img/logo.png" alt="logo">
			</a>
		</div>
		<!-- mobile -->
		<button type="button" aria-label="Toggle Navigation"
			class="menu-button-mobile lines-button x2">
			<span class="lines"></span>
		</button>
		<!-- Menu -->
		<div class="menu-box my-scrollbar">
			<div id="dl-menu" class="dl-menuwrapper">
				<ul class="dl-menu dl-menuopen">
					<li><a href="/pension">home</a></li>
					<li><a href="/pension/room?cmd=about">about</a></li>
					<li><a href="/pension/room?cmd=roomList">rooms</a></li>
					<li><a href="/pension/reserve?cmd=reserve">contact</a></li>

					<c:choose>
						<c:when test="${not empty sessionScope.user}">
							<li><a href="/pension/user?cmd=logout">logout</a></li>
							<c:if test="${sessionScope.user.userName eq 'admin'}">
								<li class="submenu"><a href="#">management</a>
									<ul class="sub-menu">
										<li><a href="/pension/user?cmd=userMgt">user</a></li>
										<li><a href="/pension/room?cmd=roomMgt">room</a></li>
										<li><a href="/pension/reserve?cmd=reserveMgt">reservation</a></li>
									</ul></li>
							</c:if>
						</c:when>
						<c:otherwise>

							<li><a href="/pension/user?cmd=join">join</a></li>
							<li><a href="/pension/user?cmd=login">login</a></li>

						</c:otherwise>
					</c:choose>

				</ul>
			</div>
		</div>
	</nav>
	<!-- End Menu -->


	<!-- end: NAVIGATION -->