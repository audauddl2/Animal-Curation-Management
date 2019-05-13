<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 user-scalable=0">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/commonM.css" >
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/login.css"/>

</head>

<body>
    <div id="wrap">
		<!--popUp 영역-->
		<div id="mask"></div>
		<div id="popUpContainer"></div>
		
		<!-- header 영역-->
        <div id="hdContainer">
			<div class="header">
				<div class="back_btn">
					<img src="../../views/resources/img/btn_back.png">
				</div>
				<p class="headerText">로그인</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						<!-- 외부 div -->
						<div class="outBox">
							<!-- 로고 div -->
							<div class="logo">
								<img src="../../views/resources/img/logoImage/petfood_logoImage.png">
							</div>
							<!-- 가입양식 div 영역 -->
							<div class="login">
								<div class="loginBox">
									<input type="text" class="loginText" placeholder="아이디를 입력해주시기 바랍니다."/>
								</div>
								<div class="loginBox">
									<input type="password" class="loginText" placeholder="비밀번호를 입력해주시기 바랍니다."/>
								</div>
							</div>
							<!-- 자동로그인 div -->
							<div class="autoLogin">
								<input type="checkbox" id="chk1"><label for="chk1">자동로그인</label></br>
							</div>
							
							<!-- 버튼 div -->
							<div class="btn">
								<button class="loginBtn" onclick="location.href='MMain/main'">Log in</button>
							</div>
							
							<!-- 아이디 비번 찾기 div -->
							<div class="findIdPw">
								<a href="#" class="forgetPW">Forget password ?</a>
								<a href="MSignUp/signUp" class="JoinEmail">이메일로 가입하기</a>
							</div>
							
							<!-- 그외 로그인 div -->
							<div class="etcLogin">
								<div class="etcLoginBox">
									<a href="#"><img src="../../views/resources/img/login/btn_sign_01.png"></a>
									<p>카카오톡<br>로그인</p>
								</div>
								<div class="etcLoginBox">
									<a href="#"><img src="../../views/resources/img/login/btn_sign_02.png"></a>
									<p>페이스북<br>로그인</p>
								</div>
								<div class="etcLoginBox">
									<a href="#"><img src="../../views/resources/img/login/btn_sign_03.png"></a>
									<p>네이버<br>로그인</p>
								</div>
							</div>
						</div>
						
						
					<!-- showArea end-->	
					</div>
					
					
				<!-- innerBox end-->	
                </div>
				
			<!--contents end -->
            </div>
		
		<!--frameContainer end -->
        </div>
		
		<!-- 2018.09.18 수정 -->
		
		<!-- 네비게이션 -->
		<div id="nvContainer">
			<div class="box_nav">
				<a href="/MMain/main"><img src="../../views/resources/img/nav/nav_01_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MFavorite/favorite_1"><img src="../../views/resources/img/nav/nav_02_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MMyPage/myPage_1"><img src="../../views/resources/img/nav/nav_03_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MBoard/board_1"><img src="../../views/resources/img/nav/nav_04_Unchecked.png"></a>
			</div>
		</div>
	<!--wrap end -->
	
    </div>
	
	<!-- script -->
	<script src="../../views/resources/js/jquery-1.4.4.min.js"></script>
	<script src="../../views/resources/js/mobile/base.js"></script>
	<script src="../../views/resources/js/mobile/common.js"></script>
	<script src="../../views/resources/js/mobile/responsive.js"></script>

</body>

</html>