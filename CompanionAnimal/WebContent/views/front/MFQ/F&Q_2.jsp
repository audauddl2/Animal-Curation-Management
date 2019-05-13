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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/F&Q_2.css"/>

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
					
						<!-- btnWrap 영역-->
						<div class="btnWrap">
							<div class="FQBtn">
								<a class="FQBtnText" href="/MFQ/F&Q_1">F<span>&amp;</span>Q</a>
							</div>
							<div class="borderBar"></div>
							<div class="QBtn">
								<a class="QText" href="/MFQ/F&Q_2">문의하기</a>
							</div>
						</div>					
						
						
						<!--resultText-->
						<div class="resultTextWrap">
							<p class="resultText"><span class="resultTextColor">팻푸드</span>를 이용하면서 불편한 점, 궁금한 점을 말씀해주세요. 여러분의 소중한 의견이 더 나은 <span class="resultTextColor">팻푸드</span>를 만들 수 있습니다.</p>
						</div>
						
						
						<!--categoryInfo-->
						<div class="categoryInfo">
							<div class="categoryArea">								
								<p class="categoryText">문의 유형</p>
								
								<!-- script 작접시 수정-->
								<div class="categoryChoice">
									<p class="choiceText">카테고리를 선택해주세요</p>
									<img class="downBtn" src="../../views/resources/img/downBtn.png">
								</div>		
							</div>
						</div>
						
						
						<!-- FQContents -->
						<div class="FQContents">
							<div class="FQContentsArea">								
								<p class="FQContentsText">문제 내용</p>
								
								<!-- script 작접시 수정-->
								<div class="FQContentsWrap">
									<input class="FQText" type="text" placeholder="의견을 입력해주세요."></input>
								</div>		
							</div>
						</div>
						
						<!--emailInfo-->
						<div class="emailInfo">
							<div class="emailArea">								
								<p class="emailWrapText">답변 받을 이메일</p>
								
								<!-- script 작접시 수정-->
								<div class="emailTextWrap">
									<input class="emailText" type="text" placeholder="이메일(email@email.com)"></input>
								</div>
								
								<!-- script 작접시 수정-->
								<div class="emailChoice">
									<p class="emailChoiceText">직접입력</p>
									<img class="downBtn" src="../../views/resources/img/downBtn.png">
								</div>	
							</div>
						</div>
						
						
						<!--addBtn-->
						<div class="addBtn">
							<p class="addText">문의 하기</p>
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