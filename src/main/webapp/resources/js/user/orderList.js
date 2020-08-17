$(document).ready(function() {
	clickReview();
	clickOrderDetailView();
});

// 리뷰쓰기 클릭 함수
function clickReview() {
	var orders = $(".orderClass").get();
	for (let i = 0; i < orders.length; i++) {
		var order = $(orders[i]);
		order.find("#reviewClick").click(function() {
			var orderId = $(this).parents(".orderClass").data("orderid");
			window.location = orderId + "/review"
		});
	}
}

// 주문상세 클릭 함수
function clickOrderDetailView() {
	var orders = $(".orderClass").get();
	for (let i = 0; i < orders.length; i++) {
		var order = $(orders[i]);
		order.find("#orderDetailView").click(function() {
			var orderId = $(this).parents(".orderClass").data("orderid");
			var http = new XMLHttpRequest();
			http.open("HEAD", getContextPath() + "/gm/" + orderId + "/order");
			http.send();
		});
	}
}

function getContextPath() {
	var hostIndex = location.href.indexOf(location.host) + location.host.length;
	return location.href.substring(hostIndex, location.href.indexOf("/", hostIndex + 1));
};