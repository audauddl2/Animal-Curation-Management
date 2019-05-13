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
	<link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/productInfo_1.css"/>

</head>

<body>
    <div id="wrap">
		<!--popUp 영역-->
		<div id="mask"></div>
		<div id="popUpContainer">
			<div class="popUp">				
				<div class="popUpIn">
					<p class="topText">내용을 입력해주세요.</p>
					<div class="imgWrap">
						<img src="../../views/resources/img/popUpIcon/popUpicon_2_01.png">
					</div>
					<p class="middleText">내용을 입력해주세요.</p>
					<div class="buttonWrap">
						<div class="close">
						<p class="closeText">확인</p>
					</div>
					</div>
					
				</div>
				
				<div class="popUpIn">
					<p class="topText">딱딱함</p>
					<div class="imgWrap">
						<img src="../../views/resources/img/popUpIcon/popUpicon_2_02.png">
					</div>
					<p class="middleText">내용을 입력해주세요.</p>
					<div class="buttonWrap">
						<div class="close">
						<p class="closeText">확인</p>
					</div>
					</div>
					
				</div>
				
				<div class="popUpIn">
					<p class="topText">기름짐</p>
					<div class="imgWrap">
						<img src="../../views/resources/img/popUpIcon/popUpicon_2_03.png">
					</div>
					<p class="middleText">내용을 입력해주세요.</p>
					<div class="buttonWrap">
						<div class="close">
						<p class="closeText">확인</p>
					</div>
					</div>
					
				</div>
				
				<div class="popUpIn">
					<p class="topText">촉촉함</p>
					<div class="imgWrap">
						<img src="../../views/resources/img/popUpIcon/popUpicon_2_03.png">
					</div>
					<p class="middleText">내용을 입력해주세요.</p>
					<div class="buttonWrap">
						<div class="close">
						<p class="closeText">확인</p>
					</div>
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
				<p class="headerText">제품 정보</p>
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
								<a class="reviewText" href="/MProductInfo/productInfo_2">리뷰</a>
							</div>
						</div>
						
						<div class="ingredientYN">
							<div class="ingredientYNWrap">
								<p class="ingredientYNText">성분공개</p>
								<img class="iconGradeYN" src="../../views/resources/img/grade/icon_elementsGrade_01.png">
								<img class="iconGradeYN" src="../../views/resources/img/grade/icon_elementsGrade_03.png">
							</div>
						</div>
						
						<!-- ingredientInfo -->
						<div class="ingredientInfo">
							<div class="ingredientArea">
								<button class="ingredientContent" onclick="location.href='/MIngredient/ingredient_1'">
									<p class="ingredientName">성분 구성</p>
									<div class="barWrapA">
										<div class="barOneA"></div>
										<div class="barTwoA"></div>
										<div class="barThreeA"></div>
										<div class="barFourA"></div>
									</div>
									<div class="infoArea">
										<img class="iconCare" src="../../views/resources/img/icon_elementsAlert.png">
										<p class="careName">주의성분 <span class="careCnt">1</span>개</p>
									</div>
									<div class="infoAreaT">
										
										<img class="iconAllergy" src="../../views/resources/img/icon_elementsAllergy.png">
										<p class="allergyName">알레르기 유발 성분 <span class="careCnt">1</span>개</p>					
									</div>
								</button>
								
								<div class="borderBarT"></div>
								
								<div class="ingredientContentG">
									<p class="ingredientName">등급</p>
									<img class="iconGrade" src="../../views/resources/img/grade/icon_productGrade_01.png">
								</div>
							</div>
						</div>
						
						<!-- rateInfo -->
						<div class="rateInfo">
							<div class="rateInfoArea">
								<!--스크립트 작업시 수정-->
								<p class="rateText">성분 비율</p>
								<div class="barAreaB">
									<p class="barTextB">딱딱함</p>
									<div class="barWrapB">
										<div class="barOneB"></div>
										<div class="barTwoB"></div>
									</div>
									<p class="barPercentB">45%</p>
								</div>
								
								<div class="barAreaB">
									<p class="barTextB">기름짐</p>
									<div class="barWrapB">
										<div class="barOneB"></div>
										<div class="barTwoB"></div>
									</div>
									<p class="barPercentB">45%</p>
								</div>
								
								<div class="barAreaB">
									<p class="barTextB">촉촉함</p>
									<div class="barWrapB">
										<div class="barOneB"></div>
										<div class="barTwoB"></div>
									</div>
									<p class="barPercentB">45%</p>
								</div>
								
								<div class="nutrimentInfo">
									<div class="nutrimentArea">
										<p class="nutrimentText">칼슘</p>
										<div class="nutrimentContent">
											<div class="nutrimentOne"></div>
											<div class="nutrimentTwo"></div>
										</div>
										<p class="nutrimentPercent">45%</p>
									</div>								
								</div>
								
								<div class="nutrimentInfo">
									<div class="nutrimentArea">
										<p class="nutrimentText">오메가6</p>
										<div class="nutrimentContent">
											<div class="nutrimentOne"></div>
											<div class="nutrimentTwo"></div>
										</div>
										<p class="nutrimentPercent">45%</p>
									</div>								
								</div>								
					
					
								
								<div class="nutrimentInfo">
									<div class="nutrimentArea">
										<p class="nutrimentText">인</p>
										<div class="nutrimentContent">
											<div class="nutrimentOne"></div>
											<div class="nutrimentTwo"></div>
										</div>
										<p class="nutrimentPercent">45%</p>
									</div>								
								</div>
								
								<div class="nutrimentInfo">
									<div class="nutrimentArea">
										<p class="nutrimentText">오메가3</p>
										<div class="nutrimentContent">
											<div class="nutrimentOne"></div>
											<div class="nutrimentTwo"></div>
										</div>
										<p class="nutrimentPercent">45%</p>
									</div>								
								</div>
								
								
							</div>
						</div>
						
						<!-- featureInfo -->
						<div class="featureInfo">
							<div class="featureInfoArea openMask">
								<!--스크립트 작업시 수정-->
								<p class="featureText">제품 특징</p>
								<div class="barAreaC">
									<p class="barTextC">딱딱함</p>
									<div class="barWrapC">
										<div class="barOneC"></div>
										<div class="barTwoC"></div>
									</div>
									<p class="barPercentC">45%</p>
								</div>
								
								<div class="barAreaC">
									<p class="barTextC">기름짐</p>
									<div class="barWrapC">
										<div class="barOneC"></div>
										<div class="barTwoC"></div>
									</div>
									<p class="barPercentC">45%</p>
								</div>
								
								<div class="barAreaC">
									<p class="barTextC">촉촉함</p>
									<div class="barWrapC">
										<div class="barOneC"></div>
										<div class="barTwoC"></div>
									</div>
									<p class="barPercentC">45%</p>
								</div>
							</div>
						</div>

						<!--
						<div class="gap"></div>
						
						<div class="recommandBtn">
							<p class="recommandText">이 제품과 유사한 제품 추천</p>
						</div>
					
						<div class="productInfo">
							<div class="productInfoArea">
								<div class="iconProduct"></div>
								<!-- 상품 이지지 추가 시 변경
								<img class="iconProduct" src="./img/icon_User.png">
						
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
	<script src="../../views/resources/js/mobile/popUp.js"></script>
</body>


</html>