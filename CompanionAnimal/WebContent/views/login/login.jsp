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

</head>
<body>
	<form action="" method="post">
		<div style="width: 300px; height: 66px;">
			<div style="font-weight: bold; font-size: 25px; color: rgb(26, 188, 156); line-height: 1.2em; text-align: center;" class="" spellcheck="false">
			
				<span style="font-size: xx-large;">Admin Login</span>
				<br/>
				
				<span style="color: rgb(127, 127, 127); font-weight: 400; font-size: medium;"> 애완동물 간식 큐레이션 APP</span>
				
			</div>
		</div>
		
		<div style="width: 300px; height: 153px;">
			<!-- 아이디 -->
			<div style="width: 300px; height: 40px; margin:10px 0 0 0;">
				<input type="text" name ="userID" placeholder="아이디" style=" color: rgb(94, 94, 94); border:1px solid #ccc; border-radius:4px; background:#fff;width:100%; height:100%; padding:6px 12px; box-shadow:inset 0 1px 1px rgba(0,0,0,.075); box-sizing:border-box; resize:none; font-size:14px;">
			</div>
			<!-- 비밀번호 -->
			<div style="width: 300px; height: 40px; margin:10px 0 0 0;">
				<input type="password" name = "userPassword" placeholder="비밀번호" style=" color: rgb(94, 94, 94); border:1px solid #ccc; border-radius:4px; background:#fff;width:100%; height:100%; padding:6px 12px; box-shadow:inset 0 1px 1px rgba(0,0,0,.075); box-sizing:border-box; resize:none; font-size:14px;">
			</div>
			
			<!-- 로그인 버튼 -->
			<div style="width: 300px; height: 40px; margin:10px 0 0 0;">
				<input class="cursor"type="submit" value="Login" style="width:140px; margin:0 15.8px 0 0; font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(26, 188, 156);">
				
				<input class="cursor"type="submit" formaction="./join.jsp" value="Join" style="width:140px; font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(26, 188, 156);">
			</div>
			
		</div>
	</form>
</body>
</html>