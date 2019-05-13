<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="./resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="./resources/css/header.css">
<link rel="stylesheet" type="text/css" href="./resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="./resources/css/contents.css">

<!-- JS -->
<script src="./resources/js/jquery-1.4.4.min.js"></script>
<script src="./resources/js/jquery.form.js"></script>
<script src="./resources/js/common/nav.js"></script>


</head>
<body>
	<!-- 네비게이션 -->
	<ul class="Nav">
		<li id="tab-1" class="tab-link img1 on"><a style="padding:0 125px 34px 125px" href="/adm/home" target="main"></a></li>
		
		<li id="tab-2" class="tab-link img2"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="/adm/productList" target="main">상품 조회/수정</a></li>
			<li><a href="/adm/productWrite" target="main">상품 등록</a></li>
			<li><a href="#none">상품 일괄 등록</a></li>
		</ul>
		
		<li id="tab-3" class="tab-link img3"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		
		<li id="tab-4" class="tab-link img4"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="/review/reviewRegister" target="main">리뷰 등록</a></li>
			<li><a href="/review/reviewManagement" target="main">리뷰 관리</a></li>					
		</ul>
		<li id="tab-5" class="tab-link img5"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="/bbsList?flag=co" target="main">칼럼 관리</a></li>
			<li><a href="/WebContent/views/board/event/eventList.jsp" target="main">이벤트 관리</a></li>
			<li><a href="/bbsList?flag=no" target="main">공지사항 관리</a></li>
			<li><a href="#none">F&Q 관리</a></li>
			<li><a href="/bbsList?flag=qa" target="main">Q&A 관리</a></li>
			<li><a href="/bbsList?flag=pa" target="main">제품 분석 요청 관리</a></li>
			<li><a href="/bbsList?flag=ad" target="main">광고 관리</a></li>
		</ul>
		
		<li id="tab-6" class="tab-link img6"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="/ingredientRST/ingredientInquiry" target="main">성분 조회/수정</a></li>
			<li><a href="/ingredientRST/ingredientRegister" target="main">성분 등록</a></li>
			<li><a href="#none">성분일괄 등록</a></li>
		</ul>
		
		<li id="tab-7" class="tab-link img7"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="/codeManagement/productCodeManagement" target="main">상품 등록 코드 관리</a></li>
			<li><a href="/codeManagement/ingredientCodeManagement" target="main">성분 등록 코드 관리</a></li>
		</ul>
		<li id="tab-8" class="tab-link img8"><a style="padding:0 125px 34px 125px" href="#none"></a></li>
		<ul class="action">
			<li><a href="#none">어플관리 수정</a></li>
			<li><a href="#none">이용약관 수정</a></li>
		</ul>
	</ul>
</body>
</html>