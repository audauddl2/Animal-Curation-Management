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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/main.css"/>

</head>

<body>
    <div id="wrap">
		<!--popUp 영역-->
		<div id="mask"></div>
		<div id="popUpContainer"></div>
		
		<!-- header 영역-->
        <div id="hdContainer">
			<div class="header">
				<!-- 로고 영역-->
				<div class="logoArea">
					<div class="logo">
						<img src="../../views/resources/img/logoImage/petfood_logo.png">
					</div>
				</div>	
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						<!-- 외부 div 1영역-->
						<div class="outBox">
						   
							<!-- body 영역-->
							<div class="innerbox">
								<!-- 검색 바 영역-->
								<div class="seachpBox">
									<img src="../../views/resources/img/icon_search.png"/>
									<input type="text" class="searchText" placeholder=""/>
								</div>
								<!-- 광고이미지 영역-->
								<div class="ad">
								</div>
								<!-- 메뉴 영역-->
								<div class="gapBox"></div>
								<div class="menu">
									<div class="box">
										<a href="/MSearch/search_1"><img src="/views/resources/img/main/main_0_01.png"></a>
										<div class="borderBar"></div>
									</div>
									<div class="box">
										<a href="/MSearch/search_2"><img src="/views/resources/img/main/main_0_02.png"></a>
										 <div class="borderBar"></div>
									</div>
									<div class="box">
										<a href="/MSearch/search_3"><img src="/views/resources/img/main/main_0_03.png"></a>
										 <div class="borderBar"></div>
									</div>
									<div class="box">
										<a href="/MSearch/search_4"><img src="/views/resources/img/main/main_0_04.png"></a>
										
									</div>
								</div>
								<div class="gapBox"></div>
								<!-- 인기 제품 영역-->
								<div class="popularA">
									<div class="titleBox">
										<a href="#"><p>이달의 인기제품</p></a>
										<div class="nextBtn">
											<img src="/views/resources/img/nextBtn.png">
										</div>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
								</div>
								<!-- 광고이미지 영역-->
								<div class="gapBox"></div>
								<div class="event">
									<img>
								</div>				
								<!-- 맞춤형 제품 영역-->
								<div class="popularB">
									<div class="titleBox">
										<a href="#"><p>--님을 위한 맞춤형 추천 제품</p></a>										
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
									<div class="product">
										<a href="#">
											<div class="productImg"></div>
											<div class="productinfo">
												<p class="brand">브랜드</p>
												<p class="productName">제품명</p>
											</div>
										</a>
									</div>
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
				<a href="/MMain/main"><img src="../../views/resources/img/nav/nav_01_checked.png"></a>
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