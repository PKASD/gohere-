<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>여기갈래?</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"
>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"
></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"
></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"
></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"
>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"
>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"
>
<link rel="stylesheet" href="css/fonts/font.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"
></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"
></script>

<style>
.tableLable {
	width: 100px;
}

.sideTitleMenu {
	font-size: 25px;
	color: rgb(112, 112, 112);
	font-weight: bold;
}

.sideMenu {
	font-size: 18px;
	text-decoration: none;
	color: inherit;
}

.textbox {
	width: 100%;
	height: 50px;
	/* float: left; */
	border: none;
}

.buttonCss {
	background-color: #DFE6F0;
	color: rgb(109, 109, 109);
	border: none;
	width: 143px;
	height: 45px;
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 5%;
	margin-top: 5%;
	float: left;
}

a:hover {
	color: inherit;
	text-decoration: none;
}
</style>
</head>


<body>
	<header class="bg-white py-5 ">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="indexForm.bo">여기갈래?</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" aria-current="page" href="tripForm.bo">여행지</a></li>
						<li class="nav-item"><a class="nav-link" href="fsvForm.bo">축제</a></li>
						<li class="nav-item"><a class="nav-link" href="rBoardList.bo">리뷰 게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="qBoardList.bo">질문 게시판</a></li>
					</ul>
				</div>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<a class="btn btn-outline-primary" id="loginBtn" href="loginForm.bo" role="button">로그인</a>
			</div>
		</nav>

		<section class="tripbg">
			<div class="container px-4 px-lg-5 my-5">
				<div class="text-center text-black-50">
					<h1 class="display-4 fw-bolder">여기 갈래?</h1>
					<p class="lead fw-normal text-black-50 mb-0">여행! 어디로 가야할지 모르겠을 땐??</p>
				</div>
			</div>
		</section>
	</header>
	<!-- left side -->
	<div class="col-sm-3 sidenav" style="width: 15%; float: left;">
		<p class="sideTitleMenu">계정 정보</p>
		<p>
			<a class="sideMenu" href="#">비밀번호 변경</a>
		</p>
		<p>
			<a class="sideMenu" href="#">휴대전화 변경</a>
		</p>
		<p>
			<a class="sideMenu" href="#">이메일 변경</a>
		</p>
		<br> <br>
		<p class="sideTitleMenu">게시글</p>
		<p>
			<a class="sideMenu" href="#">작성한 글</a>
		</p>
		<p>
			<a class="sideMenu" href="#">좋아요 표시한 게시글</a>
		</p>
		<p>
			<a class="sideMenu" href="#">최근 본 게시글</a>
		</p>
	</div>
	<!-- main -->
	<div style="float: left; width: 83%;">
		<h1>계정 정보</h1>

		<table>
			<tr>
				<td><label class="tableLable">아이디</label></td>
				<td><input type="text" class="textbox" placeholder="여기에 사용자 아이디 불러오기"></td>
			</tr>
			<div style="clear: both;"></div>
			<tr>
				<td>비밀번호</td>
				<td class="textbox"><strong>*******</strong></td>
				<td><button type="button" class="buttonCss">비밀번호 변경</button></td>
			</tr>
			<div style="clear: both;"></div>
			<tr>
				<td>휴대전화</td>
				<td><input type="text" class="textbox" placeholder="여긴 폰 번호"></td>
				<td><button type="button" class="buttonCss">휴대전화 변경</button></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" class="textbox" placeholder="여긴 이멜"></td>
				<td><button type="button" class="buttonCss">이메일 변경</button></td>
			</tr>
		</table>
	</div>
	<!-- Footer-->
</body>
</html>