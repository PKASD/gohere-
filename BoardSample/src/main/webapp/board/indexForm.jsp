<%@page import="vo.PageVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.ReviewBoardVO"%>
<%@page import="vo.BoardVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/view/color.jsp"%>

<%
List<ReviewBoardVO> articleList = (List<ReviewBoardVO>) request.getAttribute("articleList");
PageVO pageVO = (PageVO) request.getAttribute("pageVO");
int count = pageVO.getCount();
int number = pageVO.getNumber();
int currentPage = pageVO.getCurrentPage();
int startPage = pageVO.getStartPage();
int pageCount = pageVO.getPageCount();
int endPage = pageVO.getEndPage();
%>

<html>
<head>
<title>여기갈래?</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/trip.css">
<link rel="stylesheet" href="css/fonts/font.css">

<link rel="stylesheet" type="text/css" href="./css/slick/slick.css">
<link rel="stylesheet" type="text/css" href="./css/slick/slick-theme.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"
>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"
></script>
<!--<script src="https://kit.fontawesome.com/35c6497128.js" crossorigin="anonymous"></script>-->
<style type="text/css">
body {
	display: inline-block;
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	font-family: Happy;
	text-align: center;
}

.content {
	text-align: center;
	float: left;
	width: 60%;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: black;
}

.navbar-brand {
	font-family: jeju;
	font-size: 2rem;
}

.nav-item {
	font-size: large;
}

.sidenav {
	float: left;
	width: 20%;
}

.sec0, .secA, .sec1, .sec2, .sec3 {
	width: 100%;
}

.sec0 {
	height: 875px;
}

.secA {
	background-color: rgba(231, 248, 249, 0.718);
	padding-top: 100px;
	height: 200px;
	margin-top: -30px;
}

.sec1 {
	padding-top: 100px;
	height: 700px;
}

.sec2 {
	margin-top: -2%;
	height: 700px;
	padding-top: 120px;
	background-color: #ebebeb;
}

.sec3 {
	padding-top: 120px;
	height: 500px;
}

.sec_Title {
	text-align: center;
	margin-bottom: 50px;
	font-family: OMP;
}

.input_Btn {
	color: rgb(109, 109, 109);
	border: none;
	width: 100px;
	height: 50px;
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 5px;
	border-radius: 15px;
}

.side_title {
	font-size: large;
	font-weight: bold;
}

.review_List_Img {
	border-radius: 20px;
	width: 200px;
	height: 200px;
}

.review_List {
	text-align: left;
	margin-left: 18px;
	margin-top: 10px;
	line-height: 25px;
}

input[type=text] {
	margin-left: 30px;
	width: 300px;
	height: 50px;
	border-radius: 10px;
}

.sliding-u-l-r-l {
	display: inline-block;
	position: relative;
	font-size: 1.5rem;
}

.sliding-u-l-r-l:before {
	content: '';
	display: block;
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 0;
	transition: width 0s ease, background .5s ease;
}

.sliding-u-l-r-l:after {
	content: '';
	display: block;
	position: absolute;
	right: 0;
	bottom: 0;
	height: 3px;
	width: 0;
	background: #88B2AB;
	transition: width .5s ease;
}

.sliding-u-l-r-l:hover:before {
	width: 100%;
	background: #88B2AB;
	transition: width .5s ease;
}

.sliding-u-l-r-l:hover:after {
	width: 100%;
	background: transparent;
	transition: all 0s ease;
}

.tripbg1, .tripbg2, .tripbg3, .tripbg4 {
	height: 845px;
	position: relative;
}

.tripbg1 {
	background-image:
		url('https://img-kyowontour.kyowontour.com/hp/202211/20221116083102032rsgvfsaijljxxex.jpg');
}

.tripbg2 {
	background-image:
		url('https://img-kyowontour.kyowontour.com/hp/202211/20221116173214057kwdehherwvjqbwh.jpg');
}

.tripbg3 {
	background-image:
		url('https://img-kyowontour.kyowontour.com/hp/202211/20221117150439821trugbnutfqrjpqa.jpg');
}

.tripbg4 {
	background-image:
		url('https://img-kyowontour.kyowontour.com/hp/202212/20221201155509416vsulgwjjknlghgj.jpg');
}

.slide_Img {
	height: 300px;
	width: 100px;
	border-radius: 40px;
}

.slide_Img_Text_Content, .slide_Img_Text_Name1, .slide_Img_Text_Name2 {
	letter-spacing: 1px;
	position: absolute;
	color: white;
	font-weight: bold;
	text-align: left;
}

.slide_Img_Text_Content {
	top: 10%;
	left: 10%;
	font-size: 25px;
}

.slide_Img_Text_Name1 {
	top: 75%;
	left: 5%;
	font-size: 65px;
	font-family: Happy;
	letter-spacing: -6px;
	line-height: 1.1;
}

.slide_Img_Text_Name2 {
	top: 75%;
	left: 10%;
	font-size: 30px;
	font-family: Happy;
	font-style: italic;
}

.slider_1 {
	width: 100%;
	margin: 100px auto;
}

.slider {
	width: 90%;
	margin: 100px auto;
}

.slick-slide img {
	width: 400px;
	margin: 0px 20px;
}

.slider_1>.slick-arrow {
	position: absolute;
	top: 50%;
	border: 0;
	border-radius: 100%;
	padding: 0;
	height: 100px;
	width: 100px;
	display: block;
	color: transparent;
	font-size: 0;
	transform: translate(0, -50%);
	outline: 0;
	z-index: 1;
	/* cursor: pointer; */
}

.slider_1>.slick-prev {
	left: 20px;
}

.slider_1>.slick-next {
	right: 20px;
}

.slider_1>.slick-next:before {
	content: "\f054";
}

.slick-slide {
	transition: all ease-in-out .3s;
}

.board {
	display: inline-block;
	border-top: 3px solid rgb(117, 255, 220);
	width: 1000px;
}

.board_Content {
	margin-top: -10px;
	float: left;
	width: 50%;
}

.board_Header_Label {
	width: 70%;
	text-align: left;
	padding-left: 100px;
}

.board_Header_Plus {
	width: 30%;
	text-align: right;
	padding-right: 15px;
}

.board_Content_Label {
	display: flex;
	margin-left: -32px;
}

.board_Content_Label_Label {
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	text-align: left;
	padding-left: 30px;
	width: 75%;
}

.board_Content_Label_Writer {
	width: 25%;
}

.card-Text {
	display: block;
	overflow: hidden;
	white-space: normal;
	text-overflow: ellipsis;
}
</style>
</head>

<body>
	<!-- Header-->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="IndexForm.bo">여기갈래?</a>
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
	</header>


	<section class="sec2">
		<div class="col-sm-3 sidenav">
			<br>
		</div>
		<div class="col-sm-3 content">
			<div class="sec_Title">
				<h1>어디가고 싶은지 고민될 때? 클릭해봐 !</h1>
			</div>
			<div>
				<button type="button" class="navybtn" onclick="location.href='Random_Main.html'" style="border: 0;">
					<img src="Image/map.jpg" style="width: 500px; height: 350px;">
				</button>
				<div style="font-size: large;">
					<p></p>
					<p>전국 각지 여행지를 랜덤하게 추천해준다.</p>
					<p>당장 클릭해서 랜덤 여행지 소개받기</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3 sidenav">
			<br>
		</div>
	</section>

	<section class="sec1">
		<div class="col-sm-3 sidenav">
			<br>
		</div>

		<div class="col-sm-3 content">
			<div class="sec_Title">
				<h1>전국 각지 여행자들의 생생한 후기 !</h1>
			</div>

			<div style="display: flex;">
			<%
			for (int i = 0; i < 5; i++) { // 게시글 생성
				ReviewBoardVO article = (ReviewBoardVO) articleList.get(i);
			%>
				<div style="width: 18rem; float: left;">
					<img src="Image/여행지1.jpg" class="review_List_Img" alt="...">
					<div class="review_List">
						<p>
							<span><img src="Image/여행지<%=i+1%>.jpg" alt="..." style="border-radius: 100%; width: 25px; height: 25px;"><%=article.getWriter()%></span>
						</p>
						<div style="width: 200px; height: 50px;">
							<p class="card-Text" style="margin-top: -15px;"></p>
						</div>
						<i class="fa-regular fa-heart" style="color: gray;"></i>
						<span> 0</span> <i class="fa-regular fa-message" style="color: gray;"></i><span>
							3</span>
					</div>
				</div>
				<%
				}
				%>
				<div style="width: 18rem; float: left;">
					<img src="Image/여행지2.jpg" class="review_List_Img" alt="...">
					<div class="review_List">
						<p>
							<span><img src="Image/여행지2.jpg" alt="..." style="border-radius: 100%; width: 25px; height: 25px;"> </span>작성자
						</p>
						<div style="width: 200px; height: 50px;">
							<p class="card-Text" style="margin-top: -15px;">리뷰 게시판 제목</p>
						</div>
						<i class="fa-regular fa-heart" style="color: gray;"></i><span> 0</span> <i class="fa-regular fa-message" style="color: gray;"></i><span>
							3</span>
					</div>
				</div>
				<div style="width: 18rem; float: left;">
					<img src="Image/여행지3.jpg" class="review_List_Img" alt="...">
					<div class="review_List">
						<p>
							<span><img src="Image/여행지3.jpg" alt="..." style="border-radius: 100%; width: 25px; height: 25px;"> </span>작성자
						</p>
						<div style="width: 200px; height: 50px;">
							<p class="card-Text" style="margin-top: -15px;">리뷰 게시판 제목</p>
						</div>
						<i class="fa-regular fa-heart" style="color: gray;"></i><span> 0</span> <i class="fa-regular fa-message" style="color: gray;"></i></i><span>
							3</span>
					</div>
				</div>
				<div style="width: 18rem; float: left;">
					<img src="Image/여행지4.jpg" class="review_List_Img" alt="...">
					<div class="review_List">
						<p>
							<span><img src="Image/여행지4.jpg" alt="..." style="border-radius: 100%; width: 25px; height: 25px;"> </span>작성자
						</p>
						<div style="width: 200px; height: 50px;">
							<p class="card-Text" style="margin-top: -15px;">리뷰 게시판 제목</p>
						</div>
						<i class="fa-regular fa-heart" style="color: gray;"></i><span> 0</span> <i class="fa-regular fa-message" style="color: gray;"></i></i><span>
							3</span>
					</div>
				</div>
				<div style="width: 18rem; float: left;">
					<img src="Image/여행지4.jpg" class="review_List_Img" alt="...">
					<div class="review_List">
						<p>
							<span><img src="Image/여행지4.jpg" alt="..." style="border-radius: 100%; width: 25px; height: 25px;"> </span>작성자
						</p>
						<div style="width: 200px; height: 50px;">
							<p class="card-Text" style="margin-top: -15px;">리뷰 게시판 제목</p>
						</div>
						<i class="fa-regular fa-heart" style="color: gray;"></i><span> 0</span> <i class="fa-regular fa-message" style="color: gray;"></i></i><span>
							3</span>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="col-sm-3 sidenav">
			<br>
		</div>
	</section>

	<section class="sec2">
		<div class="sec_Title">
			<h1>설레는 곳, 그게 바로 여행이지 !</h1>
		</div>
		<div class="center slider">
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (1).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (2).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (3).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (4).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (5).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (6).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (7).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (8).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (9).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
			<div style="position: relative;">
				<a href="">
					<p class="slide_Img_Text_Content">여긴 여행지 설명</p> <img class="slide_Img" src="Image\S_img (10).jpg">
					<p class="slide_Img_Text_Name2">이름</p>
				</a>
			</div>
		</div>
	</section>

	<section class="sec3">
		<div class="col-sm-3 sidenav">
			<br>
		</div>

		<div class="col-sm-3 content">
			<div class="sec_Title">
				<h1>궁금한게 생겻을 땐 여기서 질문 !</h1>
			</div>
			<div class="board">
				<ul style="display: flex; border-bottom: 3px solid gray;">
					<li class="board_Header_Label"><span>질문 게시판</span></li>
					<li class="board_Header_Plus"><a href="QnAboard.html">더보기+</a></li>
				</ul>
				<div>
					<ul class="board_Content" style="border-right: dotted 1px;">
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다가나다라마바사나다라마바사가나다라마바사나다라마바사가나다라마바사나다라마바사라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
					</ul>
					<ul class="board_Content">
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
						<ui class="board_Content_Label">
						<li class="board_Content_Label_Label"><a href="">가나다라마바사나다라마바사</a></li>
						<li class="board_Content_Label_Reply"><span>[3]</span></li>
						<li class="board_Content_Label_Writer"><span>작성자</span></li>
						</li>
						</ui>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-sm-3 sidenav">
			<br>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script src="./css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(document)
				.on(
						'ready',
						function() {
							$('.single-item')
									.slick(
											{
												arrows : true,
												infinite : true, //무한 반복 옵션	
												prevArrow : '<button class="slick-prev"></button>',
												nextArrow : '<button class="slick-next"></button>',
												responsive : [ // 반응형 웹 구현 옵션

												{
													breakpoint : 960, //화면 사이즈 960px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 3
													}
												}, {
													breakpoint : 768, //화면 사이즈 768px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 2
													}
												} ]
											});

							$(".center")
									.slick(
											{
												infinite : true, //무한 반복 옵션	
												dots : true,
												centerMode : true,
												slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
												slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
												autoplay : true, // 자동 스크롤 사용 여부
												autoplaySpeed : 0, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
												speed : 5000,
												cssEase : 'linear',
												pauseOnHover : true, // 슬라이드 이동 시 마우스 호버하면 슬라이더 
												prevArrow : "<button type='button' class='slick-prev'></button>", // 이전 화살표 모양 설정
												nextArrow : "<button type='button' class='slick-next'></button>", // 다음 화살표 모양 설정
												dotsClass : "slick-dots", //아래 나오는 페이지네이션(점) css class 지정
												draggable : true, //드래그 가능 여부 
												variableWidth : true, //사진마다 width의 크기가 다른가? 
												pauseOnDotsHover : true, //네이게이션버튼 호버 시 슬라이드 멈춤

												responsive : [ // 반응형 웹 구현 옵션
												{
													breakpoint : 960, //화면 사이즈 960px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 3
													}
												}, {
													breakpoint : 768, //화면 사이즈 768px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 2
													}
												} ]

											});
						});
	</script>

</body>


<footer style="margin-top: 5%; background-color: gray; height: 100px; text-align: center; padding-top: 3%;">
	<h2>Team 어디가 2022 프로젝트 진행중..</h2>
</footer>

</html>
