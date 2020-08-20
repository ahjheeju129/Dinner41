<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dinner41.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/user/orderInsert.js"></script>

<title>Order</title>
</head>

<body>
	<%
		String[] arrForOrder = (String[]) session.getAttribute("arrForOrder");
		String menuCount = arrForOrder[1];
		String totalPrice = arrForOrder[Integer.parseInt(menuCount) + 2];
		totalPrice = totalPrice.replaceAll("[^0-9]", "");
	%>
	<nav class="navbar navbar-light light_green">

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!--사용자 위치-->
		<div class="btn-group">
			<button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span>서울특별시 봉천동</span>
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">주소 변경하기</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">현재 위치 기준</a>
			</div>
		</div>

		<!--장바구니 아이콘-->
		<a href="${pageContext.request.contextPath}/gm/cart"> <img src="${pageContext.request.contextPath}/resources/icons/shopping-bag-solid.svg" class="cart" alt="no picture">
		</a>

		<!--메뉴-->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/mypage">내정보 보기</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/gm/WAIT/1/order">주문 내역</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ALL/1/qna">1:1 문의</a></li>
				<li class="nav-item"><a class="nav-link" href="#"> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"> </a></li>
	            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/">홈 화면으로 이동</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
			</ul>
		</div>
	</nav>

	<!--Content-->
	<div>
		<!--제목-->
		<div class="container-fluid text-center" style="margin-top: 15pt">
			<img src="${pageContext.request.contextPath}/resources/images/1인의만찬.png" class="img-title" alt="no title" />
			<h4 style="font-family: 'Do Hyeon'; margin-top: 10pt; font-size: 35px;">주문하기</h4>
		</div>

		<hr />

		<div class="container-fluid">
			<div class="form-group row">
				<label style="font-family:'Do Hyeon'; font-size:23px; font-weight:bold;" for="user_name" class="col-3 col-form-label">주문자</label>
				<div class="col-9">
					<input style="font-size:20px" type="text" class="form-control" id="user_name" value="${loginUser.name}" readonly>
				</div>
			</div>

			<div class="form-group row">
				<label style="font-family:'Do Hyeon'; font-size:23px; font-weight:bold;" for="phone" class="col-3 col-form-label">전화번호</label>
				<div class="col-9">
					<input style="font-size:20px" type="text" class="form-control" id="phone" value="${loginUser.phone}" placeholder="- 없이 입력해주세요" readonly>
				</div>
			</div>

			<div class="form-group row">
				<label style="font-family:'Do Hyeon'; font-size:23px; font-weight:bold; float:left;" for="get_time" class="col-3 col-form-label">수령소요시간</label>
				<div class="col-9">
					<input style="font-size:20px" type="text" class="form-control" id="get_time" placeholder="분 단위로 입력해주세요">
				</div>
			</div>

			<div class="form-group row">
				<label style="font-family:'Do Hyeon'; font-size:23px; font-weight:bold;" for="pay_total" class="col-3 col-form-label">결제금액(원)</label>
				<div class="col-9">
					<input style="font-size:20px" type="text" class="form-control" id="pay_total" value=<%=totalPrice%> readonly>
				</div>
			</div>
		</div>

		<div class="container-fluid margin_first">
			<button style="font-size: 20px; font-weight: bold;" type="button" class="btn btn-outline-success two_button float-right">취소</button>
			<button style="font-size: 20px; font-weight: bold;" type="button" id="order" class="btn btn-outline-success two_button">결제하기</button>
		</div>
	</div>
	<hr />
	<div class="last_block"></div>
</body>
</html>
