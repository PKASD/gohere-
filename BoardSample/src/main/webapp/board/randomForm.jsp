<%@page import="vo.ReplyVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>여기갈래?</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/fonts/font.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"
>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"
></script>
<style>
body {
	margin: 0;
	padding: 0;
	height: 100%;
	font: 20px;
	line-height: 1.8;
	font-family: OMP;
}

.navbar-brand {
	font-family: jeju;
}

h4 {
	font-weight: bold;
}

#loginBtn {
	margin-left: 8px;
	margin-top:-17px;
}

.btn-outline-info {
	margin-left: 10px;
	border-radius: 15px;
	font-weight: 600;
	transition: 0.25s;
}

.btn-outline-info:hover {
	color: white;
}

.AreaBtn {
	height: auto;
	text-align: center;
	padding-top: -50px;
}

.col-sm-3 {
	margin: 0;
	padding: 0;
	height: 800px;
	text-align: center;
	position: relative;
	overflow: hidden;
	margin-top: 10px;
}

.ran_Img_1, .ran_Img_2, .ran_Img_3, .ran_Img_4 {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.img_name {
	letter-spacing: 3px;
	font-size: 30px;
	position: absolute;
	color: white;
	text-shadow: 2px 2px 2px gray;
	top: 80%;
	left: 50%;
	transform: translate(-50%, -50%);
}

img:hover {
	transform: scale(1.2);
	transition: transform.5s;
}

a.button {
	display: block;
	position: relative;
	padding: auto;
	margin: auto;
	font-weight: 600;
	text-align: center;
	line-height: 50px;
	color: #FFF;
	border-radius: 5px;
	transition: all 0.2s;
}

.btnLightBlue.btnFloat:before {
	background: #5DC8CD;
}

.btnFloat {
	background: none;
	box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0.5);
}

.btnFloat:before {
	content: 'Change';
	display: block;
	position: absolute;
	margin-top: -5%;
	margin-left: 46%;
	color: #FFF;
	width: 150px;
	height: 50px;
	font-weight: 600;
	font-size: 25px;
	border-radius: 5px;
	transition: all 0.2s;
}

.btnFloat:hover:before {
	margin-top: -5%;
	margin-left: 46%;
	transform: scale(1.1, 1.1);
	-ms-transform: scale(1.1, 1.1);
	-webkit-transform: scale(1.1, 1.1);
	box-shadow: 0px 5px 5px -2px rgba(0, 0, 0, 0.25);
}
</style>
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="Index.html">여기갈래?</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" aria-current="page" href="trip.html">여행지</a></li>
						<li class="nav-item"><a class="nav-link" href="fsv.html">축제</a></li>
						<li class="nav-item"><a class="nav-link" href="reviewboard.html">리뷰 게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="QnAboard.html">질문 게시판</a></li>
					</ul>
				</div>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<a class="btn btn-outline-primary" id="loginBtn" href="loginForm.bo" role="button">로그인</a>
			</div>
		</nav>

		<div class="AreaBtn btn-group-lg">
			<button type="button" class="btn btn-outline-info">전 체</button>
			<button type="button" class="btn btn-outline-info">서 울</button>
			<button type="button" class="btn btn-outline-info">경 기</button>
			<button type="button" class="btn btn-outline-info">강 원</button>
			<button type="button" class="btn btn-outline-info">경 상</button>
			<button type="button" class="btn btn-outline-info">전 라</button>
			<button type="button" class="btn btn-outline-info">충 청</button>
			<button type="button" class="btn btn-outline-info">제 주</button>
		</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<%
			for (int i = 0; i < 4; i++) {
			%>
			<div class="col-sm-3">
				<a href=""> <img class="ran_Img_<%=i+1%>" src="Image/여행지<%=i+1%>.jpg" alt="..">
					<h4 class="img_name">여행지 이름<%=i+1%></h4>
				</a>
			</div>
			<%
			}
			%>
			<div class="container btn_Area" style="display: block;">
				<a href="" title="Button border blue/green" class="button btnFloat btnLightBlue"></a>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
			integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"
		></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
			integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"
		></script>
</body>

</html>