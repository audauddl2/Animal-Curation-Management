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
    <link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/commonM.css">
    <link rel="stylesheet" type="text/css" href="../../views/resources/css/mobile/account.css">
    
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
					
						<!--reasonText-->
						<div class="reasonTextWrap">
							<p class="reasonText">
								<span class="reasonTextColor">탈퇴사유를 선택해 주시길 바랍니다.</span>
							</p>
						</div>
						
						
						<!--reasonInfo-->
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk1"><label for="chk1">성분 정보가 도움이 되지 않아서</label></br>								
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk2"><label for="chk2">리뷰가 도움이되지 않아서</label></br>								
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk3"><label for="chk3">실제 성분 정보와 다른 경우가 있어서</label></br>								
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk4"><label for="chk4">상업적인 리뷰들이 보여서</label></br>
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk5"><label for="chk5">내가 검색한 제품이 없어서</label></br>
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk6"><label for="chk6">속도가 느려서</label></br>
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk7"><label for="chk7">사용 도중에 오류가 많아서</label></br>
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk8"><label for="chk8">대체할 다른 서비스가 있어서</label></br>
							</div>
						</div>
						
						<div class="reasonInfo">
							<div class="reasonArea">
								<input type="checkbox" id="chk9"><label for="chk9">새로 가입하기 위해서</label></br>
							</div>
						</div>
						
						<div class="reasonTextWrap">
							<p class="reasonText">
								<span class="reasonTextColor">팻푸드를 탈퇴하면</span>
							</p>
						</div>
						
						<!--reasonText-->
						<div class="reasonTextWrap">
							<p class="reasonText">
								<span class="reasonTextColor">팻푸드를 탈퇴하면</span>
							</p>
						</div>
						
						<!-- agreeBox-->
						<div class="agreeBox">
							<div class="agreeArea">								
								<p class="textEtc">·마이페이지에 저장된 모든 내 정보가 사라지며 이후 복구가 불가능합니다.</p>
								<p class="textEtc">·스크랩, 분석제품, 즐겨찾기한 모든 정보가 삭제됩니다.</p>
								<p class="textEtc">·작성한 리뷰가 즉시 삭제되며 복구되지 않습니다. </p>
								<br/>
								<img class="agreeImg" src="../../views/resources/img/checkBox/checkBox_01_checked.png">
								<p class="agreeText">모든 정보를 삭제하는 것에 동의합니다.</p>
							</div>							
						</div>
						
						
						<!--addBtn-->
						<button class="addBtn">
							<p class="addText">문의 하기</p>
						</button>
						
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