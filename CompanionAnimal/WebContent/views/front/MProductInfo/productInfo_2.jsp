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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/productInfo_2.css"/>

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
				<p class="headerText">제품정보</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						<!-- linkWrap -->
						<div class="linkWrap">
							<img class="iconBKmark" src="../../views/resources/img/icon_bookmark_Unchecked.png">
							<img class="iconAlert" src="../../views/resources/img/icon_alert.png">
							<div class="linkBox"></div>				
							<p class="linkText"><브랜드관(link)></p>
							<p class="productName">제품명</p>
							<p class="productText">중량, 가격 / 100g당 <span class="productPrice"></span> 원</p>
							<p class="tag">#보상용 #육류-소 #뼈/관절 #다이어트 #사사미육포</p>
						</div>
					
						<!-- btnWrap 영역-->
						<div class="btnWrap">
							<div class="columnBtn">
								<a class="columnText" href="/MProductInfo/productInfo_1">성분 및 특징</a>
							</div>
							
							<div class="borderBar"></div>
							
							<div class="reviewBtn">
								<a class="reviewText" href="MPdocutInfo/productInfo_2">리뷰</a>
							</div>
						</div>
						
						<!-- gradeInfo -->
						<div class="gradeInfo">
							<div class="gradeArea">
								<p class="gradeName">평점</p>

								<div class="gradeImgBox">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<p class="reviewGrade">5.0</p>					
								</div>
								<button class="writeReviewBox" onclick="location.href='/MWriteReview/writeReview_2'"><img src="../../views/resources/img/btn_reviewWright.png"></button>
								
								
								<!-- reviewImgWrap -->
								<div class="reviewImgWrap">
									<div class="reviewImgAreaA">
										<div class="reviewImgFt"></div>
										<div class="reviewImg"></div>
										<div class="reviewImg"></div>
										<div class="reviewImgMN"></div>
									</div>
								</div>						
							</div>			
						</div>
						
						<!-- showReviewBox-->
						<div class="showReviewBox">
							<div class="reviewBoxArea">
								<img class="checkBoxImg" src="../../views/resources/img/checkBox/checkBox_02_checked.png">
								<p class="checkBoxText">내 강아지 맞춤 리뷰 보기</p>
							</div>							
						</div>
						
						<!-- 해당영역 반복문 -->
						<!-- petInfo 영역-->
						<div class="petInfo">
							<div class="petInfoArea">
								<img class="iconUser" src="../../views/resources/img/icon_User.png">
								<div class="infoText">
									<p class="petName">닉네임</p>
									<p class="petType">품종/나이/특성</p>
									<div class="productInfoText">
										<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
										<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
										<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
										<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
										<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
										<p class="reviewGrade">5.0</p>					
									</div>
									
								</div>							
							</div>
						</div>
						
						<!-- reviewInfo -->
						<div class="reviewInfo">
							<div class="reviewInfoArea">
								<img class="reviewGoodImg" src="../../views/resources/img/review/icon_reviewGrade_2_01.png">
								<p class="reviewGoodText">text</p>
								
							</div>
							
							<div class="reviewInfoArea">
								<img class="reviewBedImg" src="../../views/resources/img/review/icon_reviewGrade_2_02.png">
								<p class="reviewBedText">text</p>
							</div>
							
							<div class="reviewInfoArea">
								<img class="reviewTipImg" src="../../views/resources/img/review/icon_reviewGrade_2_03.png">
								<p class="reviewTipText">text</p>
							</div>
						</div>
						
						<!-- reviewImgWrap -->
						<div class="reviewImgWrap">
							<div class="reviewImgArea">
								<div class="reviewImgFt"></div>
								<div class="reviewImg"></div>
								<div class="reviewImg"></div>
								<div class="reviewImgMN"></div>
							</div>
						</div>
						
						<img class="moreImg" src="../../views/resources/img/btn_viewMore.png">
						
						<div class="gap"></div>
						
						<div class="recommandBtn">
							<p class="recommandText">이 제품과 유사한 제품 추천</p>
						</div>
						<!-- productInfo -->
						<!-- 해당영역 반복문
						
						<div class="productInfo">
							<div class="productInfoArea">
								<div class="iconProduct"></div>
								
								<div class="productInfoText">
									<p class="productName">text (text)</p>
									<p class="productType">text</p>												
								</div>								
							</div>
							
						</div>
						 -->
						
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