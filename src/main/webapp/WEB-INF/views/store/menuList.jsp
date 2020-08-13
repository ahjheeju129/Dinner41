<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
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

    <title>Menu</title>
</head>
<body>

<nav class="navbar navbar-light light_green">

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
                <a class="nav-link" href="#">주문내역</a>
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

<div>
    <div class="container-fluid" style="margin-top: 15pt">
        <div class="text-center">
            <h2>메뉴 관리</h2>
        </div>
    </div>

    <hr style="margin-bottom: 0"/>

    <ul class="list-group list-group-flush">
        <li class="list-group-item">
            <div class="row">
                <div class="col-3">
                    <img src="../../images/dish-food.jpg" width="100%" class="rounded" alt="menu">
                </div>
                <div class="col-9" style="padding-left: 0">
                    <h5>주문메뉴 : <span>개구리 뒷다리</span></h5>
                    <div style="margin-top: 5pt">
                        금액 : <span>10000원</span><br/>
                        수량 : <span>1</span> &nbsp;

                        <i class="fas fa-minus-square pos"></i>
                        <i class="fas fa-plus-square pos"></i>&nbsp;&nbsp;
                        <button class="btn btn-outline-success btn-sm trim">등록</button>
                    </div>
                </div>
            </div>
        </li>

        <li class="list-group-item">
            <div class="row">
                <div class="col-3">
                    <img src="../../images/dish-food.jpg" width="100%" class="rounded" alt="menu">
                </div>
                <div class="col-9" style="padding-left: 0">
                    <h5>주문메뉴 : <span>개구리 뒷다리</span></h5>
                    <div style="margin-top: 5pt">
                        금액 : <span>10000원</span><br/>
                        수량 : <span>1</span> &nbsp;
                        <i class="fas fa-minus-square pos"></i>
                        <i class="fas fa-plus-square pos"></i>&nbsp;&nbsp;
                        <button class="btn btn-outline-success btn-sm trim">등록</button>
                    </div>
                </div>
            </div>
        </li>

        <li class="list-group-item">
            <div class="row">
                <div class="col-3">
                    <img src="../../images/dish-food.jpg" width="100%" class="rounded" alt="menu">
                </div>
                <div class="col-9" style="padding-left: 0">
                    <h5>주문메뉴 : <span>개구리 뒷다리</span></h5>
                    <div style="margin-top: 5pt">
                        금액 : <span>10000원</span><br/>
                        수량 : <span>1</span> &nbsp;
                        <i class="fas fa-minus-square pos"></i>
                        <i class="fas fa-plus-square pos"></i>&nbsp;&nbsp;
                        <button class="btn btn-outline-success btn-sm trim">등록</button>
                    </div>
                </div>
            </div>
        </li>

        <li class="list-group-item">
            <div class="row">
                <div class="col-3">
                    <img src="../../images/dish-food.jpg" width="100%" class="rounded" alt="menu">
                </div>
                <div class="col-9" style="padding-left: 0">
                    <h5>주문메뉴 : <span>개구리 뒷다리</span></h5>
                    <div style="margin-top: 5pt">
                        금액 : <span>10000원</span><br/>
                        수량 : <span>1</span> &nbsp;
                        <i class="fas fa-minus-square pos"></i>
                        <i class="fas fa-plus-square pos"></i>&nbsp;&nbsp;
                        <button class="btn btn-outline-success btn-sm trim">등록</button>
                    </div>
                </div>
            </div>
        </li>

        <li class="list-group-item">
            <div class="row">
                <div class="col-3">
                    <img src="../../images/dish-food.jpg" width="100%" class="rounded" alt="menu">
                </div>
                <div class="col-9" style="padding-left: 0">
                    <h5>주문메뉴 : <span>개구리 뒷다리</span></h5>
                    <div style="margin-top: 5pt">
                        금액 : <span>10000원</span><br/>
                        수량 : <span>1</span> &nbsp;
                        <i class="fas fa-minus-square pos"></i>
                        <i class="fas fa-plus-square pos"></i>&nbsp;&nbsp;
                        <button class="btn btn-outline-success btn-sm trim">등록</button>
                    </div>
                </div>
            </div>
        </li>
    </ul>

    <hr style="margin-top: 0"/>

    <div style="text-align: center">
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-success"><<</button>
            <button type="button" class="btn btn-success" disabled>1</button>
            <button type="button" class="btn btn-success">2</button>
            <button type="button" class="btn btn-success">3</button>
            <button type="button" class="btn btn-success">4</button>
            <button type="button" class="btn btn-success">>></button>
        </div>
    </div>
    <div class="container-fluid margin_first">
        <button type="button" class="btn btn-outline-success btn-block">메뉴 추가 하기</button>
    </div>
</div>
<hr/>
<div class="last_block"></div>
</body>
</html>