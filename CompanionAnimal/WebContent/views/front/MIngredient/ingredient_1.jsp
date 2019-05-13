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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/ingredient_1.css"/>

</head>

<body>
    <div id="wrap">
		<!--popUp 영역-->
		<div id="mask"></div>		
		<div id="popUpContainer">
			<div class="popUp">				
				<div class="popUpIn">
					<p>성분명</p>
					<p>영문명</p>
					<div class="infoWrap">					
						<p class="useType">용도 : 보존제 </p>
						<div class="useBox">
							<img src="../../views/resources/img/popUpIcon_elements/popUpIcon_elements_1_01.png">
							<p>EWG 등급</p>
							<P>위험도 등급</P>
						</div>
						
						<div class="dangerBox">
							<img src="../../views/resources/img/popUpIcon_elements/popUpIcon_elements_2_01_checked.png">
							<p>주의성분 있음</p>
						</div>
						
						<div class="allergyBox">
							<img src="../../views/resources/img/popUpIcon_elements/popUpIcon_elements_2_02_checked.png">
							<P>알레르기 유발 성분 있음</P>
						</div>
						<p class="explain">설명</p>
					</div>
					<div class="close">
						<p class="closeText">확인</p>
					</div>
				</div>
			</div>
		</div>
		<!-- header 영역-->
        <div id="hdContainer">
			<div class="header">
				<div class="back_btn">
					<img src="../../views/resources/img/btn_back.png">
				</div>
				<p class="headerText">성분</p>
			</div>
		</div>
		
        <div id="frameContainer">
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
					
						<!-- ingredientInfo -->
						<div class="ingredientInfo">
							<div class="ingredientArea">
								<p class="ingredientName">성분 구성</p>
								<div class="barWrap">
									<div class="barOne"></div>
									<div class="barTwo"></div>
									<div class="barThree"></div>
									<div class="barFour"></div>
								</div>
								<div class="infoArea">
									<img class="iconCare" src="../../views/resources/img/icon_elementsAlert.png">
									<p class="careName">주의성분 <span class="careCnt">1</span>개</p>
								</div>
								<div class="infoArea">
									
									<img class="iconAllergy" src="../../views/resources/img/icon_elementsAllergy.png">
									<p class="careName">알레르기 유발 성분 <span class="careCnt">1</span>개</p>					
								</div>
							</div>
						</div>
						
						<!-- idTextWrap 영역-->
						<div class="idTextWrap">
							<div class="idTextArea">
								<p class="idText">전 성분 순서대로 기재되어 있습니다.</p>
							</div>					
						</div>
						<!--해당영역 반복문-->
						<div class="ingredientInfo openMask">
							<div class="ingredientArea">
								<img class="goodImg" src="../../views/resources/img/grade/icon_elementsGrade_01.png">
								<p class="goodText">text</p>				
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
	<script src="../../views/resources/js/mobile/popUp.js"></script>

</body>

</html>