<%@page import="vo.BoardVO"%>
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ include file="/view/color.jsp"%>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>여기갈래?</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
    integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
    integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
    integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="css/fonts/font.css">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>

  <style>
    .navbar {
      margin-bottom: -5%;
    }

    .d-flex {
      margin: 5px;
    }

    .tripbg {
      background-image: url(Image/trip1.png);
      background-size: contain;
      background-repeat: no-repeat;
      background-position: 0% 0%;
      background-size: 100% 100%;
      padding: 5%;
      margin-top: auto;
    }

    .img-fluid {
      width: 40px;
      height: 40px;
    }

    .container-fluid {
      margin-bottom: 1%;
    }

    .logo {
      margin-left: 5px;
      margin-top: -2%;
      margin-bottom: 1%;
      background-color: white;
    }

    .navbar-brand {
      font-family: jeju;
    }

    body {
      margin: 0;
      padding: 0;
      height: 100%;
      font: 20px;
      line-height: 1.8;
      font-family: OMP;
    }

    button {
      background-color: rgb(255, 255, 255);
      border: 0;
      outline: 0;
      border-radius: 20%;
    }

    .space {
      margin-left: 15%;
      margin-right: 15%;
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

  <!-- Section-->

  <ul id="nav2" class="nav justify-content-center bg-light">
    <li class="nav-item logo">
      <button type="button"><img src="Image/All.png" class="img-fluid" /><a class="nav-link active"
          href="#">전국</a></button>
    </li>
    <li class="nav-item logo">
      <button type="button"><img src="Image/seoul.png" class="img-fluid" /><a class="nav-link active"
          href="#">서울/경기</a></button>
    </li>

    <li class="nav-item logo">
      <button type="button"><img src="Image/gw.png" class="img-fluid" /><a class="nav-link active"
          href="#">강원</a></button>
    </li>
    <li class="nav-item logo">
      <button type="button"><img src="Image/gs.png" class="img-fluid" /><a class="nav-link active"
          href="#">경남</a></button>
    </li>

    <li class="nav-item logo">
      <button type="button"><img src="Image/ch.png" class="img-fluid" /><a class="nav-link active"
          href="#">충남</a></button>
    </li>

    <li class="nav-item logo">
      <button type="button"><img src="Image/jr.png" class="img-fluid" /><a class="nav-link active"
          href="#">전남</a></button>
    </li>

    <li class="nav-item logo">
      <button type="button"><img src="Image/jj.png" class="img-fluid" /><a class="nav-link active"
          href="#">제주</a></button>
    </li>
  </ul>


  <ul id="nav2" class="nav justify-content-center bg-light">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
        사용자 선택
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">좋아요 순</a>
        <a class="dropdown-item" href="#">조회수 순</a>
      </div>
    </li>
  </ul>

  <div class="space">
    <div class="card-columns text-center">
      <div class="card">
        <a href="tripgroup/everland.html">
          <img src="Image/everland.jpg" class="card-img-top btn" alt="...">
        </a>
        <div class="card-body">
          <h5 class="card-title">에버랜드</h5>
          <p class="card-text">경기 용인시 처인구 포곡읍 에버랜드로 199</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>

      </div>
      <div class="card">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>
  </div>
</body>
<!-- Footer-->

<footer style="margin-top: 5%; background-color: gray; height: 100px; text-align: center; padding-top: 3%;">
  <h2>Team 어디가 2022 프로젝트 진행중..</h2>
</footer>


</html>