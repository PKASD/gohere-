<%@ page contentType="text/html; charset=euc-kr"%>

<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>???Ⱕ???</title>
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
	width: 40px;
	height: 40px;
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

.space {
	margin-left: 15%;
	margin-right: 15%;
}

#login_Form {
	width: 600px;
	height: 300px;
	padding: 0;
	margin: auto;
	font-size: 16px;
}

#login_Form>h2 {
	text-align: center;
	margin-bottom: 50px;
	font-weight: bold;
}

#login_Form>input {
	width: 600px;
	height: 50px;
	margin-top: 10px;
}

input:hover {
	border: 2px solid black;
}

#login_Form>input::placeholder {
	font-weight: bold;
	padding: 10px;
	color: #d2d2d2c1;
}

.chk_box {
	display: block;
	position: relative;
	padding-left: 25px;
	margin-top: 10px;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* ?⺻ üũ?ڽ? ?????? */
.chk_box input[type="checkbox"] {
	display: none;
}

/* ???õ??? ???? üũ?ڽ? ??Ÿ?? ?ٹ̱? */
.on {
	margin-top: 2px;
	width: 20px;
	height: 20px;
	background: rgb(209, 209, 209);
	position: absolute;
	top: 0;
	left: 0;
}

/* ???õ? üũ?ڽ? ??Ÿ?? ?ٹ̱? */
.chk_box input[type="checkbox"]:checked+.on {
	background: black;
}

.on:after {
	content: "";
	position: absolute;
	display: none;
}

.chk_box input[type="checkbox"]:checked+.on:after {
	display: block;
}

.on:after {
	width: 6px;
	height: 10px;
	border: solid #fff;
	border-width: 0 2px 2px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	position: absolute;
	left: 6px;
	top: 2px;
}

#login_Btn {
	width: 600px;
	height: 50px;
	background-color: black;
	color: aliceblue;
	font-weight: bold;
	font-size: large;
	margin-top: 20px;
}
</style>
</head>


<body>
	<!-- Header-->
	<header class="bg-white py-5 ">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="indexForm.bo">???Ⱕ???</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" aria-current="page" href="tripForm.bo">??????</a></li>
						<li class="nav-item"><a class="nav-link" href="fsvForm.bo">????</a></li>
						<li class="nav-item"><a class="nav-link" href="rBoardList.bo">???? ?Խ???</a></li>
						<li class="nav-item"><a class="nav-link" href="qBoardList.bo">???? ?Խ???</a></li>
					</ul>
				</div>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<a class="btn btn-outline-primary" id="loginBtn" href="loginForm.bo" role="button">?α???</a>
			</div>
		</nav>

		<section class="tripbg">
			<div class="container px-4 px-lg-5 my-5">
				<div class="text-center text-black-50">
					<h1 class="display-4 fw-bolder">???? ?????</h1>
					<p class="lead fw-normal text-black-50 mb-0">????! ?????? ???????? ?𸣰??? ????</p>
				</div>
			</div>
		</section>
	</header>

	<!-- Section-->
	<section>
		<form action="Index.html" method="post" id="login_Form">
			<h2>?α???</h2>
			<input type="text" placeholder="???̵??? ?Է??ϼ???." name="uname" required><br> <input type="password" placeholder="???й?ȣ?? ?Է??ϼ???." name="psw"
				required
			><br> <label for="agree" class="chk_box"> <input type="checkbox" id="agree" /> <span class="on"></span> ???̵? ???? <a
				href="Sign_In.html" style="text-decoration: none; color: black; padding-left: 410px;"
			>ȸ??????</a>
			</label>

			<button type="submit" id="login_Btn">?α???</button>
		</form>
	</section>

</body>
<!-- Footer-->
<footer style="margin-top: 5%; background-color: gray; height: 100px; text-align: center; padding-top: 3%;">
	<h2>Team ?????? 2022 ??????Ʈ ??????..</h2>
</footer>

</html>