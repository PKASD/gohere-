<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

table {
	border-collapse: separate;
	border-spacing: 0 10px;
}

th {
	padding-right: 15px;
	text-align: center;
	vertical-align: middle;
}

td {
	padding-right: 15px;
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
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-left">
				<h3>
					<b>계정 설정</b>
				</h3>
				<form>
					<table>
						<tr style="margin: 10px;">
							<th>아이디</th>
							<td><input size="45" value="id" disabled /></td>
						</tr>
						<tr style="margin: 10px;">
							<th>현재 비밀번호</th>
							<td><input size="45" value="" placeholder="사용중인 비밀번호를 입력해 주세요" /></td>
						</tr>
						<tr style="margin: 10px;">
							<th>신규 비밀번호</th>
							<td><input size="45" value="" placeholder="6~20자 사이의 영문자, 숫자, 특수문자를 사용하여 입력해 주세요." /> <!-- validation 들어가야하는 부분 --></td>
						</tr>
						<tr style="margin: 10px;">
							<th>비밀번호 확인</th>
							<td><input size="45" value="" /> <!-- validation 들어가야하는 부분 --> <!-- 비밀번호 일치여부 확인 --></td>
						</tr>
						<tr style="margin: 10px;">
							<th></th>
							<td style="text-align: center;">
								<button type="button" class="btn btn-primary btn-sm">취소</button>
								<button type="button" class="btn btn-secondary btn-sm">완료</button> <!-- form 에서 작성한 내용들 validation 통과 시, 완료버튼 활성화 -->
							</td>
						</tr>
					</table>
				</form>
				<hr>
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
	</div>
</body>
</html>