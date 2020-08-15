<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
    <link rel="stylesheet" href="../../css/dinner41.css">

    <title>Home</title>
</head>
<body>

<nav class="navbar navbar-light light_green" style="background-color: aquamarine">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div>
        <h5 class="up_down_center">STORE MANAGE</h5>
    </div>

    <img src="../../icons/home-solid.svg" class="home" alt="home">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">내정보 보기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">주문 내역</a>
            </li>
            <li class="nav-item">
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

<div class="container-fluid text-center" style="margin-top: 15pt">
    <img src="../../images/1인의만찬.png" class="img-fluid img-title" alt="no title"/>
    <h2>매장 등록</h2>
</div>

<hr/>

<div class="container-fluid">
    <form class="container-fluid text-left" method="post" action="store">
        <div class="form-group">
            <label for="storeNumber">사업자 번호</label>
            <div id="store">
                <input type="text" class="form-control left_input" id="storeNumber" name="businessNumber"/>
                <button type="button" class="btn btn-outline-success right_input" id="storeNumber_button">번호 찾기
                </button>
            </div>
        </div>

        <div class="form-group">
            <label for="storeName">매장명</label>
            <input type="text" class="form-control" id="storeName" name="name"/>
        </div>

        <div class="form-group">
            <label for="exampleFormControlInput1">매장 대표사진 첨부</label>
            <div id="emailCheckLabel">
                <input type="file" id="exampleFormControlInput1" name="photo"/>
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 20pt">
            <label for="inputKind">매장 대표 카테고리</label>
            <select id="inputKind" class="form-control" name="category">
                <option>도시락</option>
                <option>조리키트</option>
                <option>떡/제과</option>
                <option>한식</option>
                <option>분식</option>
                <option>일식</option>
                <option>반찬</option>
                <option>치킨/피자</option>
                <option>기타</option>
            </select>
        </div>

        <div class="form-group">
            <label for="address">거주지</label>
            <div id="address">
                <input type="text" class="form-control left_input" id="search_address"/>
                <button type="button" class="btn btn-outline-success right_input" id="search_button">주소 찾기</button>
                <input type="text" class="form-control margin_up" placeholder="주소" id="user_address" name="address"/>
                <input type="text" class="form-control margin_up" placeholder="상세주소" id="user_sub_address" name="subAddress"/>
            </div>
        </div>

        <div class="form-group">
            <label for="phoneNumber">매장 전화번호</label>
            <div id="phoneNumber">
                <input type="tel" class="form-control" id="phoneNumber1" name="phone" style="width: 100% ;float: left"/>
               <!--  <p style="width: 5% ;float: left;text-align: center">-</p>
                <input type="tel" class="form-control" id="phoneNumber2" style="width: 30% ;float: left"/>
                <p style="width: 5% ;float: left ; text-align: center">-</p>
                <input type="tel" class="form-control" id="phoneNumber3" style="width: 30% ;"/>  -->
            </div>
        </div>

        <div class="form-group">
            <label for="storeTime">매장 운영 시간</label>
            <input type="text" class="form-control" id="storeTime" name="operateTime"/>
        </div>

        <div class="form-group">
            <label for="inputContent">매장 설명</label>
            <textarea class="form-control" id="inputContent" name="introduction" placeholder="매장 운영시간과 정책에 대해서 설명해주세요."
                      rows="5"></textarea>
        </div>

        <div class="margin_first">
            <button type="submit" class="btn btn-success two_button">등록 신청서 제출</button>
            <button type="submit" class="btn btn-success two_button float-right">등록 신청 취소</button>
        </div>
    </form>
</div>

<hr/>

<div class="last_block"></div>
</body>
</html>