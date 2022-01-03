<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    
   <!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="../../resources/lib/pnotify/pnotify.custom.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="../../resources/css/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="../../resources/css/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="../../resources/css/theme-custom.css">
		
		<link rel="stylesheet" href="../../resources/lib/magnific-popup/magnific-popup.css">

		<!-- Head Libs -->
		<script src="../../resources/lib/modernizr/modernizr.js"></script>
		
		  <!-- Vendor -->
		 
		<script src="../../resources/lib/flot/jquery.js"></script>		 
		<script src="../../resources/lib/jquery/jquery.js"></script>
		<script src="../../resources/lib/wow/wow.js"></script>
		<script src="../../resources/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
		<script src="../../resources/lib/isotope/isotope.pkgd.js"></script>
		<script src="../../resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
		<script src="../../resources/lib/flexslider/jquery.flexslider.js"></script>
		<script src="../../resources/lib/owl.carousel/dist/owl.carousel.min.js"></script>
		<script src="../../resources/lib/smoothscroll.js"></script>
		<script src="../../resources/lib/magnific-popup/magnific-popup.js"></script>
		<script src="../../resources/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
		<script src="../../resources/js/plugins.js"></script>
		<script src="../../resources/js/main.js"></script>
		
		<script src="../../resources/lib/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="../../resources/lib/bootstrap/js/bootstrap.js"></script>	
		<script src="../../resources/lib/nanoscroller/nanoscroller.js"></script>
		<script src="../../resources/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="../../resources/lib/jquery-placeholder/jquery.placeholder.js"></script>
		<script src="../../resources/lib/pnotify/pnotify.custom.js"></script>
		<script src="../../resources/js/theme.js"></script>
		<script src="../../resources/js/theme.custom.js"></script>
		<script src="../../resources/js/theme.init.js"></script>
		<script src="../../resources/js/ui-elements/examples.modals.js"></script>
     
</head>
 		
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="/">Gamsung</a>
    </div>
    <div class="collapse navbar-collapse" id="custom-collapse">
      <ul class="nav navbar-nav navbar-right">    

        <li><a href="/campBusiness/goSubMainCampBusiness">CampBusiness</a></li> 
      
        <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Payment</a>
          <ul class="dropdown-menu">
          	<li><a href="/payment/managePoint">ManagePoint</a></li>
           	<br>
           	<li><a href="/payment/listPaymentCode">PaymentCode</a></li>
           	<br>
           	<li><a href="/payment/addMakePayment">MakePayment</a></li>
           	<li><a href="/payment/addRefundPayment">RefundPayment</a></li>
           	<li><a href="/payment/listPayment">listPayment</a></li>
           	<br>
           	<li><a href="/payment/listSiteProfit">SiteProfit</a></li>          	      
          </ul>
        </li>

        <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">중고상품</a>

          <ul class="dropdown-menu">
            <li><a href="/auction/addAuctionProduct" >상품 등록</a></li>
            <li><a href="/auction/listWaitAuctionProduct" >경매 진행 전</a></li>
            <li><a href="/auction/listAuctionProduct" >경매 진행 중</a></li>
          </ul>
        </li>
        
        <li class="dropdown"><a class="dropdown-toggle" href="/community/listCommunity" data-toggle="dropdown">커뮤니티</a>
        	<ul class="dropdown-menu">
				<li><a href="/community/listCommunity">커뮤니티</a></li>
			</ul>
        </li>
               
        <li class="dropdown"><a class="dropdown-toggle" href="/servicecenter/home" data-toggle="dropdown">고객센터</a>
        	<ul class="dropdown-menu">
				<li><a href="/servicecenter/home">고객센터</a></li>
			</ul>
        </li>
    
        <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Portfolio</a>
          <ul class="dropdown-menu" role="menu">
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Boxed</a>
              <ul class="dropdown-menu">
              	<li><a href="login_register.html">Login / Register</a></li>
           		<li><a href="faq.html">FAQ</a></li>
           		<li><a href="404.html">Page 404</a></li>
                <li><a href="portfolio_boxed_col_2.html">2 Columns</a></li>
                <li><a href="portfolio_boxed_col_3.html">3 Columns</a></li>
                <li><a href="portfolio_boxed_col_4.html">4 Columns</a></li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Boxed - Gutter</a>
              <ul class="dropdown-menu">
                <li><a href="portfolio_boxed_gutter_col_2.html">2 Columns</a></li>
                <li><a href="portfolio_boxed_gutter_col_3.html">3 Columns</a></li>
                <li><a href="portfolio_boxed_gutter_col_4.html">4 Columns</a></li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Full Width</a>
              <ul class="dropdown-menu">
                <li><a href="portfolio_full_width_col_2.html">2 Columns</a></li>
                <li><a href="portfolio_full_width_col_3.html">3 Columns</a></li>
                <li><a href="portfolio_full_width_col_4.html">4 Columns</a></li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Full Width - Gutter</a>
              <ul class="dropdown-menu">
                <li><a href="portfolio_full_width_gutter_col_2.html">2 Columns</a></li>
                <li><a href="portfolio_full_width_gutter_col_3.html">3 Columns</a></li>
                <li><a href="portfolio_full_width_gutter_col_4.html">4 Columns</a></li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Masonry</a>
              <ul class="dropdown-menu">
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Boxed</a>
                  <ul class="dropdown-menu">
                    <li><a href="portfolio_masonry_boxed_col_2.html">2 Columns</a></li>
                    <li><a href="portfolio_masonry_boxed_col_3.html">3 Columns</a></li>
                    <li><a href="portfolio_masonry_boxed_col_4.html">4 Columns</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Full Width</a>
                  <ul class="dropdown-menu">
                    <li><a href="portfolio_masonry_full_width_col_2.html">2 Columns</a></li>
                    <li><a href="portfolio_masonry_full_width_col_3.html">3 Columns</a></li>
                    <li><a href="portfolio_masonry_full_width_col_4.html">4 Columns</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Hover Style</a>
              <ul class="dropdown-menu">
                <li><a href="portfolio_hover_black.html">Black</a></li>
                <li><a href="portfolio_hover_gradient.html">Gradient</a></li>
              </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Single</a>
              <ul class="dropdown-menu">
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Featured Image</a>
                  <ul class="dropdown-menu">
                    <li><a href="portfolio_single_featured_image1.html">Style 1</a></li>
                    <li><a href="portfolio_single_featured_image2.html">Style 2</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Featured Slider</a>
                  <ul class="dropdown-menu">
                    <li><a href="portfolio_single_featured_slider1.html">Style 1</a></li>
                    <li><a href="portfolio_single_featured_slider2.html">Style 2</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Featured Video</a>
                  <ul class="dropdown-menu">
                    <li><a href="portfolio_single_featured_video1.html">Style 1</a></li>
                    <li><a href="portfolio_single_featured_video2.html">Style 2</a></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        
        <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Features</a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="alerts-and-wells.html"><i class="fa fa-bolt"></i> Alerts and Wells</a></li>
            <li><a href="buttons.html"><i class="fa fa-link fa-sm"></i> Buttons</a></li>
            <li><a href="tabs_and_accordions.html"><i class="fa fa-tasks"></i> Tabs &amp; Accordions</a></li>
            <li><a href="content_box.html"><i class="fa fa-list-alt"></i> Contents Box</a></li>
            <li><a href="forms.html"><i class="fa fa-check-square-o"></i> Forms</a></li>
            <li><a href="icons.html"><i class="fa fa-star"></i> Icons</a></li>
            <li><a href="progress-bars.html"><i class="fa fa-server"></i> Progress Bars</a></li>
            <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li>
          </ul>
        </li>
 
        <!--li.dropdown.navbar-cart-->
        <!--    a.dropdown-toggle(href='#', data-toggle='dropdown')-->
        <!--        span.icon-basket-->
        <!--        |-->
        <!--        span.cart-item-number 2-->
        <!--    ul.dropdown-menu.cart-list(role='menu')-->
        <!--        li-->
        <!--            .navbar-cart-item.clearfix-->
        <!--                .navbar-cart-img-->
        <!--                    a(href='#')-->
        <!--                        img(src='resources/images/shop/product-9.jpg', alt='')-->
        <!--                .navbar-cart-title-->
        <!--                    a(href='#') Short striped sweater-->
        <!--                    |-->
        <!--                    span.cart-amount 2 &times; $119.00-->
        <!--                    br-->
        <!--                    |-->
        <!--                    strong.cart-amount $238.00-->
        <!--        li-->
        <!--            .navbar-cart-item.clearfix-->
        <!--                .navbar-cart-img-->
        <!--                    a(href='#')-->
        <!--                        img(src='resources/images/shop/product-10.jpg', alt='')-->
        <!--                .navbar-cart-title-->
        <!--                    a(href='#') Colored jewel rings-->
        <!--                    |-->
        <!--                    span.cart-amount 2 &times; $119.00-->
        <!--                    br-->
        <!--                    |-->
        <!--                    strong.cart-amount $238.00-->
        <!--        li-->
        <!--            .clearfix-->
        <!--                .cart-sub-totle-->
        <!--                    strong Total: $476.00-->
        <!--        li-->
        <!--            .clearfix-->
        <!--                a.btn.btn-block.btn-round.btn-font-w(type='submit') Checkout-->
        <!--li.dropdown-->
        <!--    a.dropdown-toggle(href='#', data-toggle='dropdown') Search-->
        <!--    ul.dropdown-menu(role='menu')-->
        <!--        li-->
        <!--            .dropdown-search-->
        <!--                form(role='form')-->
        <!--                    input.form-control(type='text', placeholder='Search...')-->
        <!--                    |-->
        <!--                    button.search-btn(type='submit')-->
        <!--                        i.fa.fa-search-->
        
        <li class="dropdown"><a class="dropdown-toggle" href="documentation.html" data-toggle="dropdown">Documentation</a>
          <ul class="dropdown-menu">
            <li><a href="documentation.html#contact">Contact Form</a></li>
            <li><a href="documentation.html#reservation">Reservation Form</a></li>
            <li><a href="documentation.html#mailchimp">Mailchimp</a></li>
            <li><a href="documentation.html#gmap">Google Map</a></li>
            <li><a href="documentation.html#plugin">Plugins</a></li>
            <li><a href="documentation.html#changelog">Changelog</a></li>
          </ul>
        </li>
         <li>    
	         <c:if test="${sessionScope.user.role!=null}">
		     <a href="#"><button class="btn btn-border-w btn-round btn-xs" type="button" id="logout">LOGOUT</button></a>
		    </c:if>
		     <c:if test="${sessionScope.user.role==null}">
		       <a class="modal-basic" href="#modalBasic" id="login">
		       <button class="btn btn-border-w btn-round btn-xs" type="button">LOGIN</button>
		       </a>
	        </c:if>
	    </li>
        </ul>
    </div>
  </div>
</nav>

 <!-- 로그인 모달 -->

<div id="modalBasic" class="modal-block modal-block-primary mfp mfp-hide">
	<section class="panel">
<header class="panel-heading"> 
<!--  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>-->
 <div align="right"><button class="btn btn-default modal-dismiss">x</button></div>
<h3 class="modal-title" align="center">로그인</h3>
</header> 
	 <div class="panel-body" >
	<form action="" class="was-validated">
		<div class="form-group">
		<div class="col-sm-2"></div>
			<div><label for="modalId">아이디 </label></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-8"><input type="text" class="form-control" id="modalId" placeholder="아이디를 입력하세요." name="id" required></div>
		</div>
		<div class="form-group">
		<div class="col-sm-2"></div>
			<div><label for="pwd">비밀번호 </label></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-8"><input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." name="password" required></div>

		</div>
		<div class="col-sm-3"></div>
		<div class="col-sm-6"><button type="submit" class="btn-info btn-round btn-block" id="loginBtn">로그인</button></div>
		<br/><br/>
		<div align="center"><a href="javascript:kakaoLogin();"><img src="../../resources/images/kakaolink_btn_small.png"/></a>
		<button type="submit" class="btn btn-g btn-round" id="joinUser"><i class="fa fa-smile-o"></i>회원가입</button>
		<button type="submit" class="btn btn-g btn-round" id="joinBusinessUser"><i class="fa fa-smile-o"></i>사업자 회원가입</button></div>
		
	</form>
		</div>
		<footer class="panel-footer">
				<div class="row">
					<div class="col-md-12 text-right">
						<button class="btn btn-default btn-sm modal-dismiss" data-toggle="modal" data-target="#findIdModal" type="button" id="findId">아이디 찾기</button>
						<button class="btn btn-default btn-sm">비밀번호 찾기</button>
					</div>
				</div>
		</footer>
	</section>
</div>

<script type="text/javascript">
    //============= logout Event =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("#logout").on("click" , function() {
		 		//$(self.location).attr("href","/user/logout");
				self.location = "/user/logout"
			}); 
			
		 	$("#joinUser").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/view/user/addGeneralUser.jsp"
			}); 
		 	
			$("#joinBusinessUser").on("click" , function() {
				self.location = "/view/user/addBusinessUser.jsp"
			}); 
			 			
			$("#id").focus();
			$("button:contains(로그인)").on("click" , function() {
				//alert("gkgkgkgk");
				var id=$("input:text").val();
				var pwd=$("input:password").val();
				
				if(id == null || id.length <1) {
					alert('ID 를 입력하지 않으셨습니다.');
					$("#id").focus();
					return;
				}
				
				if(pwd == null || pwd.length <1) {
					alert('패스워드를 입력하지 않으셨습니다.');
					$("#pwd").focus();
					return;
				}
				
				$("form").attr("method","POST").attr("action","/user/login").submit();
			});
			console.log($("#findId"));

			$(".text-right #findId").on("click", function(e) {
				
				console.log("dddd");
	 			console.log($('div#findIdModal'));
	 			
	 			//$(".mfp-ready").
	 			$('#modalBasic').modal('hide');
	 			//$(this).collapse('hide');
	 			
	 		//	$('#findIdModal').modal('show');
	 			
			}); 
		});

		//카카오로그인
		function kakaoLogin() {

		$.ajax({
		    url: '/user/getKakaoAuthUrl',
		    type: 'get',
		    async: false,
		    dataType: 'text',
		    success: function (res) {
		        location.href = res;
		    }
		});

	}
	 

		$(document).ready(function() {

		  var kakaoInfo = '${kakaoInfo}';

		  if(kakaoInfo != ""){
		      var data = JSON.parse(kakaoInfo);

		      alert("카카오로그인 성공 \n accessToken : " + data['accessToken']);
		      alert(
		      "user : \n" + "email : "
		      + data['email']  
		      + "\n nickname : " 
		      + data['nickname']);
		  }
		});  
   
</script> 


