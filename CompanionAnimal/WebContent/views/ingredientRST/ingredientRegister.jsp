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
<script src="/views/resources/js/jquery-1.4.4.min.js"></script>
<script src="/views/resources/js/jquery.form.js"></script>

<script>
//클릭 옵션
$(document).ready(function() {
	$(".Carcinogen").carcinogen(); 
	$(".Care").care();
});

jQuery.fn.carcinogen = function(){
	var $obj = $(this);
	var $chk = $obj.find("input[type=radio]");
	$chk.click(function(){                
		$('input:not(:checked)').parent(".chkbox1").removeClass("on");
		$('input:checked').parent(".chkbox1").addClass("on");                    
	});
};

jQuery.fn.care = function(){
	var $obj = $(this);
	var $chk = $obj.find("input[type=radio]");
	$chk.click(function(){                
		$('input:not(:checked)').parent(".chkbox2").removeClass("on");
		$('input:checked').parent(".chkbox2").addClass("on");                    
	});
};

</script>

<style>
	/*CarcinogenYN*/
	.Carcinogen{overflow:hidden;margin-bottom:10px;*zoom:1}
	.Carcinogen:after{display:block;clear:both;content:''}
	.Carcinogen li{position:relative;float:left;margin:0 7px 0 0}
	.Carcinogen li .chkbox1{display:block;text-align:center}
	.Carcinogen li .chkbox1 input{position:absolute;z-index:-1}
	.Carcinogen li .chkbox1 label{display:block;width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6}
	.Carcinogen li .chkbox1.on label{background:#ec6a6a}
	
	/*CareYN*/
	.Care{overflow:hidden;margin-bottom:10px;*zoom:1}
	.Care:after{display:block;clear:both;content:''}
	.Care li{position:relative;float:left;margin:0 7px 0 0}
	.Care li .chkbox2{display:block;text-align:center}
	.Care li .chkbox2 input{position:absolute;z-index:-1}
	.Care li .chkbox2 label{display:block;width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6}
	.Care li .chkbox2.on label{background:#ec6a6a}
	
	.inpType{padding-left:6px;height:24px;line-height:24px;border:1px solid #dbdbdb}
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
				<form action="/ingredientRST/ingredientRegisterAction" method="post" style="background-color:#E6E7E8; height:970px">
					
					<p style="line-height:50px; border-bottom:1px solid #808284; font-size:20px; margin:0 0 10px 0;">성분 등록</p>					
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">				
						<p style="position:relative; float:left; margin:0 10px 0 0;">성분등록(국문)</p>
						<input class="inpType" style="position:relative; float:left; "type="text" name="ingredientNameKo" placeholder="내용을 입력해 주세요">					
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">							
						<p style="position:relative; float:left; margin:0 10px 0 0;">성분등록(영문)</p>
						<input class="inpType" style="position:relative; float:left;" type="text" name="ingredientNameEn" placeholder="내용을 입력해 주세요">	
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">										
						<p style="position:relative; float:left; margin:0 10px 0 0;">용도</p>
						<select class="inpType" name="ingredientUse">
							<c:forEach var="item" items="${getUseCodeList}">
								<option>${item.codeName}</option>
							</c:forEach>
							 
						</select>
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						<p style="position:relative; float:left; margin:0 10px 0 0;">위험도</p>
						<select class="inpType" name="ingredientDanger">
							<c:forEach var="item" items="${getDangerCodeList}">
								<option>${item.codeName}</option>
							</c:forEach>
						</select>
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						<p style="position:relative; float:left; margin:0 10px 0 0;">주의성분</p>
						<ul class="Care" style="position:relative; float:left; margin:0 0 0 10px;" >
							<li>
								<span class="chkbox2">
									<input type="radio" name="ingredientCareYN" value="있음" id="careYES" onclick=""/>
									<label for="careYES">있음</label>
								</span>
							</li>
							<li>
								<span class="chkbox2">
									<input type="radio" name="ingredientCareYN" value="없음" id="careNO" onclick=""/>
									<label for="careNO">없음</label>
								</span>
							</li>
						</ul>
						<!-- 일단 주석 처리
						<input class="inpType" style="position:relative; float:left;" type="text" name="ingredientCareText" placeholder="내용을 입력해 주세요">	
						 -->
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						<p style="position:relative; float:left; margin:0 10px 0 0;">발암물질</p>
						<ul class="Carcinogen" style="position:relative; float:left; margin:0 0 0 10px;" >
							<li>
								<span class="chkbox1">
									<input type="radio" name="ingredientCarcinogenYN" value="있음" id="carcinogenYES" onclick=""/>
									<label for="carcinogenYES">있음</label>
								</span>
							</li>
							<li>
								<span class="chkbox1">
									<input type="radio" name="ingredientCarcinogenYN" value="없음" id="carcinogenNO" onclick=""/>
									<label for="carcinogenNO">없음</label>
								</span>
							</li>
						</ul>
						<!-- 일단 주석 처리
						 <input class="inpType" style="position:relative; float:left;" type="text" name="ingredientCarcinogenText" placeholder="내용을 입력해 주세요"> 
						  -->	
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						<p style="position:relative; float:left; margin:0 10px 0 0;">성분 목적</p>
						<input class="inpType" style="position:relative; float:left;" type="text" name="ingredientPurpose" placeholder="내용을 입력해 주세요">	
					</div>
					
					<div style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						<p style="position:relative; float:left; margin:0 10px 0 0;">설명</p>
						<input class="inpType" style="position:relative; float:left;" type="text" name="ingredientFunction" placeholder="내용을 입력해 주세요">	
					</div>
					<div style="text-align:center; margin:10px 15px 0 0;">
						<input type="submit" value="등록" style="width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6; margin:0 10px 0 0;">
						<input type="reset" value="초기화" style="width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6;">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>