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

<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			var columnTitle = $("#columnTitle").val();
			var columnContent = $("#columnContent").val();
			var writer = $("#writer").val();
			
			if(columnTitle == ""){
				alter("제목을 입력하세요");				
				document.form1.columnTitle.focus();
				return;
			}
			if(columnContent == ""){
				alter("내용을 입력하세요");
				document.form1.columnContent.focus();
				return;
			}
			if(writer == ""){
				alter("작성자를 입력하세요");
				document.form1.writer.focus();
				return;
			}
			document.form1.action="/update?flag=no";
			document.form1.submit();
			
		});
	});
	
	

</script>


</head>
<body>
<div class="Content">
		<div class="InnerContent">
			<div style="background-color:#E6E7E8; height:970px">
				<form name="form1" method="post">
					<div>
						<div>
							제목 <input type="text" name="bbsTitle" id="bbsTitle" value="${noticeUpdate.bbsTitle }" maxlength="50" style="width: 600px;">
						</div>
						<div>
							내용<textarea name="bbsContent" id="bbsContent" cols="72" rows="3" maxlength="2048">${noticeUpdate.bbsContent }</textarea>
						</div>
						<div>
							작성자 <input type="text" name="writer" id="writer" value="${noticeUpdate.writer }" maxlength="50" style="width: 600px;">
						</div>
						<input type="hidden" name="bbsIdx" value="${noticeUpdate.bbsIdx }">
						<button type="button" id="btnUpdate">수정</button>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>