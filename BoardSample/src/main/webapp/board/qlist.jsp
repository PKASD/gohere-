<%@page import="vo.PageVO"%>
<%@page import="vo.BoardVO"%>
<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="/view/color.jsp"%>


<%!SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>

<%
List<BoardVO> articleList = (List<BoardVO>) request.getAttribute("articleList");
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
</head>

<body>
	<center>
		<header class="bg-white py-5 ">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="indexForm.bo">여기갈래?</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation"
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

		<b>글목록(전체 글:<%=count%>)
		</b>
		<table width="1000">
			<tr>
				<td align="right"><a href="qBoardWriteForm.bo">글쓰기</a></td>
		</table>

		<%
		if (count == 0) {
		%>
		<table width="1000" border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center">게시판에 저장된 글이 없습니다.</td>
		</table>

		<%
		} else {
		%>
		<table border="1" width="1000" cellpadding="0" cellspacing="0" align="center">
			<tr height="30" bgcolor="<%=value_c%>">
				<td align="center" width="50">번 호</td>
				<td align="center" width="500">제 목</td>
				<td align="center" width="100">작성자</td>
				<td align="center" width="100">작성일</td>
				<td align="center" width="50">조 회</td>
			</tr>
			<%
			for (int i = 0; i < articleList.size(); i++) { // 게시글 생성
				BoardVO article = (BoardVO) articleList.get(i);
			%>
			<tr height="30">
				<td align="center" width="50"><%=number--%></td>
				<td width="250">
					<%
					int wid = 0;
					if (article.getRe_level() > 0) {
						wid = 5 * (article.getRe_level());
					%> <img src="board/images/level.gif" width="<%=wid%>" height="16"> <img src="board/images/re.gif"> <%
 } else {
 %> <img src="board/images/level.gif" width="<%=wid%>" height="16"> <%
 }
 %> <a href="boardContent.bo?num=<%=article.getNum()%>&pageNum=<%=currentPage%>"><%=article.getSubject()%></a> <%
 if (article.getReadcount() >= 20) {
 %> <img src="board/images/hot.gif" border="0" height="16"> <%
 }
 %>
				</td>
				<td align="center" width="100"><a href="mailto:<%=article.getEmail()%>"> <%=article.getWriter()%></a></td>
				<!-- 작성자 -->
				<td align="center" width="150"><%=sdf.format(article.getReg_date())%></td>
				<td align="center" width="50"><%=article.getReadcount()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		<div class="pgnt" style="margin-top: 3em;">
			<nav>
				<ul class="pagination justify-content-center">
					<%
					if (count > 0) {
						if (startPage > 10) {
							//첫번째 페이지 그룹이 아니면 [이전]
					%>
					<li class="page-item"><a href="qBoardList.bo?pageNum=<%=startPage - 10%>" class="page-link" aria-label="Previous"> <span
							aria-hidden="true"
						>&laquo;</span>
					</a></li>
					<%
					//이전 그룹의 스타트페이지로 이동
					}
					for (int i = startPage; i <= endPage; i++) {
					%>

					<li class="page-item"><a href="qBoardList.bo?pageNum=<%=i%>" class="page-link" ><%=i%></a></li>
					<%
					}
					if (endPage < pageCount) {
					//마지막 페이지 그룹이 아니면
					%>
					<li class="page-item"><a href="qBoardList.bo?pageNum=<%=startPage + 10%>" class="page-link" aria-label="Next"> <span
							aria-hidden="true"
						>&raquo;</span></a></li>
					<%
					//다음 페이지 그룹의 첫 페이지로
					}
					}
					%>
				</ul>
			</nav>
		</div>

	</center>
</body>
</html>