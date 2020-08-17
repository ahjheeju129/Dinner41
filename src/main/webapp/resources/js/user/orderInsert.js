$(document).ready(function() {
	clickOrder();
});

function clickOrder() {
	$("#order").click(function() {
		var getTime = $("#get_time").val();
		var payTotal = $("#pay_total").val();

		if (getTime.trim() == "") {
			alert("수령 소요 시간을 입력해주세요.");
			$("#get_time").focus();
			return;
		}

		$.ajax({
			type : "POST",
			url : "order",
			data : {
				"getTime" : getTime,
				"payTotal" : payTotal
			},
			success : function(data) {
				var user = data.user;
				var storePayNumber = data.storePayNumber;
				var orderId = data.orderId;
				var price = data.price;
				var menuIds = data.menuIds;

				// 결제 api 함수 실행
				alert("결제가 완료되었습니다!!");

				// 결제가 완료된 메뉴들을 장바구니에서 삭제
				$.ajax({
					type : "DELETE",
					url : "cart",
					data : {
						"arr" : menuIds
					},
					success : function(data) {
						alert("결제가 완료된 메뉴들은 장바구니에서 삭제됩니다.");
						window.location.href = "1/order";
					}
				});
			}
		});
	});
}

function pay(storePayNumber, orderId, price, email, name, phone, addr, subAddr) {
	IMP.init(storePayNumber); // 매장식별번호
	IMP.request_pay({
		pg : 'inicis',
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : orderId, // 주문번호
		amount : price, // 결제 금액
		buyer_email : email, // 주문자 이메일
		buyer_name : name, // 주문자 명
		buyer_tel : phone, // 주문자 번호
		buyer_addr : addr, // 주문자 주소
		buyer_postcode : subAddr
	}, function(rsp) {
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.' + "\n";
			msg += '고유ID : ' + rsp.imp_uid + "\n";
			msg += '결제 금액 : ' + rsp.paid_amount + "\n";
			msg += '상점 거래ID : ' + rsp.merchant_uid + "\n";
			msg += '카드 승인번호 : ' + rsp.apply_num + "\n";
			// 결제 데이터베이스에 해당 정보 저장
		} else {
			var msg = '결제에 실패하였습니다.' + '\n';
			msg += '에러내용 : ' + rsp.error_msg + "\n";
		}
		alert(msg);
	});
}