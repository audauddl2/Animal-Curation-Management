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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/myPage_1.css"/>

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
				<p class="headerText">마이페이지</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						<!-- infoWrap -->
						<div class="infoWrap">
							<a href="./option_1.html"><img class="iconSet" src="../../views/resources/img/icon_setting_Wh.png"></a>
							<img class="iconUser" src="../../views/resources/img/icon_User_Wh.png">
							
							<p class="petName">강아지명(사용자명)</p>
							<p class="infoEtc">품종/나이/건강특성/기호식품(등 정보)</p>
							<p class="userFavorite">나를 즐겨찾기한 사용자<span class="userCnt">3</span> 명</p>							
						</div>
					
						<!-- btnWrap 영역-->
						<div class="btnWrap">
							<div class="columnBtn">
								<a class="columnText">사용자 정보 수정</a>
							</div>
							<div class="borderBar"></div>
							<div class="reviewBtn">
								<a class="reviewText" href="MSignUpPet/signUpPet">강아지 정보 수정</a>
							</div>
						</div>
						
						<div class="gap"></div>
						
						<!-- btnWrap2 영역-->
						<div class="btnWrap2">
							<button class="btnValue" onclick="location.href='MFavorite/favorite_1'">
								<p class="favoriteCnt">10</p>
								<p class="favoriteText">즐겨찾기</p>
							</button>
							
							<button class="btnValue" onclick="location.href='MScrap/scrap_1'">
								<p class="favoriteCnt">20</p>
								<p class="favoriteText">스크랩</p>
							</button>
							
							<button class="btnValue" onclick="location.href='MProductAnalysis/productAnalysis_1'">
								<p class="favoriteCnt">3</p>
								<p class="favoriteText">제품분석</p>
							</button>
							
							<button class="btnValue" onclick="location.href='MWriteReview/writeReview_1'">
								<p class="favoriteCnt">5</p>
								<p class="favoriteText">리뷰</p>
							</button>
							
						</div>
						
						<div class="gap"></div>
						
						<!-- noticeBox-->
						<div class="noticeBox">
							<div class="noticeBoxArea">
								<img class="noticeBoxImg" src="../../views/resources/img/icon_notice.png">
								<p class="noticeBoxText">공지사항</p>
							</div>							
						</div>
						
						<!-- noticeWrap-->
						<div class="noticeWrap">
							<div class="noticeTextWrap">
								<p class="noticeNum">1.</p>
								<p class="noticeTitle">text</p>
								<p class="noticeDate">18.07.1</p>
							</div>
						</div>
						<div class="noticeWrap">
							<div class="noticeTextWrap">
								<p class="noticeNum">2.</p>
								<p class="noticeTitle">text</p>
								<p class="noticeDate">18.07.1</p>
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
				<a href="/MMyPage/myPage_1"><img src="../../views/resources/img/nav/nav_03_checked.png"></a>
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