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

<script>

</script>

<style>

</style>
</head>
<body>
	<div class="InnerWrap">		
		<!-- 내용 -->
		<div class="Content">
			<div class="InnerContent">
				<form action="" method="post" style="background-color:#E6E7E8; height:970px">
					
					<table style="width:100%; cellspacing:0; cellpadding:0;">
						
			   			<thead style="color:#666; text-align:center;">
			   				<tr>
			   					<th>리뷰 내용 확인</th>							      
					        </tr>
				        </thead>
				        <tbody style="color:#666; text-align:center;">
							<c:choose>
	                			<c:when test="${fn:length(getReviewList) > 0}" > 	        	
				        			<c:forEach items="${getReviewList}" var="getList" varStatus="status">
			        					<tr>
							        		<td>제목</td>					        		
							        		<td>${getList.reviewTitle}</td>				        	
							        	</tr>
							        	
							        	<tr>
							        		<td>작성자</td>					        		
							        		<td>${getList.writer}</td>				        	
							        	</tr>
							        	<tr>
							        		<td>작성일자</td>					        		
							        		<td>${getList.writeDate}</td>				        	
							        	</tr>
							        	<tr>
							        		<td>내용</td>					        		
							        		<td>${getList.reviewContent}</td>				        	
							        	</tr>
							        	
				        		
				        			</c:forEach>
				        		</c:when>
				        	</c:choose>					        	    
				        </tbody>
				    </table>
					
					<a href="/review/reviewUpdate?reviewIDX=${reviewIDX}">수정</a>
					<a onClick="return confirm('정말로 삭제하겠습니까?')" href="/reviwe/ReviewDeleteAction?reviewIDX=${reviewIDX}">삭제</a>							
					<a href="/comment/commentRegister?reviewIDX=${reviewIDX}">댓글등록</a>	
					
					
					<table style="width:100%; cellspacing:0; cellpadding:0;">
						
			   			<thead style="color:#666; text-align:center;">
			   				<tr>
			   					<th>댓글 내용 확인</th>							      
					        </tr>
				        </thead>
				        <tbody style="color:#666; text-align:center;">
							<c:choose>
	                			<c:when test="${fn:length(getCommentList) > 0}" > 	        	
				        			<c:forEach items="${getCommentList}" var="getList" varStatus="status">
			        					<tr>
							        		<td>제목</td>					        		
							        		<td>${getList.commentTitle}</td>				        	
							        	</tr>
							        	
							        	<tr>
							        		<td>작성자</td>					        		
							        		<td>${getList.writer}</td>				        	
							        	</tr>
							        	<tr>
							        		<td>작성일자</td>					        		
							        		<td>${getList.writeDate}</td>				        	
							        	</tr>
							        	<tr>
							        		<td>내용</td>					        		
							        		<td>${getList.commentContent}</td>				        	
							        	</tr>
				        		
				        			</c:forEach>
				        		</c:when>
				        	</c:choose>					        	    
				        </tbody>
				    </table>					
				</form>
			</div>
		</div>
	</div>

</body>
</html>