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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/writeReview_2.css"/>

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
				<p class="headerText">리뷰 작성하기</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						
						<!--반복문 수행-->
						<!-- productInfo -->
						<div class="productInfo">
							<div class="productInfoArea">
								<div class="iconProduct"></div>
								<!-- 상품 이지지 추가 시 변경
								<img class="iconProduct" src="./img/icon_User.png">
								-->
								<div class="productInfoText">
									<p class="productName">text (text)</p>
									<p class="productType">text</p>									
								</div>				
							</div>							
						</div>
						
						<!-- gradeBox -->
						<div class="gradeWrap">
							<div class="gradeBox">
								<p class="gradeText">평점을 선택해 주세요</p>		
								<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
								<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
								<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_Unchecked.png">
								<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_Unchecked.png">
								<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_Unchecked.png">
							</div>
						</div>
							
						<!-- featureInfo -->
						<div class="featureInfo">
							<div class="featureInfoArea">
								<div class="iconTextArea">
									<img class="iconFeature" src="../../views/resources/img/review/icon_reviewGrade_1.png">
									<p class="featureText">제품 특징</p>
								</div>
								
								<!--스크립트 작업시 수정-->
								<div class="barArea">
									<p class="barText">딱딱함</p>
									<div class="barWrap">
										<div class="barOne"></div>
										<div class="barTwo"></div>
									</div>
									<p class="barPercent">45%</p>
								</div>
								
								<div class="barArea">
									<p class="barText">기름짐</p>
									<div class="barWrap">
										<div class="barOne"></div>
										<div class="barTwo"></div>
									</div>
									<p class="barPercent">45%</p>
								</div>
								
								<div class="barArea">
									<p class="barText">촉촉함</p>
									<div class="barWrap">
										<div class="barOne"></div>
										<div class="barTwo"></div>
									</div>
									<p class="barPercent">45%</p>
								</div>
								
							</div>
						</div>
							
						<!-- 스크립트 작업시 수정 -->
						<!-- reviewInfo -->
						<div class="reviewInfo">
							<div class="reviewInfoArea">
								<img class="reviewGoodImg" src="../../views/resources/img/review/icon_reviewGrade_2_01.png">
								<p class="reviewGoodText">장점 (최소 20자 이상)</p>
								<div class="reviewInput">
									<input type="text" class="reviewInputText" placeholder="사용하신 제품의 리뷰를 남겨주세요. 기호성, 특징 등의 사용감을 작성해주세요.">
								</div>
							</div>
							
							<div class="reviewInfoArea">
								<img class="reviewBedImg" src="../../views/resources/img/review/icon_reviewGrade_2_02.png">
								<p class="reviewBedText">단점 (최소 20자 이상)</p>
								<div class="reviewInput">
									<input type="text" class="reviewInputText" placeholder="사용하신 제품의 리뷰를 남겨주세요. 품을 사용하면서 느낀 아쉬운 점을 작성해주세요.">
								</div>
							</div>
							
							<div class="reviewInfoArea">
								<img class="reviewTipImg" src="../../views/resources/img/review/icon_reviewGrade_2_03.png">
								<p class="reviewTipText">사용팁</p>
								<div class="reviewInput">
									<input type="text" class="reviewInputText" placeholder="애완동물의 연령, 특성에 따라 간식을 제공하는 방법, Tip 등이 있다면 공유해주세요. ">
								</div>
							</div>
						</div>
						
						<!-- reviewImgWrap -->
						<div class="reviewImgWrap">
							<div class="reviewImgArea">
								
								<div class="iconArea">
									<img class="iconPicture" src="../../views/resources/img/review/icon_reviewGrade_3.png">
									<p class="pictureText">사진 등록</p>
								</div>
								
								<div class="reviewImg"></div>
								<div class="reviewImg"></div>
								<div class="reviewImg"></div>
								<div class="reviewImgMN"></div>
								
								<!--addBtn-->
								<button class="addBtn" onclick="location.href='/MProductInfo/productInfo_2'">									
									<p class="addText">완료</p>
								</button>
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