$(document).ready(function() {
	clickStoreDetail();
});

function clickStoreDetail() {
	var orders = $(".orderClass").get();
	for (let i = 0; i < orders.length; i++) {
		var order = $(orders[i]);
		order.find("#storeDetail").click(function() {
			var orderId = $(this).parents(".orderClass").data("orderid");
			window.location = getContextPath() + "/sm/" + orderId + "/order/detail";
		});
	}
}

function getContextPath() {
	var hostIndex = location.href.indexOf(location.host) + location.host.length;
	return location.href.substring(hostIndex, location.href.indexOf('/',
			hostIndex + 1));
}