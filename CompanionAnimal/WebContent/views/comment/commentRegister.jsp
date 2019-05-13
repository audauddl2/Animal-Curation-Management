<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="./css/common.css"> 
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/nav.css"> 
<link rel="stylesheet" type="text/css" href="./css/contents.css">

<!-- JS -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 

<script src="./script/nav.js"></script>
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
				<form action="CommentRegisterAction.jsp?reviewCode=" method="post" style="background-color:#E6E7E8; height:970px">
					<table style="width:100%; cellspacing:0; cellpadding:0;">
			   			<thead style="color:#666; text-align:center;">
			   				<tr>
			   					<th>댓글 작성하기</th>							      
					        </tr>
				        </thead>
				        <tbody style="color:#666; text-align:center;">
							
				        	<tr>
				        		<td>
				        			<input type="text" name="commentTitle" style="padding-left:6px;height:24px;line-height:24px;border:1px solid #dbdbdb; position:relative; float:left; width:500px;"type="text" placeholder="댓글 제목 입력">
				        		</td>					        		
				        								        	
				        	</tr>
				        	
				        	<tr>
				        		<td>
				        			<textarea name="commentContent" style="padding-left:6px;line-height:24px;border:1px solid #dbdbdb; position:relative; float:left; width:500px; height:500px;" placeholder="댓글 내용 입력"></textarea>
				        		</td>
				        	</tr>	        	
				        
				        </tbody>
				    </table>
					
					<div style="text-align:center; margin:10px 15px 0 0;">
						<input type="submit" value="댓글등록" style="width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6; margin:0 10px 0 0;">
						<input type="reset" value="초기화" style="width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6;">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>