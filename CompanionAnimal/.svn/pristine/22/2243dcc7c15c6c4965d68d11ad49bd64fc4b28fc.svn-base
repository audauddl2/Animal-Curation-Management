<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
	<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
	<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
	<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">
	
	<!-- JS -->
    <script type="text/javascript" src="/views/resources/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/views/resources/js/jquery.form.js"></script>
    <script type="text/javascript" src="/views/resources/js/common/common.js"></script>
    <script type="text/javascript" src="/views/resources/js/common/jsutil.js"></script>
	<script type="text/javascript" src="/views/resources/js/product/productWrite.js"></script>
	
	<style>
		/*CarcinogenYN*/
		.Carcinogen { overflow:hidden; margin-bottom:10px; *zoom:1 }
		.Carcinogen:after { display:block; clear:both; content:'' }
		.Carcinogen li { position:relative; float:left; margin:0 7px 0 0 }
		.Carcinogen li .chkbox1 { display:block; text-align:center }
		.Carcinogen li .chkbox1 input { position:absolute; z-index:-1 }
		.Carcinogen li .chkbox1 label { display:block; width:72px; height:26px; font-size:14px; font-weight:bold; color:#fff; text-align:center; line-height:25px; text-decoration:none; cursor:pointer; background:#a5b0b6 }
		.Carcinogen li .chkbox1.on label { background:#ec6a6a }
		
		.maindiv { position:relative; float:left; width:100%; margin:5px 10px 5px 10px; }
		.subTitle { font-size:17px; margin:0 0 10px 0; }

		.subdiv { position:relative; float:left; width:98%; height:22px; margin:5px 10px 5px 10px; }
		.title { display:inline-block; width:65px; height:100%; text-align:left; vertical-align:middle; }
		.subContent { display:inline-block; }
		.content { display:inline-block; text-align:center; vertical-align:middle; }
		
		.inpType { padding-left:6px; width:350px; height:24px; line-height:24px; border:1px solid #dbdbdb; }
		.crude_inpType { padding-left:6px; width:150px; height:24px; line-height:24px; border:1px solid #dbdbdb; }
		.inputRange { height:10px; width:400px; }
		.rangeInputVal { padding-left:6px; width:15px; height:24px; line-height:24px; border:1px solid #dbdbdb; }
		
		.percent { display:inline-block; width:30px; height:100%; vertical-align:middle; }
		.ingreients { padding-left:6px; width:350px; height:24px; line-height:24px; border:1px solid #dbdbdb; }
		
		.btn { width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6; margin:0 10px 0 0; }
		
		.ingredientContent { margin:0 0 3px 0; }
		
		
	</style>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
			
		}
	%>
	<div class="InnerWrap">
	
		<!-- 내용 -->
		<div class="Content">
			<div class="InnerContent">
			
				<form name="frm" id="frm" action="/adm/productSave" method="post" style="background-color:#E6E7E8; height:1000px; ">
				
					<input type="text" name="ProductUseVal" id="productUseVal" value="">
					<input type="text" name="productMaterialVal" id="productMaterialVal" value="">
					<input type="text" name="productFunctionVal" id="productFunctionVal" value="">
					<input type="text" name="productKindVal" id="productKindVal" value="">
					<input type="text" name="ingredientNum" id="ingredientNum" value="">
					
					<p style="line-height:50px; border-bottom:1px solid #808284; font-size:20px; margin:0 0 10px 0;">상품 등록</p>					
					
					<div class="maindiv">
						<p class="subTitle">| 상품 정보</p>
						
						<div class="subdiv">				
							<p class="title">이미지</p>
							<input type="file" id="productImage" name="productImage" id="productImage" title="제품 이미지를  선택해주세요">
							<!-- 
							<input class="inpType" style="position:relative; float:left; "type="text" name="ingredientNameKo" placeholder="내용을 입력해 주세요">
							-->					
						</div>
						
						<div class="subdiv">					
							<p class="title">브랜드</p>
							<input type="text" name="brandCode" id="brandCode" value="">
							<input class="inpType" type="text" name="brandName" id="brandName" placeholder="브랜드명을 입력해 주세요"> <input class="btn" type="button" value="검색" name="brandSearch" id="brandSearch">
						</div>
	
						<div class="subdiv">
							<p class="title">제품명</p>
							<input class="inpType" type="text" name="productName" id="productName" placeholder="제품명을 입력해 주세요" value="">	
						</div>
	
						<div class="subdiv">
							<p class="title">가 &nbsp;&nbsp;&nbsp;격</p>
							<input class="inpType number_type" type="text" name="productPrice" id="productPrice" placeholder="제품가격을 입력해 주세요" value="">	
						</div>
						
						<div class="subdiv">
							<p class="title">양</p>
							<input class="inpType number_type" type="text" name="productVolume" id="productVolume" placeholder="제품 양을 입력해 주세요" value="">	
						</div>
	
						<div class="subdiv">
							<p class="title">분류</p>
							
							<div class="subContent">
								<p class="title">용도</p>
								<div class="content">
									<c:forEach var="item" items="${productUseList}" varStatus="status">
										<input type="checkbox" name="productUse" id="productUse_${status.count}" value="${item.codeIdx}">${item.codeName}
									</c:forEach>
								</div>
							</div>
						</div>
	
						<div class="subdiv">
							<p class="title"></p>
							<div class="subContent">
								<p class="title">원료</p>
								<div class="content">
									<c:forEach var="item" items="${productMaterialList}" varStatus="status">
										<input type="checkbox" name="productMaterial" id="productMaterial_${status.count}" value="${item.codeIdx}">${item.codeName}
									</c:forEach>
								</div>
							</div>
						</div>
	
						<div class="subdiv">
							<p class="title"></p>
							<div class="subContent">
								<p class="title">기능</p>
								<div class="content">
									<c:forEach var="item" items="${productFunctionList}" varStatus="status">
										<input type="checkbox" name="productFunction" id="productFunction_${status.count}" value="${item.codeIdx}">${item.codeName}
									</c:forEach>
								</div>
							</div>
						</div>

						<div class="subdiv">
							<p class="title"></p>
							<div class="subContent">
								<p class="title">종류</p>
								<div class="content">
									<c:forEach var="item" items="${productKindList}" varStatus="status">
										<input type="checkbox" name="productKind" id="productKind_${status.count}" value="${item.codeIdx}">${item.codeName}
									</c:forEach>
								</div>
							</div>
						</div>
					</div>					

					<div class="maindiv">
						<p class="subTitle">| 특징</p>
						<div class="subdiv">
							<p class="title">딱딱함</p>				
							<input type="range" class="inputRange" id="productHardRange" name="productHardRange" min="0" max="10" step="1" title="제품 특징 중 딱딱함 정도를 선택해주세요."> <input class="rangeInputVal" type="text" name="productHard" id="productHard" value="" readonly> 점
						</div>

						<div class="subdiv">								
							<p class="title">기름짐</p>						
							<input type="range" class="inputRange" id="productFattyRange" name="productFattyRange" min="0" max="10" step="1" title="제품 특징 중 기름짐 정도를 선택해주세요."> <input class="rangeInputVal" type="text" name="productFatty" id="productFatty" value="" readonly> 점
						</div>
	
						<div class="subdiv">								
							<p class="title">촉촉함</p>						
							<input type="range" class="inputRange" id="productMoistRange" name="productMoistRange" min="0" max="10" step="1" title="제품 특징 중 촉촉함 정도를 선택해주세요."> <input class="rangeInputVal" type="text" name="productMoist" id="productMoist" value="" readonly> 점
						</div>

					</div>

					<div class="maindiv">
						<p class="subTitle">| 성분비/성분 구성</p>
							<p class="title">조단백</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="crudeProtein" id="crudeProtein" placeholder="조단백을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>	
						</div>
	
						<div class="subdiv">
							<p class="title">조지방</p>
							<input class="crude_inpType decmial_numberType" type="text" name="crudeFat" id="crudeFat" placeholder="조지방을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>
						
						<div class="subdiv">
							<p class="title">조섬유</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="crudeFiber" id="crudeFiber" placeholder="조섬유를 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>

						<div class="subdiv">
							<p class="title">조회분</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="crudeAsh" id="crudeAsh" placeholder="조회분을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>

						<div class="subdiv">
							<p class="title">칼슘</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="calcium" id="calcium" placeholder="칼슘을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>
	
						<div class="subdiv">
							<p class="title">인</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="phosphorus" id="phosphorus" placeholder="인을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>
	
						<div class="subdiv">
							<p class="title">오메가3</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="omega3" id="omega3" placeholder="오메가3을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>

						<div class="subdiv">
							<p class="title">오메가6</p>				
							<input class="crude_inpType decmial_numberType" type="text" name="omega6" id="omega6" placeholder="오메가6을 입력해 주세요" value="">&nbsp; <p class="percent">%</p>
						</div>

<!-- 
						<div class="subdiv">
							<p class="title"></p>
							<div>	
								<ul class="ingredients">
									<li>a</li>
									<li>b</li>
								</ul>
							</div>
						</div>
-->

						<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
							<p style="position:relative; float:left; margin:0 10px 0 0;">성분공개</p>
							<ul class="Carcinogen" style="position:relative; float:left; margin:0 0 0 10px;" >
								<li>
									<span class="chkbox1">
										<input type="radio" name="ingredientsYN" value="Y" id="ingredientsY" onclick=""/>
										<label for="ingredientsY">있음</label>
									</span>
								</li>
								<li>
									<span class="chkbox1">
										<input type="radio" name="ingredientsYN" value="N" id="ingredientsN" onclick=""/>
										<label for="ingredientsN">없음</label>
									</span>
								</li>
							</ul>
						</div>

						
						<div class="subdiv">
							<p class="title">성분</p>				
							<input class="btn" type="button" value="추가" name="ingredientAdd" id="ingredientAdd"><input class="btn" type="button" value="삭제" name="ingredientRemove" id="ingredientRemove">
						</div>

						<div class="subdiv ingredient">
							<div id="ingredientContent_1">
								<p class="title"></p>
								<div class="subContent">
									<input type="text" name="ingredientCode_1" id="ingredientCode_1" value="">
									<input class="inpType" type="text" name="ingredient_1" id="ingredient_1" placeholder="성분을 입력해 주세요" value="">
									<input class="btn" type="button" value="검색" name="ingredientSearch_1" id="ingredientSearch_1" onClick="JavaScript:ingredientSearch()">
								</div>
							</div>
						</div>

					</div>
					
					<div style="text-align:center; margin:10px 15px 0 0;">
						<input class="btn" type="submit" value="등록" name="saveBtn" id="saveBtn" ">
						<input class="btn" type="reset" value="초기화" name="cancellBtn" id="cancellBtn">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>