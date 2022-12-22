<%@page import="vo.ReplyVO"%>
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
	width: 20px;
	height: auto;
}

.container-fluid {
	margin-bottom: 1%;
}

.logo {
	background-size: contain;
	border: 0;
	outline: 0;
	margin-left: 5px;
	margin-top: -2%;
	margin-bottom: 1%;
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
</style>
<script type="text/javascript">
	
</script>
</head>

<%
ReplyVO replyVO = (ReplyVO) request.getAttribute("replyVO");

int num = replyVO.getNum();
int ref = replyVO.getRef();
int re_step = replyVO.getRe_steb();
int re_level = replyVO.getRe_level();
%>

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
	<form method="post" name="writeform" action="qBoardWritePro.bo">
		<input type="hidden" name="num" value="<%=num%>"> 
		<input type="hidden" name="ref" value="<%=ref%>">
		 <input type="hidden" name="re_step" value="<%=re_step%>">
		 <input type="hidden" name="re_level" value="<%=re_level%>">

		<div style="width: 80%; margin: auto;">
			<div style="margin-top: 50px; text-align: center;">
				<h4 style="color: gray">질문게시판 글등록</h4>
			</div>

			<div class="form-group">
				<label>◎ 제목</label>
				<%
				if (num == 0) {
				%>
				<input type="text" class="form-control" name="subject" placeholder="제목을 입력하세요." required />
				<%
				} else {
				%>
				<input type="text" class="form-control" name="subject" placeholder="제목을 입력하세요." value="[답변]" required />
				<%
				}
				%>
			</div>
			<div class="form-group">
				<label>◎ 작성자</label> <input type="text" class="form-control" id = "writer" name="writer" placeholder="작성자" value="작성자" required />
			</div>

			<div class="form-group">
				<label>◎ 내용</label>
				<textarea class="form-control" id="content" rows="5" name="content" placeholder="내용을 입력하세요." required></textarea>
			</div>

			<br>

			<div style="margin-bottom: 50px; text-align: right">
				<button type="reset" class="btn btn-dark">다시 작성</button>
				<button type="button" class="btn btn-dark" OnClick="window.location='qBoardList.bo'">목록보기</button>
				<button type="submit" class="btn btn-dark">등록</button>
			</div>
		</div>
	</form>
</body>
</html>
