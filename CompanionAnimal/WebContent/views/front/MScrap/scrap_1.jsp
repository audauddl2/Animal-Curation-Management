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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/scrap_1.css" >

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
				<p class="headerText">스크랩</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<div class="innerBox">
					<div class="showArea">
						<!-- btnWrap 영역-->
						<div class="btnWrap">
							<div class="columnBtn">
								<a class="columnText" href="/MScrap/scrap_1">칼럼</a>
							</div>
							<div class="borderBar"></div>
							<div class="reviewBtn">
								<a class="reviewText" href="/MScrap/scrap_2">리뷰</a>
							</div>
						</div>
						
						<!-- columnBox 영역-->
						<div class="columnBox">
							<div class="columnImg"></div>
							<p class="columnTitle">제목</p>
							<p class="columnCategory">카테고리</p>
						</div>
						
						<div class="columnBox">
							<div class="columnImg"></div>
							<p class="columnTitle">제목</p>
							<p class="columnCategory">카테고리</p>
						</div>
						
						<div class="columnBox">
							<div class="columnImg"></div>
							<p class="columnTitle">제목</p>
							<p class="columnCategory">카테고리</p>
						</div>
						
						<div class="columnBox">
							<div class="columnImg"></div>
							<p class="columnTitle">제목</p>
							<p class="columnCategory">카테고리</p>
						</div>
					<!-- showArea end-->
					</div>
				<!-- innerBox end-->
				</div>	
			<!--contents end -->
            </div>		
		<!--frameContainer end -->
        </div>
		
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