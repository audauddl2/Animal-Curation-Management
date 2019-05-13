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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/option_1.css"/>

</head>

<body>
    <div id="wrap">
		<!--popUp 영역-->
		<div id="mask"></div>
		<div id="popUpContainer">
			<div class="popUp">				
				<div class="popUpIn">
					<p class="topText">로그아웃 하시겠습니까?</p>
					<div class="imgWrap">
						<img src="../../views/resources/img/popUpIcon/popUpicon_3_01.png">
					</div>
					
					<div class="buttonWrap">
						<div class="logoutY">
							<p class="logoutYText">예</p>
						</div>
						<div class="borderBar"></div>
						<div class="logoutN close">
							<p class="logoutNText">아니오</p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<!-- header 영역-->
        <div id="hdContainer">
			<div class="header">
				<div class="back_btn">
					<img src="../../views/resources/img/btn_back.png">
				</div>
				<p class="headerText">옵션</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
					
						<!-- optionInfo -->
						<div class="optionInfo">
							<a href="./appCare_1.html" class="optionInfoArea">								
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_01.png">
								<p class="optionText">어플관리</p>
							</a>							
						</div>
						<div class="optionInfo">
							<a href="./alarm_1.html" class="optionInfoArea">										
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_02.png">
								<p class="optionText">알림설정</p>
							</a>							
						</div>
						<div class="optionInfo">
							<a href="./F&Q_1.html" class="optionInfoArea">										
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_03.png">
								<p class="optionText">문의사항</p>
							</a>							
						</div>
						<div class="optionInfo">
							<a href="./personalInfo_1.html" class="optionInfoArea">										
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_04.png">
								<p class="optionText">이용약관</p>
							</a>							
						</div>
						<div class="optionInfo">
							<a href="./account.html" class="optionInfoArea">
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_05.png">
								<p class="optionText">탈퇴하기</p>
							</a>							
						</div>
						<div class="optionInfo">
							<div class="optionInfoArea openMask">				
								<img class="iconOption" src="../../views/resources/img/setting/icon_setting_06.png">
								<p class="optionText">로그아웃</p>
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
	<script src="../../views/resources/js/mobile/popUp.js"></script>

</body>


</html>