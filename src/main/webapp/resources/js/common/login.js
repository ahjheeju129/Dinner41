$(document).ready(function(){
	var contextPath=sessionStorage.getItem("contextPath");
	var errorMessage=$('#modelData').data('message');
	if(errorMessage){
		let email=$('#modelData').data('useremail');
		alert(errorMessage);
		$('#user_email').val(email);
	}
	//console.log('에러메세지 없음');
	//console.log(contextPath);
	$('#register_button').on("click",function(){
		//alert("회원가입버튼에 클릭이벤트 발생");
		location.href=contextPath+"/register";
	});
	$('#password_button').on("click",function(){
		//alert("passwordButton의 onClick이벤트 발생");
		location.href=contextPath+"/password";
	});

});