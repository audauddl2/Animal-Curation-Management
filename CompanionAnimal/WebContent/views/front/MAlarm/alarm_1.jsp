<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 user-scalable=0">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/commonM.css" >
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/alarm_1.css"/>

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
				<p class="headerText">알림설정</p>
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
							<div class="optionInfoArea">
								<p class="optionText">전체 알림</p>
								<img class="iconOption" src="../../views/resources/img/setting/slideBtn_on.png">
							</div>							
						</div>
						
						<div class="gap"></div>
						
						<div class="optionInfo">
							<div class="optionInfoArea">
								<p class="optionText">댓글 알림</p>
								<img class="iconOption" src="../../views/resources/img/setting/slideBtn_on.png">
							</div>							
						</div>
						<div class="optionInfo">
							<div class="optionInfoArea">
								<p class="optionText">요청 제품 등록 알림</p>
								<img class="iconOption" src="../../views/resources/img/setting/slideBtn_on.png">
							</div>							
						</div>
						<div class="optionInfo">
							<div class="optionInfoArea">
								<p class="optionText">새 이벤트 알림</p>
								<img class="iconOption" src="../../views/resources/img/setting/slideBtn_off.png">
							</div>							
						</div>
						<div class="optionInfo">
							<div class="optionInfoArea">
								<p class="optionText">새 컬럼 알림</p>
								<img class="iconOption" src="../../views/resources/img/setting/slideBtn_off.png">
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