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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/productSearch_1.css"/>

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
				<p class="headerText">직접 제품 분석</p>
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
								<p class="idText">전성분을 순서대로 입력하면 바로 결과를 확인할 수 있습니다.</p>
							</div>					
						</div>
						
						<!--categoryInfo-->
						<div class="categoryInfo">
							<div class="categoryArea">								
								<p class="categoryText">카테고리</p>
								
								<ul class="selectBtnOne">
								<li class="menuDown one"><p class="btnText">카테고리를 선택해주세요</p></li>
								
								<ul class='menuSub'>
									<li><a class="btnText" href="#none">서브네비</a></li>
									<li><a class="btnText" href="#none">서브네비</a></li>
									<li><a class="btnText" href="#none">서브네비</a></li>
								</ul>
							</ul>
								
							</div>
						</div>
						
						<!--brandInfo-->
						<div class="brandInfo">
							<div class="brandArea">								
								<p class="brandText">브랜드</p>
								
								<!-- script 작접시 수정-->
								<div class="brandInput">
									<input type="text" class="brandInputText" placeholder="브랜드명을 입력해주세요">
								</div>
								
							</div>
						</div>
						
						<!--productInfo-->
						<div class="productInfo">
							<div class="productArea">								
								<p class="productText">제품</p>
								
								<!-- script 작접시 수정-->
								<div class="productInput">
									<input type="text" class="productInputText" placeholder="제품명을 입력해주세요">
								</div>
								
							</div>
						</div>
						
						<!--script 작업시 수정 -->
						<!--ingredientAllInfo-->
						<div class="ingredinetAllInfo">
							<div class="ingredientAllArea">								
								<p class="ingredientAllName">전성분</p>
								<p class="ingredientAllText">성분명을 입력 후 Enter를 누르시명 입력창이 생깁니다.</p>
								<!-- script 작접시 수정-->
								<div class="ingredientAllInput">
									<input type="text" class="ingredientAllInputText" placeholder="제품명을 입력해주세요">
									<img class="iconDelete" src="../../views/resources/img/icon_delete.png">
								</div>
								
							</div>
						</div>
						
						<!--resultText-->
						<div class="resultTextWrap">
							<p class="resultText">분석 결과는 마이페이지 <span class="resultTextColor">'제품 분석'</span>에서 다시 확인할 수 있습니다.</p>
						</div>
						
						
						<!--addBtn-->
						<div class="addBtn">
							<!-- 버튼이미지 추가시 수정
							<img class="iconAdd"src="./img/icon_wastebasket_02.png">	
							-->
							<p class="addText">결과 확인</p>
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
	<script src="../../views/resources/js/mobile/menuClick.js"></script>
</body>


</html>