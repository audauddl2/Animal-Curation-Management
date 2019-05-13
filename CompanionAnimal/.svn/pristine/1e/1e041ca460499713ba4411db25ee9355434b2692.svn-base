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

</head>
<body>
	<div class="Content">
		<div class="InnerContent">
		<form action="/write" method="post" enctype="multipart/form-data" style="background-color:#E6E7E8; height:970px">
			<input type="hidden" name="flag" value="no"/>
			<div>
				<div>
					이미지<input type="image" name="image"><br>
				</div>
				<div>
					내용<textarea name="bbsContent" id="bbsContent" cols="72" rows="3" placeholder=" 내용을 입력하세요" maxlength="2048"></textarea>
				</div>
				
				<input type="submit" value="등록" name="notice">
			</div>
		</form>
		</div>
	</div>
</body>
</html>