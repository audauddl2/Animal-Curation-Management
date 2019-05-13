<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">

<!-- JS -->
<script src="/views/resources/js/jquery-1.4.4.min.js"></script>
<script src="/views/resources/js/jquery.form.js"></script>


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
	
	.subTitle { font-size:17px; margin:0 0 10px 0; }
	.range { border:1px solid red; height:10px; }
</style>

</head>
<body>
<div class="InnerWrap">

	<div class="Content">
		<div class="InnerContent">
			
			<form action="/write" name="columnWrite" method="post" enctype="multipart/form-data" style="background-color:#E6E7E8; height:970px">
				<p>컬럼 등록</p><hr>
				<div>
					공지사항<input type="checkbox" name="flagCheckBox"/>	
				 	댓글 허용<input type="checkbox" value="Y" checked/> 
					공개/비공개<input type="checkbox" value="Y" checked/>
				</div>
				<div>
					<div>
						제목 <input type="text" name="bbsTitle" id="bbsTitle" placeholder=" 내용을 입력하세요" maxlength="50" style="width: 600px;">
					</div>
					<div>
						내용<textarea name="bbsContent" id="bbsContent" cols="72" rows="3" placeholder=" 내용을 입력하세요" maxlength="2048"></textarea>
					</div>
					<div>
						작성자 <input type="text" name="writer" id="writer" placeholder=" 작성자" maxlength="50" style="width: 600px;">
					</div>
					파일 : <input type="file" name="file"><br>
					<input type="submit" value="등록" name="column">
				</div>
			</form>
		</div>
	</div>
	
	</div>
</body>
</html>