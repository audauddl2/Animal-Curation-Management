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
    <link rel="stylesheet" type="text/css" href="/views/resources/css/mobile/commonM.css" >
	<link rel="stylesheet" type="text/css" href="/views/resources/css/mobile/search_1.css"/>
	<script type="text/javaScript">
	
		function urlLocation(gubun) {
		
			var frm = document.frm;
			
			frm.gubunCode.value = gubun;
						
			frm.method = "post";
			frm.action = "/MUseSearch/useSearch";
			frm.submit();
		}
	
	</script>


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
					<img src="/views/resources/img/btn_back.png">
				</div>
				<p class="headerText">용도별 검색</p>
			</div>
		</div>
		
        <div id="frameContainer">
			<form name="frm" id="frm" method="post" action="#">
			
				<input type="hidden" name="gubunCode" id="gubunCode" value="">
				<input type="text" name="urlLocation" id="urlLocation" value="">
			
			</form>
		
			
            <div id="contents">
				<!-- innerBox -->
                <div class="innerBox">
					<!-- showArea 영역-->
					<div class="showArea"> 
						<!-- 외부 div 1영역-->
						<div class="outBox">
							<!--내부 div -->
							<button class="box" onclick="urlLocation('CS_5');">
								<img src="/views/resources/img/main/main_1_01.png">
							</button>
							
							<button class="box" onclick="urlLocation('CS_6');">
								<img src="/views/resources/img/main/main_1_02.png">
							</button>
							
							<button class="box" onclick="urlLocation('CS_7');">
								<img src="/views/resources/img/main/main_1_03.png">
							</button>
							
							<button class="box" onclick="urlLocation('CS_8');">
								<img src="/views/resources/img/main/main_1_04.png">
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
				<a href="/MMain/main"><img src="/views/resources/img/nav/nav_01_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MFavorite/favorite_1"><img src="/views/resources/img/nav/nav_02_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MMyPage/myPage_1"><img src="/views/resources/img/nav/nav_03_Unchecked.png"></a>
			</div>
			<div class="box_nav">
				<a href="/MBoard/board_1"><img src="/views/resources/img/nav/nav_04_Unchecked.png"></a>
			</div>
		</div>
	<!--wrap end -->
	
    </div>
	
	<!-- script -->
	<script src="/views/resources/js/jquery-1.4.4.min.js"></script>
    <script src="/views/resources/js/mobile/base.js"></script>
    <script src="/views/resources/js/mobile/common.js"></script>
	<script src="/views/resources/js/mobile/responsive.js"></script>
	
</body>

</html>