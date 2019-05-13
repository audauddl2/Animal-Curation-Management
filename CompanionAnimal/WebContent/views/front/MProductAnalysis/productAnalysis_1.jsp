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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/productAnalysis_1.css"/>

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
				<p class="headerText">제품 분석</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
					
						<!-- idTextWrap 영역-->
						<div class="idTextWrap">
							<div class="idTextArea">
								<p class="idText"><span class="textColor">아이디</span> 님이 분석한 제품</p>
							</div>					
						</div>
						
						<!-- 해당영역 반복문 -->
						<!-- analysisInfo -->
						<button class="analysisInfo" onclick="location.href='/MProductAnalysisResult/productAnalysisResult_1'">
							<div class="analysisArea">
								<img class="iconAnalysis" src="../../views/resources/img/elementsAnalysis/icon_type_01.png">
								<div class="infoText">
									<p class="brandName">브랜드명</p>
									<p class="productName">제품명</p>
									<p class="categoryName">카테고리명</p>					
								</div>
								
							</div>
						</button>
						<div class="addBtnWrap">
							<button class="addBtn" onclick="location.href='/MProductSearch/productSearch.html'">
								<!-- 버튼이미지 추가시 수정
								<img class="iconAdd"src="./img/icon_wastebasket_02.png">	
								-->
								<p class="addText">추가</p>
							</button>
							
							<button class="addBtnT" onclick="location.href='/MProductSearch/productSearch.html'">
								<!-- 버튼이미지 추가시 수정
								<img class="iconAdd"src="./img/icon_wastebasket_02.png">	
								-->
								<p class="addText">제품 분석 요청</p>
							</button>
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