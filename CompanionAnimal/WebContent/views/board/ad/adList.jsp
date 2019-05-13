<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<style type="text/css">
	.searchBox{border:none}
	.searchBox tbody th{font-size:14px;font-weight:bold;text-align:left;vertical-align:top;border:none;}
	.searchBox tbody td{border:none;}
	
	.searchDate{overflow:hidden;margin-bottom:10px;*zoom:1}
	.searchDate:after{display:block;clear:both;content:''}
	.searchDate li{position:relative;float:left;margin:0 7px 0 0}
	.searchDate li .chkbox2{display:block;text-align:center}
	.searchDate li .chkbox2 input{position:absolute;z-index:-1}
	.searchDate li .chkbox2 label{display:block;width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6}
	.searchDate li .chkbox2.on label{background:#ec6a6a}
	
	.searchRisk{overflow:hidden;margin-bottom:10px;*zoom:1}
	.searchRisk:after{display:block;clear:both;content:''}
	.searchRisk li{position:relative;float:left;margin:0 7px 0 0}
	.searchRisk li .chkbox{display:block;text-align:center}
	.searchRisk li .chkbox input{position:absolute;z-index:-1}
	.searchRisk li .chkbox label{display:block;width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6}
	.searchRisk li .chkbox.on label{background:#ec6a6a}
	
	.demi{display:inline-block;margin:0 1px;vertical-align:middle}
	.inpType{padding-left:6px;height:24px;line-height:24px;border:1px solid #dbdbdb}
		
</style>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">

<!-- JS -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script src="/views/resources/js/common/datePicker.js"></script>
<!-- 
<script>
$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.table.action="/delete";
				document.table.submit();
			}
		});
	});
</script>
 -->
</head>
<body>
<div class="InnerWrap">
	<div class="Content">
	<h1>광고 목록</h1>
			<!--  검색   -->
			<form class="InnerContent" action="/board/column/columnSearch" name="search" method="post">
				<!-- 테이블 영역 1 -->
				<div class="InnerTable1" style="text-align:center;">
				<select name="keyField" id="keyField" size="1" style="padding: 2px">
					<option value="">선택</option>
					<option value="bbsTitle">제목</option>
					<option value="writer">이름</option>
					<option value="bbsContent">내용</option>
				</select>
				
				<input type="text" name="keyWord" style="margin-left: 5px; margin-bottom: 1px"> 
				<input type="submit" value="검색"style="background: #fff; margin-left: 5px; margin-bottom: 1px; margin-right: 5px">
			</form>
			
				작성일<input type="date" name="date1" style="margin-left: 5px; margin-bottom: 5px">
				 ~ <input type="date" name="date2" style="margin-left: 5px; margin-bottom: 5px"> 
				 
				<input type="submit" value="검색" style="background: #fff; margin-left: 5px; margin-bottom: 5px; margin-right: 5px">
			</div>
			
	<!-- 테이블 영역 2 -->
	<div class="InnerTable2" style="width:100%, height:200px; overlfow:auto; text-align:center;">
		<table style="width:100%; cellspacing:0; cellpadding:0;">
			<thead style="color:#666; text-align:center;">
			<tr>
	            <th scope="col">글번호</th>
	            <th scope="col">제목</th>
	            <th scope="col">작성일</th>
	            <th scope="col">조회수</th>
	            <th scope="col"></th>
	        </tr>
	    </thead>
	    <tbody>
	    <!-- 광고 출력 -->
	        <c:choose>
	            <c:when test="${fn:length(adList) > 0}">
	                <c:forEach items="${adList}" var="adList" varStatus="rowcnt">
	                    <tr>
	                        <td>${adList.bbsIdx}</td>
	                        <td><a href="/board/ad/adDetail?bbsIdx=${adList.bbsIdx}">${adList.bbsTitle}</a></td>
	                        <td>${adList.writeDate}</td>
	                        <td>${adList.bbsCnt}</td>
	                        <td><form action="/delete?bbsIdx=${adList.bbsIdx}" method="POST">
	                        	<input type="submit" value="삭제" name="columnDelete"/></form></td>
	                    </tr>
	                </c:forEach>
	            </c:when>
	            <c:otherwise>
	                <tr>
	                    <td colspan="4">조회된 결과가 없습니다.</td>
	                </tr>
	            </c:otherwise>
	        </c:choose>
	          
	    </tbody>
	</table>
		<div><a href="/board/ad/adWrite"><input type="button" value="등록"/></a></div>
	</div>
	</div>
</div>
</body>
</html>