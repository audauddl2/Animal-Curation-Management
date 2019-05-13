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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/writeReview_1.css"/>

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
				<p class="headerText">내가 쓴 리뷰</p>
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
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<img class="reviewGradeImg" src="../../views/resources/img/review/icon_reviewGrade_checked.png">
									<p class="reviewGrade">5.0</p>					
								</div>
								
								<img class="iconWrite"src="../../views/resources/img/icon_reviewEdit.png">	
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
								<div class="reviewImg"></div>
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