$(document).ready(function(){

	
	$('#deleteStoreBtn').click(function(){
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn btn-success',
			    cancelButton: 'btn btn-danger'
			  },
			  buttonsStyling: false
			})

			swalWithBootstrapButtons.fire({
			  title: '정말로 매장을 삭제하시겠습니까?',
			  text: "다시 등록할 경우 재승인이 필요합니다!",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonText: '네',
			  cancelButtonText: '아니오',
			  confirmButtonColor:'#3085d6',
			  cancelButtonColor: '#d33',
			  reverseButtons: false
			}).then((result) => {
			  if (result.value) {
			    swalWithBootstrapButtons.fire(
			      '삭제 성공',
			      '매장을 삭제하였습니다',
			      'success'
			    )
			    setTimeout(function() {
			    	location.href=contextPath+"/sm/delete/store";
			    			}, 1000);
			    
			  } else if (
			    /* Read more about handling dismissals below */
			    result.dismiss === Swal.DismissReason.cancel
			  ) {
			    swalWithBootstrapButtons.fire(
			      '삭제 취소',
			      '매장을 삭제하지 않았습니다',
			      'error'
			    )
			    setTimeout(function() {
			    	location.href=contextPath+"/sm/store";
			    			}, 2000);
				
			  }
			});
	
	});
	
	
	$('#updateBtn').click(function(){
		swal.fire("승인대기중입니다");
	});
	
});