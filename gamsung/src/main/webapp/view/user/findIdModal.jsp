<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="findIdModal" style="display:none;">
<div  class="modal-block modal-block-primary mfp" >
	<section class="panel">
<header class="panel-heading">
<h4 class="modal-title" align="center">아이디 찾기</h4>
	</header>
	<div class="panel-body" >
	<form action="" class="was-validated" id="ModalFindId">
		<div class="form-group">
			<label for="findIdName" class="col-sm-offset-1 col-sm-3 control-label"><strong>이름</strong></label>
			<div class="col-sm-6">
			<input type="text" class="form-control" id="findIdName" placeholder="이름을 입력하세요." name="name" required>
	</div>
	</div>
		<div class="form-group">
			<label for="findIdPhone" class="col-sm-offset-1 col-sm-3 control-label"><strong>휴대폰번호</strong></label>
					<div class="col-sm-6">
					<input id="findIdPhone" name="phone" class="form-control " type="text" placeholder="숫자만 입력해주세요" maxlength="11"/>
					</div>
					<button id="findIdPhoneAuthNum" class="btn btn-circle btn-xs" type="button">인증번호 받기</button>
					<div id="findIdCheckPhoneAuth" class="col-sm-offset-3 col-sm-6" style="display:none;">
					<input id="findIdCheckPhoneAuthNum" name ="checkPhoneAuthNum" class="form-control " type="text" placeholder="인증번호를 입력하세요." maxlength="4"/>
					</div>
					<div id="findId-check-phone" class='col-sm-offset-3 col-sm-6'></div>
					<div id="findId-check-phone-auth" class='col-sm-offset-3 col-sm-6'></div>
								</div>
		<div align="right"><button type="button" class="btn btn-default btn-sm" id="findId">아이디찾기</button></div>
	</form>
		</div>
	</section>
</div>
</div>
<script src="../../resources/lib/jquery/jquery.js"></script>
<script src="../../resources/lib/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="../../resources/lib/bootStrap/js/bootstrap.js"></script>
<script src="../../resources/lib/nanoscroller/nanoscroller.js"></script>
<script src="../../resources/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../../resources/lib/magnific-popup/magnific-popup.js"></script>
<script src="../../resources/lib/jquery-placeholder/jquery.placeholder.js"></script>
<script src="../../resources/lib/pnotify/pnotify.custom.js"></script>
<script src="../../resources/js/theme.js"></script>
<script src="../../resources/js/theme.custom.js"></script>
<script src="../../resources/js/theme.init.js"></script>
<script src="../../resources/js/ui-elements/examples.modals.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script type="text/javascript">

    //============= logout Event =============	
	 $(function() {
		 
		
		//휴대폰 인증번호 받기
			$("#findIdPhoneAuthNum").on("click", function() {
				
				$("#findIdPhoneAuthNum").text("인증번호 재발송");
				$("#findId-check-phone").hide();
				$("#findIdCheckPhoneAuth").show();
				//세션에 담긴 값이랑 입력된 값이 맞는지 비교하기 #check-phone-auth
				var phone=$("input[name='phone']").val();
				
				$.ajax({
							url : '/user/rest/sendPhoneAuthNum/'+phone,
							 headers :{
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							}, 
							method : 'GET',
							//dataType:'json',
							//data : JSON.stringify({"phone" : phone}),	
							success : function(dataa) {
								console.log('성공: '+dataa);
								
								 $("input[name='findIdCheckPhoneAuthNum']").on("keyup", function() {
									 console.log('되는가');
									 var ab=$("input[name='findIdCheckPhoneAuthNum']").val();
									 
									if(ab.length>0){
										if(dataa == ab){
										$("#findId-check-phone-auth").html("인증번호가 일치합니다.");
										}else{
										$("#findId-check-phone-auth").html('인증번호를 확인하세요.');
								}
							}
						});	 
					}
				});
			});
		
	//	$("#modalId").focus();
	$("button:contains(아이디찾기)").on("click" , function() {
		//alert("gkgkgkgk");
 		var name=$("#findIdName").val();
		var phone=$("#findIdPhone").val();
		
		if(name == null || name.length <1) {
			alert('이름을 입력하지 않으셨습니다.');
			$("#findIdName").focus();
			return;
		}
		
		if(phone == null || phone.length <1) {
			alert('휴대폰번호를 입력하지 않으셨습니다.');
			$("#findIdPhone").focus();
			return;
		}
		
		
 		$.ajax({
			url : '/user/rest/findId',
		/* 	 headers :{
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},  */
			method : 'POST',
			//dataType:'json',
			data : {
				"name" :name,
				"phone":phone
			},
			success : function(data) {
				
				console.log('성공: '+data);
				  if(data!=null){
					 var email=data;
					 var split = data.split('@');
					 var result = split[0].replace(/(?<=.{3})./gi,"*")+"@"+split[1];
					 
					 Swal.fire(result).then(()=>{
						 self.location = "/";
					 });
					 
					 } 
				  
				 }
		});	   
		 		 
	//	$("form").attr("method","POST").attr("action","/user/findId").submit();

	});
});
		 	
   
</script>