<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dinner41.css">

    <title>Q&A</title>
</head>

<body>
<nav class="navbar navbar-light light_green">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="btn-group">
        <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
            <span>서울특별시 봉천동</span>
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="#">주소 변경하기</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">현재 위치 기준</a>
        </div>
    </div>

    <img src="${pageContext.request.contextPath}/resources/icons/shopping-bag-solid.svg" class="cart" alt="no picture">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">내정보 보기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">주문 내역</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">1:1 문의</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">로그아웃</a>
            </li>
        </ul>
    </div>
</nav>

<div>
    <div class="container-fluid text-center" style="margin-top: 15pt">
        <img src="${pageContext.request.contextPath}/resources/images/1인의만찬.png" class="img-title" alt="no title"/>
        <h4>문의 내역</h4>
    </div>

    <ul class="nav nav-tabs">
        <li class="nav-item text-center nav_three">
            <a class="nav-link" href="#">ALL</a>
        </li>
        <li class="nav-item text-center nav_three">
            <a class="nav-link active" href="#">답변대기</a><!--예시-->
        </li>
        <li class="nav-item text-center nav_three">
            <a class="nav-link" href="#">답변완료</a>
        </li>
    </ul>

    <div>
        <ul class="list-group list-group-flush">

            <li class="list-group-item">
                <h5><span>문의 제목을 적어주세요</span>&nbsp;&nbsp;
                    <span class="badge badge-primary">답변완료</span>
                </h5>
                문의 유형 : <span>신고</span>
                <br/>
                문의 날짜 : <span>2020년 2월 8일</span>
                <button class="btn btn-outline-success btn-sm btn-block" style="margin-top: 5pt">문의 상세</button>
            </li>

            <li class="list-group-item">
                <h5><span>문의 제목을 적어주세요</span>&nbsp;&nbsp;
                    <span class="badge badge-danger">답변완료</span>
                </h5>
                문의 유형 : <span>신고</span>
                <br/>
                문의 날짜 : <span>2020년 2월 8일</span>
                <button class="btn btn-outline-success btn-sm btn-block" style="margin-top: 5pt">문의 상세</button>
            </li>

        </ul>
    </div>

    <hr style="margin-top: 0"/>

    <div style="text-align: center">
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-success"><<</button>
            <button type="button" class="btn btn-success">1</button>
            <button type="button" class="btn btn-success">2</button>
            <button type="button" class="btn btn-success">3</button>
            <button type="button" class="btn btn-success">4</button>
            <button type="button" class="btn btn-success">>></button>
        </div>
    </div>

    <div class="container-fluid margin_first">
        <button type="button" class="btn btn-outline-success two_button">문의작성</button>
        <button type="button" class="btn btn-outline-success float-right two_button">뒤로가기</button>
    </div>
</div>
<hr/>
<div class="last_block"></div>
</body>
</html>