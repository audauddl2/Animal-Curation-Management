<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
	
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">
<script>

</script>
</head>
<body>

		<div class="InnerWrap">

			<!-- 내용 -->
			<div class="Content">
				<form class="InnerContent">
				
					<!-- 테이블 영역 1 -->
					<div class="InnerTable1" style="margin:0 0 0 0; height:90px;">
						<p style="font-size:20px;font-weight:bold;text-align:left;vertical-align:top;border:none; width:98%; margin:10px;">
							리뷰 정보
						</p>
						
						<!-- 검색영역1  -->
						<div class="serchArea" style="position:relative; float:left; width:98%; height:30px; margin:5px 10px 5px 10px;">
						
							<p style="position:relative; float:left; width:80px;font-size:14px;font-weight:bold;text-align:left;border:none; line-height:28px; margin:0 0 0 160px;">리뷰제목</p>
							<input type="text" name="word" style="padding-left:6px;height:24px;line-height:24px;border:1px solid #dbdbdb; position:relative; float:left; width:500px;"type="text" placeholder="내용을 입력해 주세요">
							<input class="cursor"type="submit" value="검색" style="width:140px; margin:0 0 0 10px; font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 24px; border-radius: 4px; background-color: rgb(26, 188, 156);">
						</div>
						<hr style="clear:both;">
						
					</div>
					
					<!-- 테이블 영역2 -->
					<div class="InnerTable2" style="height:880px;">
				   		<table style="width:100%; cellspacing:0; cellpadding:0;">
				   			<thead style="color:#666; text-align:center;">
				   				<tr>
				   					<th>번호</th>
							        <th>작성자</th>
							        <th>평점</th>
							        <th>리뷰 제목</th>
							        <th>이미지</th>
							        <th>댓글수</th>
							        <th>리뷰작성일</th>
						        </tr>
					        </thead>
					        <tbody style="color:#666; text-align:center;">
						        <c:choose>
		                			<c:when test="${fn:length(getReviewList) > 0}" > 	        	
					        			<c:forEach items="${getReviewList}" var="getList" varStatus="status">
				        					<tr>
								        		<td>${status.count}</td>					        		
								        		<td>${getList.writer}</td>
								        		<td>${getList.reviewGrade}</td>
								        		<td><a href="/review/reviewContents?reviewIDX=${getList.reviewIDX}">${getList.reviewTitle}</a></td>
								        		<td></td>							        		
								        		<td>${getList.commentCnt}</td>
								        		<td>${getList.writeDate}</td>
								        	</tr>
					        		
					        			</c:forEach>
					        		</c:when>
					        	</c:choose>					        
					        </tbody>
					    </table>
					</div>
				</form>
			</div>
		</div>

</body>
</html>