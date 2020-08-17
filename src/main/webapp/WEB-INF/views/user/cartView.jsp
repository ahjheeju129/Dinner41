<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dinner41.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/user/cartView.js"></script>

<title>Cart</title>
</head>

<body>

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
		<a href="${pageContext.request.contextPath}/gm/cart"><img src="${pageContext.request.contextPath}/resources/icons/shopping-bag-solid.svg" class="cart" alt="no picture">
		</a>

		<!--메뉴-->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">내정보 보기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">주문 내역</a></li>
				<li class="nav-item"><a class="nav-link" href="#">1:1 문의</a></li>
				<li class="nav-item"><a class="nav-link" href="#"> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"> </a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
			</ul>
		</div>
	</nav>


	<!--Content-->
	<div>
		<!--제목-->
		<div class="container-fluid text-center" style="margin-top: 15pt">
			<img src="${pageContext.request.contextPath}/resources/images/1인의만찬.png" class="img-title" alt="no title" />
			<h4>장바구니</h4>
		</div>
		<hr />

		<c:if test="${empty carts}">
		장바구니가 비어있습니다.
		</c:if>

		<c:if test="${not empty carts}">

			<!--선택된 메뉴의 매장명-->
			<div class="container-fluid" id="storeId" data-storeId=<c:out value="${carts[0].storeId}"/>>
				<!--메뉴가 선택된 경우 매장이름을 출력하고 -->
				<!--메뉴가 선택되지 않아 장바구니가 빈경우 매장이름 대신 빈 값을 넣거나 -->
				<!--'장바구니가 비었습니다.'를 출력해주세요 -->
				<h5>
					매장고유번호 : <span><c:out value="${carts[0].storeId}" /></span>
				</h5>
				<h5>
					매장명 : <span>뽀식이네 감자탕</span>
				</h5>
			</div>
			<hr />

			<!--전체 선택 체크박스-->
			<div class="custom-control custom-checkbox  " style="margin-left: 10pt">
				<input type="checkbox" class="custom-control-input" id="totalToggle"> <label class="custom-control-label" for="totalToggle">전체선택</label>
			</div>

			<hr style="margin-bottom: 0" />

			<c:forEach items="${carts}" var="cart" varStatus="i">
				<div class="menuClass" data-menuId=<c:out value="${cart.menuId}"/>>
					<!--장바구니 목록-->
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="row">
								<div style="width: 7%">
									<input type="checkbox" class="form-control" style="width: 11pt; margin: auto">
								</div>
								<div style="width: 90%; padding-top: 3pt;">
									<div>
										메뉴고유번호 : <span><c:out value="${cart.menuId}" /></span><br /> 주문메뉴 : <span>개구리 뒷다리</span>
										<div style="margin-top: 5pt">
											수량 : <span id="num">1</span> &nbsp; <i id="minusButton" class="fas fa-minus-square pos"></i> <i id="plusButton" class="fas fa-plus-square pos"></i> <br /> 금액 : <span id="amount" data-amount=<c:out value="${cart.price}"/>><c:out value="${cart.price}" />원</span>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</c:forEach>

			<div class="text-right" style="margin: 10pt">
				<h5>
					총 금액 : <span id="totalPrice">0원</span>
				</h5>
			</div>

			<div class="container-fluid margin_first">
				<button type="button" id="delete" class="btn btn-success two_button">선택 메뉴 삭제</button>
				<button type="button" id="order" class="btn btn-success two_button float-right">선택 메뉴 주문</button>
			</div>
		</c:if>
	</div>


	<hr />
	<div class="last_block"></div>
</body>
</html>