<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="../css/fonts/font.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <script defer src="index.js"></script>
    <script defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBB29i4cyab7AbEOZ2xc0jPxqdDiVBy4vk&callback=initMap"></script>

    <style>
        .d-flex {
            margin: 1%;
        }

        .tripbg {
            background-image: url(../Image/trip1.png);
            background-size: contain;
            background-repeat: no-repeat;
            background-position: 0% 0%;
            background-size: 100% 100%;
            padding: 5%;
        }

        #carouselExampleControls {
            margin: auto;
            margin-left: 15%;
            margin-right: 15%;
            padding-top: 5%;
        }

        #map {
            width: 400px;
            height: 350px;
        }

        img {
            width: 300px;
            height: 500px;
        }

        .navbar-brand {
            font-family: jeju;
        }

        body {
            margin: 0;
            padding: 0;
            height: 100%;
            line-height: 1.8;
            font-family: OMP;
        }

        .listback {
            font-size: 30px;
            top: 200%;
        }

        footer {
            position: absolute;
            height: 60px;
            width: 100%;
            padding: 0 25px;
            line-height: 60px;
        }
    </style>
</head>

<body>
    <!-- Header-->
    <header class="bg-white py-5 ">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="../Index.html">여기갈래?</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="../trip.html">여행지</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../fsv.html">축제</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../reviewboard.html">리뷰 게시판</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../QnAboard.html">질문 게시판</a>
                        </li>
                    </ul>
                </div>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <a class="btn btn-outline-primary" id="loginBtn" href="../login.html" role="button">로그인</a>
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
    <section style="margin:auto;width:1000px; height: 1300px; text-align: center;border: 1px solid gray;">
        <div style="background-color: wheat; height: 100px; padding-top:3%;">
            <h3>에버랜드</h3>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../Image/everland1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="../Image/everland2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="../Image/everland3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div style=" margin:auto; width: 70%; height: 200px; text-align: left; margin-top: 30px;">
            <p>에버랜드는 국내 최대 규모의 테마파크로 경쟁 테마파크인 롯데월드 어드벤처 단지 전체의 3배 이상 되는 규모를 자랑하며 에버랜드만 갔다가 롯데월드 어드벤처를 처음가거나 오랜만에 가는 사람들은
                롯데월드 어드벤처가 꽤 작다고 여기기도 한다. 대부분의 사람들은 생각보다 에버랜드가 크지 않다고 하기도 한다. </p>
        </div>

        <div style="width: 80%; height: 400px; margin: auto; border-top: 1px solid gray; padding-top: 30px;">
            <div id="map" style="float:left"></div>
            <div style="float:right;text-align: left; padding-top: 50px;">
                <ul>
                    <li>이름 : 에버랜드</li>
                    <li>주소 : 경기 용인시 처인구 포곡읍 에버랜드로 199</li>
                    <li>전화 번호 : 031-320-5000</li>
                    <li>사이트 주소 : www.everland.com</li>
                    <li>입장료 : 인당 28,000원</li>
                    <li>조회수 : 인당 28,000원</li>
                </ul>
            </div>
            <a class="btn btn-outline-info listback" href="" role="button"
                style="margin-top: 80px; float: center;  margin-left: 80px;">좋아요</a>
            <a class="btn btn-outline-info listback" href="../trip.html" role="button"
                style="margin-top: 80px; margin-left: 80px;">목록보기</a>

        </div>
    </section>
    <!-- Footer-->
    <footer style="background-color: gray; height: 100px; text-align: center; padding-top: 1.5%; margin-top: 10%;">
        <h2>Team 어디가 2022 프로젝트 진행중..</h2>
    </footer>
</body>

</html>